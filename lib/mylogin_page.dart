import 'dart:convert';
import 'package:crypto/crypto.dart';

class MyLogin {
  String _pass;
  // MyLogin(this._pass);
  set myPassword(String passwd) {
    // _pass = passwd;
    var bytes = utf8.encode(passwd);
    var digest = sha1.convert(bytes);
    _pass = digest.toString();
  }

  get hackPassword {
    return _pass;
  }
}
