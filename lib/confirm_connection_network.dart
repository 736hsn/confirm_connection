library confirm_connection_network;

import 'dart:async';
import 'dart:io';

class ConfirmConnection {
  static Future<bool> confirmConnection() async {
    /// Here, the result works like a 'ping' at the address below
    try {
      /// It's used 'google.com' because it has a global
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result.first.rawAddress.isNotEmpty) {
        /// Here it's returned 'true', so the response of 'lookup' was successful
        return true;
      } else {
        return false;
      }
    } catch (error) {
      /// Here it's returned 'false', so there is not connection
      return false;
    }
  }
}
