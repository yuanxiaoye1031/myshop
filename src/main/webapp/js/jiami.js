// //使用前先引入依赖
// import CryptoJS from "crypto-js";
//
// //DES加密
// function encryptByDES(message, key){
//     var keyHex = CryptoJS.enc.Utf8.parse(key);
//     var encrypted = CryptoJS.DES.encrypt(message, keyHex, {
//         mode: CryptoJS.mode.ECB,
//         padding: CryptoJS.pad.Pkcs7
//     });
//     return encrypted.ciphertext.toString();
// }
//
// //DES解密
// function decryptByDES(ciphertext, key){
//     var keyHex = CryptoJS.enc.Utf8.parse(key);
//     var decrypted = CryptoJS.DES.decrypt({
//         ciphertext: CryptoJS.enc.Hex.parse(ciphertext)
//     }, keyHex, {
//         mode: CryptoJS.mode.ECB,
//         padding: CryptoJS.pad.Pkcs7
//     });
//     var result_value = decrypted.toString(CryptoJS.enc.Utf8);
//     return result_value;
// }
//
