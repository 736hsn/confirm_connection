# Flutter Checking Network connection

[![Pub](https://pub.dev/packages/confirm_connection_network)](https://pub.dev/packages/confirm_connection_network)

A flutter plugin to Checking Network connection status, on call.

# Usage

First, add `confirm_connection_network` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  confirm_connection_network: ^0.0.5
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
Simple usage example can be found [in the example folder](example/lib/main.dart).

**Android**

Uses permission

```
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

Minimum SDK Version 16

**iOS**

Uses NetworkMonitor, minimum required version 10.0


**Demo**

![image](https://i.ibb.co/VH4fQy8/2022-12-12-15-03-17.jpg "Sample Image offline")
![image](https://i.ibb.co/9wb3fST/2022-12-12-15-03-20-1.jpg "Sample Image online")

### About
This plugin uses [NetworkCapabilities](https://developer.android.com/reference/android/net/NetworkCapabilities) for Android and [NetworkMonitor](https://developer.apple.com/documentation/network) for iOS to check for network connectivity status.


### Contributing?
You're always welcome. See [Contributing Guidelines](CONTRIBUTING.md). You can also take a look at [Status Tracker](https://github.com/736hsn/confirm_connection) to know more information about current or pending features/issues.
