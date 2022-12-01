package cn.edu.hit.util;

import org.apache.commons.codec.binary.Base64;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DLSequence;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.io.pem.PemObject;
import org.bouncycastle.util.io.pem.PemReader;
import org.bouncycastle.util.io.pem.PemWriter;

import javax.crypto.Cipher;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.*;
import java.util.Enumeration;

public class RSAUtil {

    static {
        Security.addProvider(new BouncyCastleProvider());
    }

    /**
     * 随机生成密钥对
     *
     * @param usePKCS8
     *            是否采用PKCS8填充模式
     */
    public static Object[] generateRsaKey(boolean usePKCS8) throws Exception {
        KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA", BouncyCastleProvider.PROVIDER_NAME);
        // 初始化
        keyPairGen.initialize(1024, new SecureRandom());
        // 生成一个密钥对，保存在keyPair中
        KeyPair keyPair = keyPairGen.generateKeyPair();
        RSAPrivateKey privateKey = (RSAPrivateKey) keyPair.getPrivate(); // 得到私钥
        RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic(); // 得到公钥

        // 这两个公私钥是PKCS8格式的
        byte[] publicKeyBytes = publicKey.getEncoded();
        byte[] privateKeyBytes = privateKey.getEncoded();

        if (!usePKCS8) {
            // 将PSCK8格式公私钥转换为PKCS1格式
            publicKeyBytes = pkcs8ToPkcs1(false, publicKeyBytes);
            privateKeyBytes = pkcs8ToPkcs1(true, privateKeyBytes);
        }

        return new Object[] { publicKeyBytes, privateKeyBytes };
    }

    /**
     * 从Pem文件读取密钥对
     *
     * @param pemFileName
     *            pem文件
     */
    public static byte[] readFromPem(String pemFileName) throws Exception {
        PemReader pemReader = new PemReader(new FileReader(pemFileName));
        PemObject pemObject = pemReader.readPemObject();
        byte[] publicKey = pemObject.getContent();
        pemReader.close();
        return publicKey;
    }

    /**
     * 从Pem文件读取密钥
     *
     * @param isPrivateKey
     *            是否是私钥
     * @param buffer
     *            字节
     * @param pemFileName
     *            pem文件
     */
    public static void writeToPem(byte[] buffer, boolean isPrivateKey, String pemFileName) throws Exception {

        PemObject pemObject = new PemObject(isPrivateKey ? "RSA PRIVATE KEY" : "RSA PUBLIC KEY", buffer);
        FileWriter fileWriter = new FileWriter(pemFileName);
        PemWriter pemWriter = new PemWriter(fileWriter);
        pemWriter.writeObject(pemObject);
        pemWriter.close();
    }

    /**
     * 从crt文件读取公钥(pkcs8)
     *
     * @param crtFileName
     *            crt文件
     * @return 公钥
     */
    public static byte[] readPublicKeyFromCrt(String crtFileName) throws Exception {
        CertificateFactory cf = CertificateFactory.getInstance("X.509");
        X509Certificate cert = (X509Certificate) cf.generateCertificate(new FileInputStream(crtFileName));

        PublicKey publicKey = cert.getPublicKey();
        return publicKey.getEncoded();
    }

    /**
     * 从pfx文件读取秘钥对(pkcs8)
     *
     * @param pfxFileName
     *            pfx文件
     * @return 秘钥对
     */
    public static Object[] readFromPfx(String pfxFileName, String password) throws Exception {
        KeyStore keystore = KeyStore.getInstance("PKCS12");
        char[] passwordChars = null;
        if (password == null || password.equals("")) {
            passwordChars = null;
        } else {
            passwordChars = password.toCharArray();
        }
        keystore.load(new FileInputStream(pfxFileName), passwordChars);
        Enumeration<String> enums = keystore.aliases();

        PrivateKey privateKey = null;
        Certificate certificate = null;
        while (enums.hasMoreElements()) {
            String alias = enums.nextElement();
            System.out.println(alias);
            if (keystore.isKeyEntry(alias)) {
                privateKey = (PrivateKey) keystore.getKey(alias, passwordChars);
                certificate = keystore.getCertificate(alias);
            }
            if (privateKey != null && certificate != null)
                break;
        }
        if (privateKey == null || certificate == null) {
            throw new Exception("fail to read key from pfx");
        }

        PublicKey publicKey = certificate.getPublicKey();
        return new Object[] { publicKey.getEncoded(), privateKey.getEncoded() };
    }

