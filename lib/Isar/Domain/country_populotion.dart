import 'package:isar/isar.dart';
part "country_populotion.g.dart";

@collection
class CountryPopulation {
  Id id = Isar.autoIncrement; // Change to int since it's an auto-incrementing field
  String? countryName;
  String? totalPopulation;
  String? manInCountry;
  String? womenInCountry;
  String? childrenInCountry;
  String? educated;

  CountryPopulation({
    this.countryName,
    this.totalPopulation,
    this.manInCountry,
    this.womenInCountry,
    this.childrenInCountry,
    this.educated,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'countryName': countryName,
      'totalPopulation': totalPopulation,
      'manInCountry': manInCountry,
      'womenInCountry': womenInCountry,
      'childrenInCountry': childrenInCountry,
      'educated': educated,
    };
  }

  static CountryPopulation fromJson(Map<String, dynamic> json) {
    return CountryPopulation(
      countryName: json['countryName'],
      totalPopulation: json['totalPopulation'],
      manInCountry: json['manInCountry'],
      womenInCountry: json['womenInCountry'],
      childrenInCountry: json['childrenInCountry'],
      educated: json['educated'],
    );
  }
}
