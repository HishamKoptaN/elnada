class ApiConstants {
  static const String customers = 'customers';
  static const String customerDailyReports = 'customer-daily-reports';
  static const String products = 'products';
  static const String productsPrice = 'products/price';
  static const String transactions = 'transactions';
  static const String transactionsDetails = 'transactions/details';
  static const String returns = 'returns';
  static const String collections = 'collections';
  static const String dailyOrders = 'orders';
  static const String priceDiscounts = 'price-discounts';
  static const String refreshToken = 'refresh-token';
  // Headers
  static const String authToken = 'auth-token';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String acceptLanguage = 'Accept-Language';
  // Timeouts
  static const int receiveTimeout = 15000; // 15 seconds
  static const int connectTimeout = 15000; // 15 seconds
  static const int sendTimeout = 10000; // 10 seconds
}

class ApiErrors {
  // Error types
  static const String badRequestError = 'badRequestError';
  static const String noContent = 'noContent';
  static const String forbiddenError = 'forbiddenError';
  static const String unauthorizedError = 'unauthorizedError';
  static const String notFoundError = 'notFoundError';
  static const String conflictError = 'conflictError';
  static const String internalServerError = 'internalServerError';
  static const String unknownError = 'unknownError';
  static const String timeoutError = 'timeoutError';
  static const String defaultError = 'defaultError';
  static const String cacheError = 'cacheError';
  static const String noInternetError = 'noInternetError';

  // Messages
  static const String loadingMessage = 'loading_message';
  static const String retryAgainMessage = 'retry_again_message';
  static const String ok = 'Ok';
}
