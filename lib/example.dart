import 'confirm_connection_network.dart';

checkConnection() async {
  if (await ConfirmConnection.confirmConnection()) {
    print("you are online");
  } else {
    print("you are offline");
  }
}
