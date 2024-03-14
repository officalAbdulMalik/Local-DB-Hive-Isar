import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:local_db_prictice/Hive/Domain/model.dart';

class DBServices {
  static final DBServices _dbServices = DBServices._internal();
  factory DBServices() => _dbServices;
  DBServices._internal();

  ValueNotifier<List<CountryPeople>> peopleData = ValueNotifier([]);

  static Box? people;

  getDataFromHive() async {
    final ls = people!.values.toList() as List<CountryPeople>;
    peopleData.value = ls;
    people!.listenable().addListener(() {
      final ls = people!.values.toList() as List<CountryPeople>;
      log(ls.toString());
      peopleData.value = ls;
      peopleData.notifyListeners();
    });
  }

  deleteSpeceficData(String? id)async{
    await people!.delete(id);
  }

  hiveBoxesInit() async {
    // await Hive.deleteBoxFromDisk('chathead');
    // await Hive.deleteBoxFromDisk('chat');
    people = await Hive.openBox<CountryPeople>('people');
  }
  //chatroom - user1+user2

  static Future initData(List<CountryPeople> data) async {
    final Map<String, CountryPeople> mapData = {};
    // Convert the list of CountryPeople instances into a map
    for (var country in data) {
      mapData[country.id.toString()] = country;
    }
    try {
      // Add all instances to the box at once
      await people!.putAll(mapData);
      print("All data added successfully.");
    } catch (e) {
      print("Error adding data: $e");
    }
  }
}
