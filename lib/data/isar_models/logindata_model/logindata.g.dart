// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logindata.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoginDataCollection on Isar {
  IsarCollection<LoginData> get loginDatas => this.collection();
}

const LoginDataSchema = CollectionSchema(
  name: r'LoginData',
  id: -3646020211574150524,
  properties: {
    r'loginid': PropertySchema(
      id: 0,
      name: r'loginid',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 1,
      name: r'phoneNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _loginDataEstimateSize,
  serialize: _loginDataSerialize,
  deserialize: _loginDataDeserialize,
  deserializeProp: _loginDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _loginDataGetId,
  getLinks: _loginDataGetLinks,
  attach: _loginDataAttach,
  version: '3.1.0+1',
);

int _loginDataEstimateSize(
  LoginData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.loginid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _loginDataSerialize(
  LoginData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.loginid);
  writer.writeString(offsets[1], object.phoneNumber);
}

LoginData _loginDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoginData();
  object.id = id;
  object.loginid = reader.readStringOrNull(offsets[0]);
  object.phoneNumber = reader.readStringOrNull(offsets[1]);
  return object;
}

P _loginDataDeserializeProp<P>(
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

Id _loginDataGetId(LoginData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loginDataGetLinks(LoginData object) {
  return [];
}

void _loginDataAttach(IsarCollection<dynamic> col, Id id, LoginData object) {
  object.id = id;
}

extension LoginDataQueryWhereSort
    on QueryBuilder<LoginData, LoginData, QWhere> {
  QueryBuilder<LoginData, LoginData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoginDataQueryWhere
    on QueryBuilder<LoginData, LoginData, QWhereClause> {
  QueryBuilder<LoginData, LoginData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<LoginData, LoginData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterWhereClause> idBetween(
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

extension LoginDataQueryFilter
    on QueryBuilder<LoginData, LoginData, QFilterCondition> {
  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginid',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginid',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> loginidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginid',
        value: '',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      loginidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginid',
        value: '',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }
}

extension LoginDataQueryObject
    on QueryBuilder<LoginData, LoginData, QFilterCondition> {}

extension LoginDataQueryLinks
    on QueryBuilder<LoginData, LoginData, QFilterCondition> {}

extension LoginDataQuerySortBy on QueryBuilder<LoginData, LoginData, QSortBy> {
  QueryBuilder<LoginData, LoginData, QAfterSortBy> sortByLoginid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginid', Sort.asc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> sortByLoginidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginid', Sort.desc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }
}

extension LoginDataQuerySortThenBy
    on QueryBuilder<LoginData, LoginData, QSortThenBy> {
  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenByLoginid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginid', Sort.asc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenByLoginidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginid', Sort.desc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<LoginData, LoginData, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }
}

extension LoginDataQueryWhereDistinct
    on QueryBuilder<LoginData, LoginData, QDistinct> {
  QueryBuilder<LoginData, LoginData, QDistinct> distinctByLoginid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoginData, LoginData, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }
}

extension LoginDataQueryProperty
    on QueryBuilder<LoginData, LoginData, QQueryProperty> {
  QueryBuilder<LoginData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoginData, String?, QQueryOperations> loginidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginid');
    });
  }

  QueryBuilder<LoginData, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }
}
