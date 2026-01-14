import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: 'http://192.168.100.9:3000/auth', headers: {
    'content-type': 'application/json',
  }));

  String? accessToken;
  String? refreshToken;

  Future<Map<String, dynamic>?> register({
    required String phone,
    required String firstName,
    required String lastName,
    required String email,
  }) async {
    try {
      final response = await _dio.post(
        '/register',
        data: {
          'phone': phone,
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
        },
      );

      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      throw Exception(
          'Failed to register user: ${e.response?.data['message']}');
    }
  }

  Future<Map<String, dynamic>?> requestOtp({required String phone}) async {
    final response = await _dio.post('/request-otp', data: {'phone': phone});
    
    return response.data;
  }

  Future<Map<String, dynamic>?> verifyOtp({
    required String phone,
    required String otp,
  }) async {
    try {
      final response = await _dio.post('/verify-otp', data: {
        'phone': phone,
        'otp': otp,
      });

      accessToken = response.data['accessToken'] as String?;
      refreshToken = response.data['refreshToken'] as String?;

      if (accessToken != null) {
        _dio.options.headers['Authorisation'] = 'Bearer $accessToken';
      }

      return response.data;
    } on DioException catch (e) {
      throw Exception('Failed to verify OTP: ${e.response?.data['message']}');
    }
  }

  Future<Map<String, dynamic>?> getUserProfile() async {
    try {
      final response = await _dio.get('/profile');

      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      throw Exception(
          'Failed to get user profile: ${e.response?.data['message']}');
    }
  }

  bool get isAuthenticated => accessToken != null;

  void logout() {
    accessToken = null;
    refreshToken = null;
    _dio.options.headers.remove('Authorisation');
  }
}
