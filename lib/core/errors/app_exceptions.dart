import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../app_theme/colors.dart';
import '../widgets/app_route.dart';

Future<T> throwAppException<T>(FutureOr<T> Function() call) async {
  try {
    return (await call());
  } on DioException catch (e) {
    showMessage(e.response?.data ?? '');
    rethrow;
  } on SocketException catch (e) {
    showMessage("No internet connection ");
    rethrow;
  } catch (e) {
    showMessage("Something is happening ");
    rethrow;
  }
}

void showMessage(String? message, {bool isSuccess = false}) {
  ScaffoldMessenger.of(router.routerDelegate.navigatorKey.currentContext!)
      .showSnackBar(SnackBar(
      backgroundColor: lightColorScheme.onPrimaryContainer,
      duration: const Duration(milliseconds: 1500),
      behavior: SnackBarBehavior.floating,
      content: Text(message ?? "Something went wrong ")));
}
class EmptyCacheException implements Exception {

}
class OfflineException implements Exception {

}
class ServerException implements Exception {}