import 'dart:io';

import 'network.dart';

class NetworkUtilsImpl extends NetworkUtils {
  @override
  Future<bool> isNetworkConnected({
    Duration timeout = const Duration(seconds: 3),
  }) async {
    try {
      final result = await InternetAddress.lookup(
        'google.com',
      ).timeout(timeout);
      return result.any((address) => address.rawAddress.isNotEmpty);
    } on SocketException {
      return false;
    } catch (_) {
      return false;
    }
  }
}
