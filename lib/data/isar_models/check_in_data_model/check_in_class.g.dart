// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_class.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCheckDataCollection on Isar {
  IsarCollection<CheckData> get checkDatas => this.collection();
}

const CheckDataSchema = CollectionSchema(
  name: r'CheckData',
  id: -6846048301584438102,
  properties: {
    r'checkInDate': PropertySchema(
      id: 0,
      name: r'checkInDate',
      type: IsarType.string,
    ),
    r'checkOutDate': PropertySchema(
      id: 1,
      name: r'checkOutDate',
      type: IsarType.string,
    )
  },
  estimateSize: _checkDataEstimateSize,
  serialize: _checkDataSerialize,
  deserialize: _checkDataDeserialize,
  deserializeProp: _checkDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _checkDataGetId,
  getLinks: _checkDataGetLinks,
  attach: _checkDataAttach,
  version: '3.1.0+1',
);

int _checkDataEstimateSize(
  CheckData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.checkInDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.checkOutDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _checkDataSerialize(
  CheckData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.checkInDate);
  writer.writeString(offsets[1], object.checkOutDate);
}

CheckData _checkDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CheckData();
  object.checkInDate = reader.readStringOrNull(offsets[0]);
  object.checkOutDate = reader.readStringOrNull(offsets[1]);
  object.id = id;
  return object;
}

P _checkDataDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _checkDataGetId(CheckData object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _checkDataGetLinks(CheckData object) {
  return [];
}

void _checkDataAttach(IsarCollection<dynamic> col, Id id, CheckData object) {
  object.id = id;
}

extension CheckDataQueryWhereSort
    on QueryBuilder<CheckData, CheckData, QWhere> {
  QueryBuilder<CheckData, CheckData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CheckDataQueryWhere
    on QueryBuilder<CheckData, CheckData, QWhereClause> {
  QueryBuilder<CheckData, CheckData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CheckData, CheckData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterWhereClause> idBetween(
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

extension CheckDataQueryFilter
    on QueryBuilder<CheckData, CheckData, QFilterCondition> {
  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checkInDate',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checkInDate',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkInDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'checkInDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkInDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'checkInDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkInDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkInDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'checkInDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checkOutDate',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checkOutDate',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkOutDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkOutDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkOutDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'checkOutDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> checkOutDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'checkOutDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkOutDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition>
      checkOutDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'checkOutDate',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<CheckData, CheckData, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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
}

extension CheckDataQueryObject
    on QueryBuilder<CheckData, CheckData, QFilterCondition> {}

extension CheckDataQueryLinks
    on QueryBuilder<CheckData, CheckData, QFilterCondition> {}

extension CheckDataQuerySortBy on QueryBuilder<CheckData, CheckData, QSortBy> {
  QueryBuilder<CheckData, CheckData, QAfterSortBy> sortByCheckInDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkInDate', Sort.asc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> sortByCheckInDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkInDate', Sort.desc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> sortByCheckOutDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkOutDate', Sort.asc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> sortByCheckOutDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkOutDate', Sort.desc);
    });
  }
}

extension CheckDataQuerySortThenBy
    on QueryBuilder<CheckData, CheckData, QSortThenBy> {
  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenByCheckInDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkInDate', Sort.asc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenByCheckInDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkInDate', Sort.desc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenByCheckOutDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkOutDate', Sort.asc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenByCheckOutDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkOutDate', Sort.desc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CheckData, CheckData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension CheckDataQueryWhereDistinct
    on QueryBuilder<CheckData, CheckData, QDistinct> {
  QueryBuilder<CheckData, CheckData, QDistinct> distinctByCheckInDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkInDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckData, CheckData, QDistinct> distinctByCheckOutDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkOutDate', caseSensitive: caseSensitive);
    });
  }
}

extension CheckDataQueryProperty
    on QueryBuilder<CheckData, CheckData, QQueryProperty> {
  QueryBuilder<CheckData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CheckData, String?, QQueryOperations> checkInDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkInDate');
    });
  }

  QueryBuilder<CheckData, String?, QQueryOperations> checkOutDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkOutDate');
    });
  }
}
