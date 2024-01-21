import 'package:dio/dio.dart';
import 'package:flutter_klmpk6/api.dart';
import 'package:flutter_klmpk6/model/Home.dart';

class Service {
  static final Dio dio = Dio();

  static Future<bool> login(String email, String password) async {
    try {
      final response = await dio.post(
        '{$Api.BASEURL+$Api.LOGIN}', // Replace with your login endpoint
        data: {
          'email': email,
          'password': password,
        },
      );

      // Assuming your API returns a success status
      return response.statusCode == 200;
    } catch (e) {
      print('Error during login: $e');
      return false; // Login failed
    }
  }

  static Future<bool> register(
      String nama, String email, String alamat, String password) async {
    try {
      final response = await dio.post(
        '{$Api.BASEURL+$Api.REGISTER}', // Replace with your registration endpoint
        data: {
          'nama': nama,
          'email': email,
          'alamat': alamat,
          'password': password,
        },
      );

      // Assuming your API returns a success status
      return response.statusCode == 201;
    } catch (e) {
      print('Error during registration: $e');
      return false; // Registration failed
    }
  }

  static Future<bool> logout() async {
    try {
      final response = await dio.post(
        '{$Api.BASEURL+$Api.LOGOUT}', // Replace with your logout endpoint
      );

      // Assuming your API returns a success status
      return response.statusCode == 200;
    } catch (e) {
      print('Error during logout: $e');
      return false; // Logout failed
    }
  }

  static Future<Home?> fetchDataHome() async {
    try {
      final response = await dio.get(
        '{$Api.BASEURL+$Api.HOME}', // Replace with your API endpoint
      );

      // Assuming your API returns a JSON object
      if (response.statusCode == 200) {
        return Home.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error during data fetch: $e');
      throw Exception('Failed to load data');
    }
  }

  static Future<Artikel?> fetchDataArtikel() async {
    try {
      final response = await dio.get(
        '{$Api.BASEURL+$Api.ARTIKEL}', // Replace with your API endpoint
      );

      // Assuming your API returns a JSON object
      if (response.statusCode == 200) {
        return Artikel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error during data fetch: $e');
      throw Exception('Failed to load data');
    }
  }

  static Future<Konselor?> fetchDataKonselor() async {
    try {
      final response = await dio.get(
        '{$Api.BASEURL+$Api.KONSELOR}', // Replace with your API endpoint
      );

      // Assuming your API returns a JSON object
      if (response.statusCode == 200) {
        return Konselor.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error during data fetch: $e');
      throw Exception('Failed to load data');
    }
  }

  static Future<Konselor?> fetchDataKonselorDetail(int id) async {
    try {
      final response = await dio.get(
        '{$Api.BASEURL+$Api.KONSELOR/$id}', // Replace with your API endpoint
      );

      // Assuming your API returns a JSON object
      if (response.statusCode == 200) {
        return Konselor.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error during data fetch: $e');
      throw Exception('Failed to load data');
    }
  }
}
