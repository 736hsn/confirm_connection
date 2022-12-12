import 'package:confirm_connection_network/confirm_connection_network.dart';
//checkConnection

checkConnection() async {
  if (await ConfirmConnection.confirmConnection()) {
    print("you are online");
    //you are online
  } else {
    print("you are offline");
    //you are offline

  }
}

void main() {
  //checkConnection

  checkConnection();
}
