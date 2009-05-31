using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.Caching;
namespace CAFAM.WebPortal.WebUI
{
    /// <summary>
    /// Handles storing and retrieving the Captcha ID and Text in a Cache.
    /// </summary>
    internal static class CaptchaUtility
    {
        internal static void GenerateRandomText(int length, out Guid id, out string text)
        {
            id = Guid.NewGuid();
            text = String.Empty;

            RandomNumbers rand = new RandomNumbers();

            for (int i = 0; i < length; i++)
            {
                text = String.Concat(text, rand.Next(10).ToString());
            }
        }

        /// <summary>Gets the challenge text for a particular ID.</summary>
        /// <param name="challengeId">The ID of the challenge text to retrieve.</param>
        /// <returns>The text associated with the specified ID; null if no text exists.</returns>
        internal static string GetChallengeText(Guid challengeId)
        {
            HttpContext ctx = HttpContext.Current;
            return (string)ctx.Cache[challengeId.ToString()];
        }

        /// <summary>Sets the challenge text for a particular ID.</summary>
        /// <param name="challengeId">The ID of the challenge with which this text should be associated.</param>
        /// <param name="text">The text to store along with the challenge ID.</param>
        /// <param name="expiration">The expiration date fo the challenge.</param>
        internal static void SetChallengeText(Guid challengeId, string text, DateTime expiration)
        {
            HttpContext ctx = HttpContext.Current;
            if (text == null)
            {
                ctx.Cache.Remove(challengeId.ToString());
            }
            else
            {
                ctx.Cache.Insert(challengeId.ToString(), text, null, expiration, Cache.NoSlidingExpiration, CacheItemPriority.NotRemovable, null);
            }
        }
    }
}
