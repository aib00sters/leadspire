// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_survey_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPersonalSurveyResultCollection on Isar {
  IsarCollection<PersonalSurveyResult> get personalSurveyResults =>
      this.collection();
}

const PersonalSurveyResultSchema = CollectionSchema(
  name: r'PersonalSurveyResult',
  id: -8663350035217238516,
  properties: {
    r'answerId': PropertySchema(
      id: 0,
      name: r'answerId',
      type: IsarType.string,
    ),
    r'questionId': PropertySchema(
      id: 1,
      name: r'questionId',
      type: IsarType.string,
    )
  },
  estimateSize: _personalSurveyResultEstimateSize,
  serialize: _personalSurveyResultSerialize,
  deserialize: _personalSurveyResultDeserialize,
  deserializeProp: _personalSurveyResultDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _personalSurveyResultGetId,
  getLinks: _personalSurveyResultGetLinks,
  attach: _personalSurveyResultAttach,
  version: '3.1.0+1',
);

int _personalSurveyResultEstimateSize(
  PersonalSurveyResult object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.answerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.questionId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _personalSurveyResultSerialize(
  PersonalSurveyResult object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answerId);
  writer.writeString(offsets[1], object.questionId);
}

PersonalSurveyResult _personalSurveyResultDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PersonalSurveyResult();
  object.answerId = reader.readStringOrNull(offsets[0]);
  object.questionId = reader.readStringOrNull(offsets[1]);
  return object;
}

P _personalSurveyResultDeserializeProp<P>(
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

Id _personalSurveyResultGetId(PersonalSurveyResult object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _personalSurveyResultGetLinks(
    PersonalSurveyResult object) {
  return [];
}

void _personalSurveyResultAttach(
    IsarCollection<dynamic> col, Id id, PersonalSurveyResult object) {}

extension PersonalSurveyResultQueryWhereSort
    on QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QWhere> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhere>
      anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PersonalSurveyResultQueryWhere
    on QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QWhereClause> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PersonalSurveyResultQueryFilter on QueryBuilder<PersonalSurveyResult,
    PersonalSurveyResult, QFilterCondition> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answerId',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
          QAfterFilterCondition>
      answerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
          QAfterFilterCondition>
      answerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answerId',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> answerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answerId',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'questionId',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'questionId',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'questionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
          QAfterFilterCondition>
      questionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'questionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
          QAfterFilterCondition>
      questionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'questionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'questionId',
        value: '',
      ));
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult,
      QAfterFilterCondition> questionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'questionId',
        value: '',
      ));
    });
  }
}

extension PersonalSurveyResultQueryObject on QueryBuilder<PersonalSurveyResult,
    PersonalSurveyResult, QFilterCondition> {}

extension PersonalSurveyResultQueryLinks on QueryBuilder<PersonalSurveyResult,
    PersonalSurveyResult, QFilterCondition> {}

extension PersonalSurveyResultQuerySortBy
    on QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QSortBy> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      sortByAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerId', Sort.asc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      sortByAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerId', Sort.desc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      sortByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      sortByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }
}

extension PersonalSurveyResultQuerySortThenBy
    on QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QSortThenBy> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByAnswerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerId', Sort.asc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByAnswerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'answerId', Sort.desc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByQuestionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.asc);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QAfterSortBy>
      thenByQuestionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'questionId', Sort.desc);
    });
  }
}

extension PersonalSurveyResultQueryWhereDistinct
    on QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QDistinct> {
  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QDistinct>
      distinctByAnswerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'answerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PersonalSurveyResult, PersonalSurveyResult, QDistinct>
      distinctByQuestionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'questionId', caseSensitive: caseSensitive);
    });
  }
}

extension PersonalSurveyResultQueryProperty on QueryBuilder<
    PersonalSurveyResult, PersonalSurveyResult, QQueryProperty> {
  QueryBuilder<PersonalSurveyResult, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<PersonalSurveyResult, String?, QQueryOperations>
      answerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'answerId');
    });
  }

  QueryBuilder<PersonalSurveyResult, String?, QQueryOperations>
      questionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'questionId');
    });
  }
}
