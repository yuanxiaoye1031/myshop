package cn.edu.hit.util;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

public class AESUtils {
    // relevant algorithm string
//    private static final String ALGORITHM_STR = "AES/ECB/PKCS5Padding";
//    /**
//     * generate a random AES key
//     * @param size byte number of the key, a multiple of 32, e.g. size % 16 == 0
//     * @return a string of the key
//     */
//    public static String AESGenerateKey(int size) {
//        // If size is not a multiple of 16, the default value is 32.
//        if(size % 16 != 0){
//            size = 32;
//        }
//        byte[] bytes = new byte[size];
//        for(int i = 0; i < bytes.length; i++){
//            bytes[i] = (byte)(new Random().nextInt(96)+32);
//        }
//        return new String(bytes);
//    }
//
//    /**
//     * AES encrypt using key to encrypt plainText
//     * @param AESKey AES key, represented by a string
//     * @param plainText plain text
//     * @return cipher text
//     */
//    public static String AESEncrypt(String AESKey, String plainText){
//        KeyGenerator kgen = null;
//        try {
//            kgen = KeyGenerator.getInstance("AES");
//            kgen.init(128);
//            Cipher cipher = Cipher.getInstance(ALGORITHM_STR);
//            cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(AESKey.getBytes(), "AES"));
//            byte[] cipherBytes = cipher.doFinal(plainText.getBytes("utf-8"));
//            return base64Encode(cipherBytes);
//        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | UnsupportedEncodingException | IllegalBlockSizeException | BadPaddingException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
//
//    /**
//     * AES decrypt using key to decrypt cipherText
//     * @param AESKey AES key, represented by a string
//     * @param cipherText cipher text
//     * @return plain text
//     */
//    public static String AESDecrypt(String AESKey, String cipherText){
//        try {
//            return aesDecryptByBytes(base64Decode(cipherText), AESKey);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
//
//    private static String base64Encode(byte[] bytes){
//        Base64.Encoder encoder = Base64.getEncoder();
//        return encoder.encodeToString(bytes);
//    }
//
//    private static byte[] base64Decode(String base64Code) throws Exception{
//        Base64.Decoder decoder = Base64.getMimeDecoder();
//        return decoder.decode(base64Code);
//    }
//
//
//    private static String aesDecryptByBytes(byte[] encryptBytes, String decryptKey) throws Exception {
//        KeyGenerator kgen = KeyGenerator.getInstance("AES");
//        kgen.init(128);
//
//        Cipher cipher = Cipher.getInstance(ALGORITHM_STR);
//        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(decryptKey.getBytes(), "AES"));
//        byte[] decryptBytes = cipher.doFinal(encryptBytes);
//        return new String(decryptBytes);
//    }

//    public static void main(String[] args) {
//        String key = AESUtils.AESGenerateKey(32);
////        key = "^K#ojb^1Xfm\"4K6mgdU#3wp#INpS2U=i";
//        String plainText = "Aloha, world!";
//        String cipherText = AESUtils.AESEncrypt(key, plainText);
//        String decryptText  = AESUtils.AESDecrypt(key, cipherText);
//        System.out.println(key);
//        System.out.println(plainText);
//        System.out.println(cipherText);
//        System.out.println(decryptText);
//    }

//    public static byte[] encryptCBC(byte[] data, byte[] key, byte[] iv) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException, InvalidAlgorithmParameterException {
//        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
//        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"), new IvParameterSpec(iv));
//        byte[] result = cipher.doFinal(data);
//        return result;
//    }
//
//    public static byte[] decryptCBC(byte[] data, byte[] key, byte[] iv) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException {
//        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
//        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key, "AES"), new IvParameterSpec(iv));
//        byte[] result = cipher.doFinal(data);
//        return result;
//    }
//
//    public static void main(String[] args) throws IllegalBlockSizeException, InvalidKeyException, BadPaddingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException {
////        String data = "6ZUkxsopocexB7/OYQWGDQ=="; // 待加密的原文
////        String key = "Qg68XEUmKN+QB4uY34lIk3dRZn7ed1eNaMy8gAwjQco="; // key 长度只能是 16、24 或 32 字节
////        String iv = "TU/JGM6g7qkU/HOrFgEk7g=="; // CBC 模式需要用到初始向量参数
//
////        byte[] ciphertext = encryptCBC(data.getBytes(), key.getBytes(), iv.getBytes());
////        System.out.println("CBC 模式加密结果（Base64）：" + Base64.getEncoder().encodeToString(ciphertext));
//
////        byte[] plaintext = decryptCBC(data.getBytes(), key.getBytes(), iv.getBytes());
////        System.out.println("解密结果：" + new String(plaintext));
//        JSONObject obj=new JSONObject();
//        obj.put("iv","TU/JGM6g7qkU/HOrFgEk7g==");
//        obj.put("ciphertext","6ZUkxsopocexB7/OYQWGDQ==");
//        obj.put("key", "Qg68XEUmKN+QB4uY34lIk3dRZn7ed1eNaMy8gAwjQco=");
//        System.out.println(obj);
//        String enc_iv=obj.getString("iv");
//        String enc_c=obj.getString("ciphertext");
//        String enc_k=obj.getString("key");
//        Base64.Encoder  encoder=Base64.getEncoder();
//        Base64.Decoder decoder=Base64.getDecoder();
//        String iv= Arrays.toString(decoder.decode(enc_iv));
//        String ciphertext= Arrays.toString(decoder.decode(enc_c));
//        String key =Arrays.toString(decoder.decode(enc_k));
//
//        String res= Arrays.toString(decryptCBC(ciphertext.getBytes(), key.getBytes(), iv.getBytes()));
//        System.out.println(res);
//    }

