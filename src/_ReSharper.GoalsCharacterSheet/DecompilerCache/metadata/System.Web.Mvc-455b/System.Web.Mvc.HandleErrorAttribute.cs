// Type: System.Web.Mvc.HandleErrorAttribute
// Assembly: System.Web.Mvc, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
// Assembly location: C:\Users\Aaron\SkyDrive\AaronApps\GoalsCharacterSheet\src\packages\Microsoft.AspNet.Mvc.4.0.20710.0\lib\net40\System.Web.Mvc.dll

using System;

namespace System.Web.Mvc
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = true, Inherited = true)]
    public class HandleErrorAttribute : FilterAttribute, IExceptionFilter
    {
        public override object TypeId { get; }
        public Type ExceptionType { get; set; }
        public string Master { get; set; }
        public string View { get; set; }
        public virtual void OnException(ExceptionContext filterContext);
    }
}
