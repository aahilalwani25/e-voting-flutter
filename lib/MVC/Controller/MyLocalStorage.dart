import 'package:localstorage/localstorage.dart';

class MyLocalStorage{

  LocalStorage storage= LocalStorage('evoting_app');
  bool verify(String key){
    print((storage.getItem(key) ?? null) == true);
    return (storage.getItem(key)??null)==true;
  }



  void set(String key, dynamic value){
    storage.setItem(key, value);
  }

  void delete(String key){
    storage.deleteItem(key);
  }
}