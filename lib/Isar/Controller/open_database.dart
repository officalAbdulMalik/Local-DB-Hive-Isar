import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:local_db_prictice/Isar/Domain/country_populotion.dart';
import 'package:local_db_prictice/Isar/Domain/dummy_model.dart';
import 'package:path_provider/path_provider.dart';

class OpenDatabase {
  static ValueNotifier<List<CountryPopulation>> countryData = ValueNotifier([]);

  //
  // static Isar? userDb;
  //
  static Isar? countryIsar;

  static openDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    final countryData = await Isar.open(
      [CountryPopulationSchema],
      directory: dir.path,
    );
   await writeCountryData(countryData: countryData).whenComplete((){
      getItemData(item: countryData);
    });
    countryIsar = countryData;



    // writeCountryData(countryData: countryData).whenComplete((){
    //
    // });

    //
    //   log('here item data instance$itemData');
    //   getItemData(item: itemData);
    //
    //
    //
    //   // await writeItemData();
    // }
  }

  static Future delete({int? id}) async {
    print(countryIsar);

    await countryIsar?.writeTxn(() async {
      await countryIsar?.countryPopulations.delete(id!).whenComplete(() {
        getItemData(item: countryIsar);
      });
    });
  }

  static Future writeCountryData({Isar? countryData}) async {
    List<CountryPopulation> data = [];
    await countryData?.writeTxn(() async {
      await countryData.countryPopulations
          .putAll(DummyModel.countryPopulation); // insert & update
    }).then((value) {
      log("here is value ${value.toString()}");
    });
  }

  // static Future delete({Isar? countryData}) async {
  //
  //    List<CountryPopulation> data = [];
  //      await countryData?.writeTxn(() async {
  //        await countryData.countryPopulations.putAll(DummyModel.countryPopulation); // insert & update
  //      }).then((value){
  //        log("here is value ${value.toString()}");
  //      });
  // }
  //
  static getItemData({Isar? item}) async {
    log("data called");

    IsarCollection<CountryPopulation>? contactsCollection =
        item!.collection<CountryPopulation>();
    final userData = await contactsCollection.where().findAll();
    log("here is data ${userData.length}");
    countryData.value = userData;
    countryData.notifyListeners();
  }
}
