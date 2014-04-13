// Type: WebMatrix.WebData.WebSecurity
// Assembly: WebMatrix.WebData, Version=2.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35
// Assembly location: C:\Users\Aaron\SkyDrive\AaronApps\GoalsCharacterSheet\src\packages\Microsoft.AspNet.WebPages.WebData.2.0.20710.0\lib\net40\WebMatrix.WebData.dll

using System;

namespace WebMatrix.WebData
{
    public static class WebSecurity
    {
        public static readonly string EnableSimpleMembershipKey;
        public static int CurrentUserId { get; }
        public static string CurrentUserName { get; }
        public static bool HasUserId { get; }
        public static bool Initialized { get; }
        public static bool IsAuthenticated { get; }
        public static bool ChangePassword(string userName, string currentPassword, string newPassword);
        public static bool ConfirmAccount(string accountConfirmationToken);
        public static bool ConfirmAccount(string userName, string accountConfirmationToken);
        public static string CreateAccount(string userName, string password, bool requireConfirmationToken = false);
        public static string CreateUserAndAccount(string userName, string password, object propertyValues = null, bool requireConfirmationToken = false);
        public static string GeneratePasswordResetToken(string userName, int tokenExpirationInMinutesFromNow = 1440);
        public static DateTime GetCreateDate(string userName);
        public static DateTime GetLastPasswordFailureDate(string userName);
        public static DateTime GetPasswordChangedDate(string userName);
        public static int GetPasswordFailuresSinceLastSuccess(string userName);
        public static int GetUserId(string userName);
        public static int GetUserIdFromPasswordResetToken(string token);
        public static void InitializeDatabaseConnection(string connectionStringName, string userTableName, string userIdColumn, string userNameColumn, bool autoCreateTables);
        public static void InitializeDatabaseConnection(string connectionString, string providerName, string userTableName, string userIdColumn, string userNameColumn, bool autoCreateTables);
        public static bool IsAccountLockedOut(string userName, int allowedPasswordAttempts, int intervalInSeconds);
        public static bool IsAccountLockedOut(string userName, int allowedPasswordAttempts, TimeSpan interval);
        public static bool IsConfirmed(string userName);
        public static bool IsCurrentUser(string userName);
        public static bool Login(string userName, string password, bool persistCookie = false);
        public static void Logout();
        public static void RequireAuthenticatedUser();
        public static void RequireRoles(params string[] roles);
        public static void RequireUser(int userId);
        public static void RequireUser(string userName);
        public static bool ResetPassword(string passwordResetToken, string newPassword);
        public static bool UserExists(string userName);
    }
}
