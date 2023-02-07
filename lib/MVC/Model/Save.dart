import 'package:shared_preferences/shared_preferences.dart';

class Save{

  //Save(this.save);

  saveString(String key, String value) async{
    final save = await SharedPreferences.getInstance();
    save.setString(key,value);
  }

  Future<String?> getString(String key) async{
    final save = await SharedPreferences.getInstance();
    return save.getString(key);
  }
}