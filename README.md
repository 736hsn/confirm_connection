# Flutter Checking Network connection
# Powered By Hassan Tanoma

[![Pub](https://img.shields.io/pub/v/bloc.svg)](https://pub.dev/packages/confirm_connection_network)
[![Pub](https://i.imgur.com/aV6DDA7.png)](https://www.buymeacoffee.com/736hassan)
[![Pub](https://img.shields.io/badge/chat-on%20Telegram-blue.svg)](https://t.me/hsn9_7)
[![Pub](https://github.com/felangel/bloc/workflows/build/badge.svg)](https://github.com/736hsn)

In this guide, we will learn how to implement the network Connectivity Status in Flutter by using the external package name confirm_connection_network. This plugin allows Flutter apps to discover network connectivity. For example, when you are connected or disconnected from wifi. this package will not tell us if we have or not internet connection. In this example, we are going to show you how to check the internet connection in Flutter. we will learn to check if the device’s internet connection is online or offline , To check the network connectivity status in a Flutter app, you can use the confirmConnection Function, which is provided by the confirm_connection_network package. Here’s an example of how you could use it:

# Usage

First, add `confirm_connection_network` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  confirm_connection_network: ^0.0.9
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
