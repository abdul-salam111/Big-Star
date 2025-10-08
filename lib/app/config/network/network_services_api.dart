import 'dart:convert';
import 'dart:io';
import 'package:auction_app/app/config/exceptions/app_exceptions.dart';
import 'package:auction_app/app/config/network/base_api_services.dart';
import 'package:auction_app/app/config/storage/sharedpref_keys.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic apiResponse;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${box.read(usertoken)}'
        },
      ).timeout(const Duration(seconds: 10));

      apiResponse = handleError(response);
    } on SocketException {
      throw NoInternetException('No internet connection.');
    } on RequestTimeoutException {
      throw RequestTimeoutException('Request timed out.');
    }
    return apiResponse;
  }

  @override
  Future postApi(String url, data) async {
    dynamic apiResponse;

    try {
      final response = await http
          .post(
            Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${box.read(usertoken)}'
            },
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 10));

      apiResponse = handleError(response);
    } on SocketException {
      throw NoInternetException('No internet connection.');
    } on RequestTimeoutException {
      throw RequestTimeoutException('Request timed out.');
    }
    return apiResponse;
  }

  @override
  Future updateApi(String url, data) async {
    dynamic apiResponse;
    try {
      final response = await http
          .put(
            Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${box.read(usertoken)}'
            },
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 10));

      apiResponse = handleError(response);
    } on SocketException {
      throw NoInternetException('No internet connection.');
    } on RequestTimeoutException {
      throw RequestTimeoutException('Request timed out.');
    }
    return apiResponse;
  }

  @override
  Future deleteApi(String url, data) async {
    dynamic apiResponse;
    try {
      final response = await http
          .delete(
            Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer ${box.read(usertoken)}'
            },
            body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 10));
      apiResponse = handleError(response);
    } on SocketException {
      throw NoInternetException('No internet connection.');
    } on RequestTimeoutException {
      throw RequestTimeoutException('Request timed out.');
    }
    return apiResponse;
  }

  dynamic handleError(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw BadRequestException('Username or Password is incorrect');
      case 401:
        throw UnauthorizedException('Unauthorized access.');
      case 403:
        throw ForbiddenException('Access forbidden.');
      case 404:
        throw NotFoundException('Not found.');
      case 429:
        throw TooManyRequestsException('Too many requests.');
      case 500:
        throw InternalServerErrorException('Internal server error.');
      case 503:
        throw ServiceUnavailableException('Service unavailable.');
      case 409:
        throw UnauthorizedException('Session Expired, login again');
      default:
        throw FetchDataException(
            'Failed to fetch data. Status code: ${response.statusCode}');
    }
  }
}
