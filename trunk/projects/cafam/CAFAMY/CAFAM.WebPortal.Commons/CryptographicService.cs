using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;

namespace CAFAM.WebPortal.Commons
{
    public static class CryptographicService
    {
        static readonly byte[] IV = new byte[32] {12, 79, 51, 63, 1, 9, 71, 0 , 58, 39, 9 , 12,
        29, 64, 29, 67, 154, 48, 97, 255, 19, 28, 97, 168, 59, 123, 157, 16, 64, 85, 97, 17};

        static readonly string staticKey = "A21S7!ws";

        public static string Encrypt(string stringToEncrypt)
        {
            try
            {
                byte[] buffer = Encoding.ASCII.GetBytes(stringToEncrypt);

                Rijndael encoderRijndael = Rijndael.Create();
                MD5CryptoServiceProvider encoderMD5 = new MD5CryptoServiceProvider();

                encoderRijndael.Key = encoderMD5.ComputeHash(Encoding.ASCII.GetBytes(staticKey));

                encoderRijndael.BlockSize = 256;
                encoderRijndael.IV = IV;

                ICryptoTransform encoder = encoderRijndael.CreateEncryptor();

                return Convert.ToBase64String(encoder.TransformFinalBlock(buffer, 0, buffer.Length));
            }
            catch
            {
                return null;
            }
        }

        public static string Decrypt(string stringToDecypt)
        {
            try
            {
                byte[] buffer = Convert.FromBase64String(stringToDecypt);

                Rijndael decoderRijndael = Rijndael.Create();
                MD5CryptoServiceProvider encoderMD5 = new MD5CryptoServiceProvider();

                decoderRijndael.Key = encoderMD5.ComputeHash(Encoding.ASCII.GetBytes(staticKey));

                decoderRijndael.BlockSize = 256;
                decoderRijndael.IV = IV;

                ICryptoTransform decoder = decoderRijndael.CreateDecryptor();

                return Encoding.UTF8.GetString(decoder.TransformFinalBlock(buffer, 0, buffer.Length));
            }
            catch
            {
                return null;
            }
        }
    }
}