    /**
     * Pkcs8转Pkcs1
     *
     * @param isPrivateKey
     *            是否是私钥转换
     * @param buffer
     *            Pkcs1秘钥
     * @return Pkcs8秘钥
     * @throws Exception
     *             加密过程中的异常信息
     */
    public static byte[] pkcs8ToPkcs1(boolean isPrivateKey, byte[] buffer) throws Exception {
        if (isPrivateKey) {
            PrivateKeyInfo privateKeyInfo = PrivateKeyInfo.getInstance(buffer);
            return privateKeyInfo.parsePrivateKey().toASN1Primitive().getEncoded();
        } else {
            SubjectPublicKeyInfo subjectPublicKeyInfo = SubjectPublicKeyInfo.getInstance(buffer);
            return subjectPublicKeyInfo.parsePublicKey().toASN1Primitive().getEncoded();
        }
    }

    /**
     * Pkcs1转Pkcs8
     *
     * @param isPrivateKey
     *            是否是私钥转换
     * @param buffer
     *            Pkcs1秘钥
     * @return Pkcs8秘钥
     * @throws Exception
     *             加密过程中的异常信息
     */
    public static byte[] pkcs1ToPkcs8(boolean isPrivateKey, byte[] buffer) throws Exception {
        AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(PKCSObjectIdentifiers.rsaEncryption);
        ASN1Primitive asn1Primitive = ASN1Primitive.fromByteArray(buffer);
        if (isPrivateKey) {
            PrivateKeyInfo privateKeyInfo = new PrivateKeyInfo(algorithmIdentifier, asn1Primitive);
            return privateKeyInfo.getEncoded();
        } else {
            SubjectPublicKeyInfo subjectPublicKeyInfo = new SubjectPublicKeyInfo(algorithmIdentifier, asn1Primitive);
            return subjectPublicKeyInfo.getEncoded();
        }
    }

    /**
     * RSA公钥
     *
     * @param usePKCS8
     *            是否采用PKCS8填充模式
     * @param publicKey
     *            公钥
     * @return 公钥
     * @throws Exception
     *             加密过程中的异常信息
     */
    public static RSAPublicKey generatePublicKey(boolean usePKCS8, byte[] publicKey) throws Exception {
        KeySpec keySpec;
        if (usePKCS8) {
            // PKCS8填充
            keySpec = new X509EncodedKeySpec(publicKey);
        } else {
            // PKCS1填充
            DLSequence sequence = (DLSequence) ASN1Primitive.fromByteArray(publicKey);
            BigInteger v1 = ((ASN1Integer) sequence.getObjectAt(0)).getValue();
            BigInteger v2 = ((ASN1Integer) sequence.getObjectAt(1)).getValue();
            keySpec = new RSAPublicKeySpec(v1, v2);
        }

        RSAPublicKey pubKey = (RSAPublicKey) KeyFactory.getInstance("RSA", BouncyCastleProvider.PROVIDER_NAME).generatePublic(keySpec);
        return pubKey;
    }

    /**
     * RSA私钥
     *
     * @param usePKCS8
     *            是否采用PKCS8填充模式
     * @param privateKey
     *            私钥
     * @return 私钥
     * @throws Exception
     *             解密过程中的异常信息
     */
    public static RSAPrivateKey generatePrivateKey(boolean usePKCS8, byte[] privateKey) throws Exception {
        KeySpec keySpec;
        if (usePKCS8) {
            // PKCS8填充
            keySpec = new PKCS8EncodedKeySpec(privateKey);
        } else {
            // PKCS1填充
            DLSequence sequence = (DLSequence) ASN1Primitive.fromByteArray(privateKey);
            // BigInteger v1= ((ASN1Integer)sequence.getObjectAt(0)).getValue();
            BigInteger v2 = ((ASN1Integer) sequence.getObjectAt(1)).getValue();
            BigInteger v3 = ((ASN1Integer) sequence.getObjectAt(2)).getValue();
            BigInteger v4 = ((ASN1Integer) sequence.getObjectAt(3)).getValue();
            BigInteger v5 = ((ASN1Integer) sequence.getObjectAt(4)).getValue();
            BigInteger v6 = ((ASN1Integer) sequence.getObjectAt(5)).getValue();
            BigInteger v7 = ((ASN1Integer) sequence.getObjectAt(6)).getValue();
            BigInteger v8 = ((ASN1Integer) sequence.getObjectAt(7)).getValue();
            BigInteger v9 = ((ASN1Integer) sequence.getObjectAt(8)).getValue();
            keySpec = new RSAPrivateCrtKeySpec(v2, v3, v4, v5, v6, v7, v8, v9);
        }

        RSAPrivateKey priKey = (RSAPrivateKey) KeyFactory.getInstance("RSA", BouncyCastleProvider.PROVIDER_NAME).generatePrivate(keySpec);
        return priKey;
    }

