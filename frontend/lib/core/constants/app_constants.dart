class AppConstants {
  // App Information
  static const String appName = 'Nokai Finance';
  static const String appVersion = '1.0.0';
  
  // API Endpoints
  static const String baseUrl = 'https://api.nokaifinance.com/v1';
  
  // API Timeout
  static const int connectTimeout = 30000; // 30 seconds
  static const int receiveTimeout = 30000; // 30 seconds
  
  // Local Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String userDataKey = 'user_data';
  static const String themeModeKey = 'theme_mode';
  
  // Pagination
  static const int defaultPageSize = 10;
  
  // Animation Durations
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration splashAnimationDuration = Duration(seconds: 2);
  
  // Form Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 32;
  
  // Currency
  static const String defaultCurrency = 'USD';
  static const String currencySymbol = '\$';
  
  // Date & Time Formats
  static const String dateFormat = 'MMM dd, yyyy';
  static const String timeFormat = 'h:mm a';
  static const String dateTimeFormat = 'MMM dd, yyyy h:mm a';
  
  // Secure Storage Keys
  static const String secureStorageKey = 'nokai_secure_storage';
  
  // API Response Status Codes
  static const int successCode = 200;
  static const int createdCode = 201;
  static const int badRequestCode = 400;
  static const int unauthorizedCode = 401;
  static const int forbiddenCode = 403;
  static const int notFoundCode = 404;
  static const int serverErrorCode = 500;
  
  // Shared Preferences Keys
  static const String onboardingCompletedKey = 'onboarding_completed';
  static const String biometricAuthEnabledKey = 'biometric_auth_enabled';
  
  // App Settings
  static const bool isDebug = true; // Change to false for production
}
