// ignore_for_file: non_constant_identifier_names, camel_case_types

class charachter {
  late int CharID;
  late String Name;
  late String Nakename;
  late String birthday;
  late String Image;
  late List<dynamic> Jobs;
  late String Statusdeadlive;
  late List<dynamic> appearanceofSeasons;
  late String actorname;
  late String categoryFortowSeries;
  //late List<dynamic> betterCallSaulAppearance;

  charachter.fromJson(Map<String, dynamic> json) {
    CharID = json["char_id"];
    Name = json["name"];
    Nakename = json["nickname"];
    birthday = json["birthday"];
    Image = json["img"];
    Jobs = json["occupation"];
    Statusdeadlive = json["status"];
    appearanceofSeasons = json["appearance"];
    actorname = json["portrayed"];
    categoryFortowSeries = json["category"];
    //betterCallSaulAppearance = json["etter_call_saul_appearance"];
  }
}
