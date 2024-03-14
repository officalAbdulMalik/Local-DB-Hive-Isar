// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_populotion.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCountryPopulationCollection on Isar {
  IsarCollection<CountryPopulation> get countryPopulations => this.collection();
}

const CountryPopulationSchema = CollectionSchema(
  name: r'CountryPopulation',
  id: 356779127850775041,
  properties: {
    r'childrenInCountry': PropertySchema(
      id: 0,
      name: r'childrenInCountry',
      type: IsarType.string,
    ),
    r'countryName': PropertySchema(
      id: 1,
      name: r'countryName',
      type: IsarType.string,
    ),
    r'educated': PropertySchema(
      id: 2,
      name: r'educated',
      type: IsarType.string,
    ),
    r'manInCountry': PropertySchema(
      id: 3,
      name: r'manInCountry',
      type: IsarType.string,
    ),
    r'totalPopulation': PropertySchema(
      id: 4,
      name: r'totalPopulation',
      type: IsarType.string,
    ),
    r'womenInCountry': PropertySchema(
      id: 5,
      name: r'womenInCountry',
      type: IsarType.string,
    )
  },
  estimateSize: _countryPopulationEstimateSize,
  serialize: _countryPopulationSerialize,
  deserialize: _countryPopulationDeserialize,
  deserializeProp: _countryPopulationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _countryPopulationGetId,
  getLinks: _countryPopulationGetLinks,
  attach: _countryPopulationAttach,
  version: '3.1.0+1',
);

int _countryPopulationEstimateSize(
  CountryPopulation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.childrenInCountry;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.countryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.educated;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.manInCountry;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.totalPopulation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.womenInCountry;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _countryPopulationSerialize(
  CountryPopulation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.childrenInCountry);
  writer.writeString(offsets[1], object.countryName);
  writer.writeString(offsets[2], object.educated);
  writer.writeString(offsets[3], object.manInCountry);
  writer.writeString(offsets[4], object.totalPopulation);
  writer.writeString(offsets[5], object.womenInCountry);
}

CountryPopulation _countryPopulationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CountryPopulation(
    childrenInCountry: reader.readStringOrNull(offsets[0]),
    countryName: reader.readStringOrNull(offsets[1]),
    educated: reader.readStringOrNull(offsets[2]),
    manInCountry: reader.readStringOrNull(offsets[3]),
    totalPopulation: reader.readStringOrNull(offsets[4]),
    womenInCountry: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _countryPopulationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _countryPopulationGetId(CountryPopulation object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _countryPopulationGetLinks(
    CountryPopulation object) {
  return [];
}

void _countryPopulationAttach(
    IsarCollection<dynamic> col, Id id, CountryPopulation object) {
  object.id = id;
}

extension CountryPopulationQueryWhereSort
    on QueryBuilder<CountryPopulation, CountryPopulation, QWhere> {
  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CountryPopulationQueryWhere
    on QueryBuilder<CountryPopulation, CountryPopulation, QWhereClause> {
  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CountryPopulationQueryFilter
    on QueryBuilder<CountryPopulation, CountryPopulation, QFilterCondition> {
  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'childrenInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'childrenInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'childrenInCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'childrenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'childrenInCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childrenInCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      childrenInCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'childrenInCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countryName',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countryName',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      countryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryName',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'educated',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'educated',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'educated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'educated',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'educated',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'educated',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      educatedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'educated',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'manInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'manInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'manInCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'manInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'manInCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'manInCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      manInCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'manInCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPopulation',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPopulation',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPopulation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'totalPopulation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'totalPopulation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPopulation',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      totalPopulationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'totalPopulation',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'womenInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'womenInCountry',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'womenInCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'womenInCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'womenInCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'womenInCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterFilterCondition>
      womenInCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'womenInCountry',
        value: '',
      ));
    });
  }
}

extension CountryPopulationQueryObject
    on QueryBuilder<CountryPopulation, CountryPopulation, QFilterCondition> {}

extension CountryPopulationQueryLinks
    on QueryBuilder<CountryPopulation, CountryPopulation, QFilterCondition> {}

extension CountryPopulationQuerySortBy
    on QueryBuilder<CountryPopulation, CountryPopulation, QSortBy> {
  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByChildrenInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childrenInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByChildrenInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childrenInCountry', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByCountryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByCountryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByEducated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educated', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByEducatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educated', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByManInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByManInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manInCountry', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByTotalPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPopulation', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByTotalPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPopulation', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByWomenInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'womenInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      sortByWomenInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'womenInCountry', Sort.desc);
    });
  }
}

extension CountryPopulationQuerySortThenBy
    on QueryBuilder<CountryPopulation, CountryPopulation, QSortThenBy> {
  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByChildrenInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childrenInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByChildrenInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childrenInCountry', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByCountryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByCountryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryName', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByEducated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educated', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByEducatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'educated', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByManInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByManInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'manInCountry', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByTotalPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPopulation', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByTotalPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPopulation', Sort.desc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByWomenInCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'womenInCountry', Sort.asc);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QAfterSortBy>
      thenByWomenInCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'womenInCountry', Sort.desc);
    });
  }
}

extension CountryPopulationQueryWhereDistinct
    on QueryBuilder<CountryPopulation, CountryPopulation, QDistinct> {
  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByChildrenInCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'childrenInCountry',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByCountryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByEducated({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'educated', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByManInCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'manInCountry', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByTotalPopulation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPopulation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CountryPopulation, CountryPopulation, QDistinct>
      distinctByWomenInCountry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'womenInCountry',
          caseSensitive: caseSensitive);
    });
  }
}

extension CountryPopulationQueryProperty
    on QueryBuilder<CountryPopulation, CountryPopulation, QQueryProperty> {
  QueryBuilder<CountryPopulation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      childrenInCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'childrenInCountry');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      countryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryName');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      educatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'educated');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      manInCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'manInCountry');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      totalPopulationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPopulation');
    });
  }

  QueryBuilder<CountryPopulation, String?, QQueryOperations>
      womenInCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'womenInCountry');
    });
  }
}