    /**
     * 加密用的Key 可以用26个字母和数字组成
     * 此处使用AES-128-CBC加密模式，key需要为16位。
     */
    private static String sKey = "lingyejunAesTest";
    private static String ivParameter = "1234567890123456";

    // 加密
    public static String encrypt(String sSrc) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        byte[] raw = sKey.getBytes();
        SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");
        IvParameterSpec iv = new IvParameterSpec(ivParameter.getBytes());//使用CBC模式，需要一个向量iv，可增加加密算法的强度
        cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
        byte[] encrypted = cipher.doFinal(sSrc.getBytes("utf-8"));
        Base64.Encoder encoder=Base64.getEncoder();
        return new String(encoder.encode(encrypted));
//        return new BASE64Encoder().encode(encrypted);//此处使用BASE64做转码。
    }

    // 解密
    public static String decrypt(String sSrc) {
        try {
            byte[] raw = sKey.getBytes("ASCII");
            SecretKeySpec skeySpec = new SecretKeySpec(raw, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            IvParameterSpec iv = new IvParameterSpec(ivParameter.getBytes());
            cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
            Base64.Decoder decoder=Base64.getDecoder();
            byte[] encrypted1=decoder.decode(sSrc);
//            byte[] encrypted1 = new BASE64Decoder().decodeBuffer(sSrc);//先用base64解密
            byte[] original = cipher.doFinal(encrypted1);
            String originalString = new String(original, "utf-8");
            return originalString;
        } catch (Exception ex) {
            return null;
        }
    }

    public static void main(String[] args) throws Exception {
        String email = "lingyejun@java.aes";
        try {
            String sec = encrypt(email);
            System.out.println(sec);
            System.out.println(decrypt("CcOtM9WXv0N+Owh/xxedZJnuNUaTU7y3aUBESQLUvVM="));
            System.out.println(decrypt("Zf8jOLintskugw//UOYovw=="));

        } catch (Exception e) {
            e.printStackTrace();
        }
        String str=encrypt("yuanxiaoye");
        System.out.println(str);
        System.out.println(decrypt(str));
    }

}
