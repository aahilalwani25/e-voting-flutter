import 'package:localstorage/localstorage.dart';

class LoginConfirm{

  bool confirm(){
    return (LocalStorage('evoting_app').getItem('cnic')?? true);
  }
}