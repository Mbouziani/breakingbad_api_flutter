import 'package:breakingbad/Data/Api/API_charchter.dart';
import 'package:breakingbad/Data/Model/M_charachter.dart';

class CharachterREPO {
  final charachterAPI charaAPI;

  CharachterREPO(this.charaAPI);
  Future<List<charachter>> getalldataCharachter() async {
    final mycharchter = await charaAPI.getallCharachter();
    return mycharchter.map((char) => charachter.fromJson(char)).toList();
  }
}
