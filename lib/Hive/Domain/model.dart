
import 'package:hive/hive.dart';
part "model.g.dart";
@HiveType(typeId: 0)
class CountryPeople {
  @HiveField(0)
  int? id ; // Change to int since it's an auto-incrementing field
  @HiveField(1)
  String? countryName;
  @HiveField(2)
  String? totalPopulation;
  @HiveField(3)
  String? manInCountry;
  @HiveField(4)
  String? womenInCountry;
  @HiveField(5)
  String? childrenInCountry;
  @HiveField(6)
  String? educated;
  @HiveField(7)

  CountryPeople({
    this.id,
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

  static CountryPeople fromJson(Map<String, dynamic> json) {
    return CountryPeople(
      countryName: json['countryName'],
      totalPopulation: json['totalPopulation'],
      manInCountry: json['manInCountry'],
      womenInCountry: json['womenInCountry'],
      childrenInCountry: json['childrenInCountry'],
      educated: json['educated'],
    );
  }
}
