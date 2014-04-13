using System;
using System.Web.Mvc;

namespace GoalsCharacterSheet.Web.Runtime
{
    public static class ControllerExtensions
    {
        public static string GetString(this FormCollection collection, string key)
        {
            if (!collection.HasKeys()) return string.Empty;
            return collection.Get(key).Trim();
        }

        public static int GetInt(this FormCollection collection, string key)
        {

            if (collection == null || !collection.HasKeys()) return 0;
            try
            {
                string value = collection.Get(key).Trim();
                int valueInt;
                int.TryParse(value, out valueInt);
                return valueInt;
            }
            catch (ArgumentNullException)
            {
                return 0;
            }
        }

        public static DateTime GetDate(this FormCollection collection, string key)
        {
            return (DateTime)collection.GetValue(key).ConvertTo(typeof(DateTime));
        }

    }
}