import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final _document = ''.obs;
  get document => this._document.value;
  void setDocument(String? value) => this._document.value = value ?? '';

  final _password = ''.obs;
  get password => this._password.value;
  void setPassword(String? value) => this._password.value = value ?? '';
}
