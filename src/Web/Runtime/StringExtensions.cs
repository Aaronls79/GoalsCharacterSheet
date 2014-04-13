using System;
using System.Text;

namespace GoalsCharacterSheet.Web.Runtime
{
    public static class StringExtensions
    {
        public static string Or(this string text,string value)
        {
            if (string.IsNullOrWhiteSpace(text))
                return value;
            return text;
        }

        public static string ToSpaceString(this object obj)
        {
            return ToSpacedString(obj, null);
        }
        /// <summary>
        /// Adds Spaces between capitals.
        /// </summary>
        public static string ToSpacedString(this object obj, params string[] acronyms)
        {
            if (obj == null)
                throw new ArgumentNullException("obj");
            var text = new StringBuilder(obj.ToString());

            if (text.Length <= 0)
                return text.ToString();

            var prevChar = text[0];
            for (var i = 1; i < text.Length; i++)
            {
                var currentChar = text[i];
                if (!char.IsUpper(prevChar) && !char.IsWhiteSpace(prevChar))
                {
                    if (char.IsUpper(currentChar))
                        text.Insert(i, " ");
                }
                prevChar = currentChar;
            }
            if (acronyms != null)
            {
                foreach (string acronym in acronyms)
                    text.Replace(acronym, acronym + " ");
            }

            return text.ToString().Trim();
        }
    }
}