import 'package:shared_preferences/shared_preferences.dart';

class Save{

  //Save(this.save);

  late final save;
  //Save(this.save);

  // initializeState()async{
  //   save= await SharedPreferences.getInstance();
  // }

  Future<void> saveString(String key, String value) async {
    final save = await SharedPreferences.getInstance();
    //final save2 = save;
    await save.setString(key,value);
  }

  Future<String?> getString(String key) async{
    final save = await SharedPreferences.getInstance();
    return save.getString(key);
  }
}