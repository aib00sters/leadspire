// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paint_details_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPaintDetailsCollection on Isar {
  IsarCollection<PaintDetails> get paintDetails => this.collection();
}

const PaintDetailsSchema = CollectionSchema(
  name: r'PaintDetails',
  id: -7621396375510533856,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'filepath': PropertySchema(
      id: 1,
      name: r'filepath',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 2,
      name: r'image',
      type: IsarType.longList,
    )
  },
  estimateSize: _paintDetailsEstimateSize,
  serialize: _paintDetailsSerialize,
  deserialize: _paintDetailsDeserialize,
  deserializeProp: _paintDetailsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _paintDetailsGetId,
  getLinks: _paintDetailsGetLinks,
  attach: _paintDetailsAttach,
  version: '3.1.0+1',
);

int _paintDetailsEstimateSize(
  PaintDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.filepath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _paintDetailsSerialize(
  PaintDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeString(offsets[1], object.filepath);
  writer.writeLongList(offsets[2], object.image);
}

PaintDetails _paintDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PaintDetails(
    dateTime: reader.readDateTimeOrNull(offsets[0]),
    filepath: reader.readStringOrNull(offsets[1]),
    id: id,
    image: reader.readLongList(offsets[2]),
  );
  return object;
}

P _paintDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _paintDetailsGetId(PaintDetails object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _paintDetailsGetLinks(PaintDetails object) {
  return [];
}

void _paintDetailsAttach(
    IsarCollection<dynamic> col, Id id, PaintDetails object) {
  object.id = id;
}

extension PaintDetailsQueryWhereSort
    on QueryBuilder<PaintDetails, PaintDetails, QWhere> {
  QueryBuilder<PaintDetails, PaintDetails, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PaintDetailsQueryWhere
    on QueryBuilder<PaintDetails, PaintDetails, QWhereClause> {
  QueryBuilder<PaintDetails, PaintDetails, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PaintDetails, PaintDetails, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterWhereClause> idBetween(
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

extension PaintDetailsQueryFilter
    on QueryBuilder<PaintDetails, PaintDetails, QFilterCondition> {
  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      dateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'filepath',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'filepath',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filepath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filepath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filepath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filepath',
        value: '',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      filepathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filepath',
        value: '',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterFilterCondition>
      imageLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'image',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PaintDetailsQueryObject
    on QueryBuilder<PaintDetails, PaintDetails, QFilterCondition> {}

extension PaintDetailsQueryLinks
    on QueryBuilder<PaintDetails, PaintDetails, QFilterCondition> {}

extension PaintDetailsQuerySortBy
    on QueryBuilder<PaintDetails, PaintDetails, QSortBy> {
  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> sortByFilepath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filepath', Sort.asc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> sortByFilepathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filepath', Sort.desc);
    });
  }
}

extension PaintDetailsQuerySortThenBy
    on QueryBuilder<PaintDetails, PaintDetails, QSortThenBy> {
  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenByFilepath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filepath', Sort.asc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenByFilepathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filepath', Sort.desc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension PaintDetailsQueryWhereDistinct
    on QueryBuilder<PaintDetails, PaintDetails, QDistinct> {
  QueryBuilder<PaintDetails, PaintDetails, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QDistinct> distinctByFilepath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filepath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PaintDetails, PaintDetails, QDistinct> distinctByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image');
    });
  }
}

extension PaintDetailsQueryProperty
    on QueryBuilder<PaintDetails, PaintDetails, QQueryProperty> {
  QueryBuilder<PaintDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PaintDetails, DateTime?, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<PaintDetails, String?, QQueryOperations> filepathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filepath');
    });
  }

  QueryBuilder<PaintDetails, List<int>?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }
}
