import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ta_mobile/main.dart';

// For checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();
  Future<ConnectivityResult> get connectivityResult;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  final Connectivity connectivity;
  static final NetworkInfo _networkInfo = NetworkInfo._internal(Connectivity());

  factory NetworkInfo() {
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity);

  /// Checks if internet is connected or not
  /// Returns [true] if internet is connected
  /// Else it will return [false]
  @override
  Future<bool> isConnected() async {
    final result = await connectivityResult;
    return result != ConnectivityResult.none;
  }

  /// To check type of internet connectivity
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return await connectivity.checkConnectivity();
  }

  /// Check the type of internet connection on change of internet connection
  @override
  Stream<ConnectivityResult> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}

abstract class Failure {}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

/// Can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'No Internet Exception Occurred']) {
    if (globalMessengerKey.currentState != null) {
      globalMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text(message)));
    }
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