    /**
     * RSA公钥加密
     *
     * @param value
     *            加密字符串
     * @param publicKey
     *            公钥
     * @return 密文
     * @throws Exception
     *             加密过程中的异常信息
     */
    public static String rsaEncrypt(String value, RSAPublicKey publicKey) throws Exception {
        if (value == null || value.length() == 0)
            return "";

        // RSA加密
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.ENCRYPT_MODE, publicKey);
        byte[] buffer = cipher.doFinal(value.getBytes("utf-8"));

        // 使用hex格式输出公钥
        StringBuffer result = new StringBuffer();
        for (int i = 0; i < buffer.length; i++) {
            result.append(String.format("%02x", buffer[i]));
        }
        return result.toString();
    }

    /**
     * RSA私钥解密
     *
     * @param value
     *            加密字符串
     * @param privateKey
     *            私钥
     * @return 明文
     * @throws Exception
     *             解密过程中的异常信息
     */
    public static String rsaDecrypt(String value, RSAPrivateKey privateKey) throws Exception {
        if (value == null || value.length() == 0)
            return "";

        byte[] buffer = new byte[value.length() / 2];
        for (int i = 0; i < buffer.length; i++) {
            buffer[i] = (byte) Integer.parseInt(value.substring(i * 2, i * 2 + 2), 16);
        }

        // RSA解密
        Cipher cipher = Cipher.getInstance("RSA");
        cipher.init(Cipher.DECRYPT_MODE, privateKey);
        buffer = cipher.doFinal(buffer);
        return new String(buffer, "utf-8");
    }

    /**
     * RSA签名
     *
     * @param value
     *            加密字符串
     * @param privateKey
     *            私钥
     * @param halg
     *            加密算法，如MD5, SHA1, SHA256, SHA384, SHA512等
     * @return 签名
     * @throws Exception
     *             签名过程中的异常信息
     */
    public static String sign(String value, RSAPrivateKey privateKey, String halg) throws Exception {

        Signature s = Signature.getInstance(halg.toUpperCase().endsWith("WithRSA") ? halg : (halg + "WithRSA"));

        s.initSign(privateKey);
        s.update(value.getBytes("utf-8"));

        byte[] buffer = s.sign();

        // 使用hex格式输出公钥
        StringBuffer result = new StringBuffer();
        for (int i = 0; i < buffer.length; i++) {
            result.append(String.format("%02x", buffer[i]));
        }
        return result.toString();
    }

    /**
     * RSA签名验证
     *
     * @param value
     *            加密字符串
     * @param publicKey
     *            公钥
     * @param halg
     *            加密算法，如MD5, SHA1, SHA256, SHA384, SHA512等
     * @return 签名合法则返回true，否则返回false
     * @throws Exception
     *             验证过程中的异常信息
     */
    public static boolean verify(String value, RSAPublicKey publicKey, String signature, String halg) throws Exception {
        Signature s = Signature.getInstance(halg.toUpperCase().endsWith("WithRSA") ? halg : (halg + "WithRSA"));
        s.initVerify(publicKey);
        s.update(value.getBytes("utf-8"));

        byte[] buffer = new byte[signature.length() / 2];
        for (int i = 0; i < buffer.length; i++) {
            buffer[i] = (byte) Integer.parseInt(signature.substring(i * 2, i * 2 + 2), 16);
        }

        return s.verify(buffer);
    }

    public static RSAPublicKey readPublicKey(File file) throws Exception {
        String key = new String(Files.readAllBytes(file.toPath()), Charset.defaultCharset());

        String publicKeyPEM = key
                .replace("-----BEGIN PUBLIC KEY-----", "")
                .replaceAll(System.lineSeparator(), "")
                .replace("-----END PUBLIC KEY-----", "");

        byte[] encoded = Base64.decodeBase64(publicKeyPEM);

        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(encoded);
        return (RSAPublicKey) keyFactory.generatePublic(keySpec);
    }

    public static void main(String[] args) {
        try {
            String text = "小野小野小小野";
            boolean usePKCS8 = true; // usePKCS8=true表示是否成PKCS8格式的公私秘钥,否则乘车PKCS1格式的公私秘钥
            String filePath = RSAUtil.class.getClassLoader().getResource("").toURI().getPath();
            System.out.printf("文件路径：%s\n", filePath);// 存放pem,crt,pfx等文件的目录
            byte[] publicKey, privateKey;// 公钥和私钥

            // 生成公私钥
            Object[] rsaKey = RSAUtil.generateRsaKey(usePKCS8); // usePKCS8=true表示是否成PKCS8格式的公私秘钥,否则乘车PKCS1格式的公私秘钥
            publicKey = (byte[]) rsaKey[0];
            privateKey = (byte[]) rsaKey[1];
            // 从Pem文件读取公私钥，filePath是文件目录
            // publicKey = RsaUtil.readFromPem(filePath + "rsa.pub");
            // privateKey = RsaUtil.readFromPem(filePath + "rsa.pem");
            // 从pfx文件读取公私钥，filePath是文件目录
            // Object[] rsaKey = RsaUtil.readFromPfx(filePath + "demo.pfx",
            // "123456");
            // publicKey = (byte[]) rsaKey[0];
            // privateKey = (byte[]) rsaKey[1];
            // 从crt文件读取公钥（crt文件中不包含私钥），filePath是文件目录
            // publicKey = RsaUtil.readPublicKeyFromCrt(filePath + "demo.crt");
            // privateKey = RsaUtil.readFromPem(filePath + "demo.key");

            // 保存到pem文件，filePath是保存目录
            RSAUtil.writeToPem(publicKey, false, filePath + "rsa.pub");
            RSAUtil.writeToPem(privateKey, true, filePath + "rsa.pem");

            // Pkcs8格式公钥转换为Pkcs1格式公钥
            publicKey = RSAUtil.pkcs8ToPkcs1(false, publicKey);
            // Pkcs8格式私钥转换为Pkcs1格式私钥
            privateKey = RSAUtil.pkcs8ToPkcs1(true, privateKey);
            // Pkcs1格式公钥转换为Pkcs8格式公钥
            publicKey = RSAUtil.pkcs1ToPkcs8(false, publicKey);
            // Pkcs1格式私钥转换为Pkcs8格式私钥
            privateKey = RSAUtil.pkcs1ToPkcs8(true, privateKey);

            RSAPublicKey rsaPublicKey = RSAUtil.generatePublicKey(usePKCS8, publicKey);
            RSAPrivateKey rsaPrivateKey = RSAUtil.generatePrivateKey(usePKCS8, privateKey);

            String encryptText = RSAUtil.rsaEncrypt(text, rsaPublicKey);
            System.out.printf("【%s】经过【RSA】加密后：%s\n", text, encryptText);

            String decryptText = RSAUtil.rsaDecrypt(encryptText, rsaPrivateKey);
            System.out.printf("【%s】经过【RSA】解密后：%s\n", encryptText, decryptText);

            String signature = RSAUtil.sign(text, rsaPrivateKey, "MD5");
            System.out.printf("【%s】经过【RSA】签名后：%s\n", text, signature);

            boolean result = RSAUtil.verify(text, rsaPublicKey, signature, "MD5");
            System.out.printf("【%s】的签名【%s】经过【RSA】验证后结果是：" + result, text, signature);

            String pemPath=filePath+"adminpublic.pem";
            System.out.println("pemPath是"+pemPath);
            byte[] key=readFromPem(pemPath);
            byte[] res=Base64.decodeBase64(key);
            System.out.println(res);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}