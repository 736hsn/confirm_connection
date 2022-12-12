# Flutter Checking Network connection

[![Pub](https://pub.dev/packages/confirm_connection_network)](https://pub.dev/packages/confirm_connection_network)

A flutter plugin to Checking Network connection status, periodic interval or on call.

# Usage

First, add `confirm_connection_network` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  confirm_connection_network: ^0.0.1
```

Don't forget to `flutter pub get`.

Then import:

```dart
import 'package:confirm_connection_network/confirm_connection_network.dart';
```

Now you can create FlutterNetworkConnectivity object and use its methods

```dart
checkConnection()async{
  if (await ConfirmConnection.confirmConnection()){
  print("you are online");
   } else {
  print("you are offline");
   }
}
```
### To Checking Network connection Status
```dart
checkConnection()async{
  if (await ConfirmConnection.confirmConnection()){
    print("you are online");
  } else {
    print("you are offline");
  }
}
```

 
 
 
### Examples
Simple usage example can be found [in the example folder](example.dart).

**Android**

Uses permission

```
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

Minimum SDK Version 16

**iOS**

Uses NetworkMonitor, minimum required version 12.0


**Demo**

![image](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.q5LDRtqY30X15uQKDUjSbwHaFj%26pid%3DApi&f=1&ipt=abdab93ca4d3a15004cc103e702b2802256977af7b9cfd9b027b7107846cac4e&ipo=images "Sample Gif")

### About
This plugin uses [NetworkCapabilities](https://developer.android.com/reference/android/net/NetworkCapabilities) for Android and [NetworkMonitor](https://developer.apple.com/documentation/network) for iOS to check for network connectivity status.


### Contributing?
You're always welcome. See [Contributing Guidelines](CONTRIBUTING.md). You can also take a look at [Status Tracker](https://github.com/736hsn/confirm_connection) to know more information about current or pending features/issues.
