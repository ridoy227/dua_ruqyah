// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_database_service.dart';

// ignore_for_file: type=lint
class $DuaSubcategoryTable extends DuaSubcategory
    with TableInfo<$DuaSubcategoryTable, DuaSubcategoryDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DuaSubcategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _catIdMeta = const VerificationMeta('catId');
  @override
  late final GeneratedColumn<int> catId = GeneratedColumn<int>(
      'cat_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _subcatIdMeta =
      const VerificationMeta('subcatId');
  @override
  late final GeneratedColumn<int> subcatId = GeneratedColumn<int>(
      'subcat_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _subcatNameBnMeta =
      const VerificationMeta('subcatNameBn');
  @override
  late final GeneratedColumn<String> subcatNameBn = GeneratedColumn<String>(
      'subcat_name_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subcatNameEnMeta =
      const VerificationMeta('subcatNameEn');
  @override
  late final GeneratedColumn<String> subcatNameEn = GeneratedColumn<String>(
      'subcat_name_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noOfDuaMeta =
      const VerificationMeta('noOfDua');
  @override
  late final GeneratedColumn<int> noOfDua = GeneratedColumn<int>(
      'no_of_dua', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, catId, subcatId, subcatNameBn, subcatNameEn, noOfDua];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dua_subcategory';
  @override
  VerificationContext validateIntegrity(Insertable<DuaSubcategoryDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    }
    if (data.containsKey('subcat_id')) {
      context.handle(_subcatIdMeta,
          subcatId.isAcceptableOrUnknown(data['subcat_id']!, _subcatIdMeta));
    }
    if (data.containsKey('subcat_name_bn')) {
      context.handle(
          _subcatNameBnMeta,
          subcatNameBn.isAcceptableOrUnknown(
              data['subcat_name_bn']!, _subcatNameBnMeta));
    }
    if (data.containsKey('subcat_name_en')) {
      context.handle(
          _subcatNameEnMeta,
          subcatNameEn.isAcceptableOrUnknown(
              data['subcat_name_en']!, _subcatNameEnMeta));
    }
    if (data.containsKey('no_of_dua')) {
      context.handle(_noOfDuaMeta,
          noOfDua.isAcceptableOrUnknown(data['no_of_dua']!, _noOfDuaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DuaSubcategoryDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DuaSubcategoryDto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id']),
      subcatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subcat_id']),
      subcatNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcat_name_bn']),
      subcatNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcat_name_en']),
      noOfDua: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_dua']),
    );
  }

  @override
  $DuaSubcategoryTable createAlias(String alias) {
    return $DuaSubcategoryTable(attachedDatabase, alias);
  }
}

class DuaSubcategoryDto extends DataClass
    implements Insertable<DuaSubcategoryDto> {
  final int id;
  final int? catId;
  final int? subcatId;
  final String? subcatNameBn;
  final String? subcatNameEn;
  final int? noOfDua;
  const DuaSubcategoryDto(
      {required this.id,
      this.catId,
      this.subcatId,
      this.subcatNameBn,
      this.subcatNameEn,
      this.noOfDua});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || catId != null) {
      map['cat_id'] = Variable<int>(catId);
    }
    if (!nullToAbsent || subcatId != null) {
      map['subcat_id'] = Variable<int>(subcatId);
    }
    if (!nullToAbsent || subcatNameBn != null) {
      map['subcat_name_bn'] = Variable<String>(subcatNameBn);
    }
    if (!nullToAbsent || subcatNameEn != null) {
      map['subcat_name_en'] = Variable<String>(subcatNameEn);
    }
    if (!nullToAbsent || noOfDua != null) {
      map['no_of_dua'] = Variable<int>(noOfDua);
    }
    return map;
  }

  DuaSubcategoryCompanion toCompanion(bool nullToAbsent) {
    return DuaSubcategoryCompanion(
      id: Value(id),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
      subcatId: subcatId == null && nullToAbsent
          ? const Value.absent()
          : Value(subcatId),
      subcatNameBn: subcatNameBn == null && nullToAbsent
          ? const Value.absent()
          : Value(subcatNameBn),
      subcatNameEn: subcatNameEn == null && nullToAbsent
          ? const Value.absent()
          : Value(subcatNameEn),
      noOfDua: noOfDua == null && nullToAbsent
          ? const Value.absent()
          : Value(noOfDua),
    );
  }

  factory DuaSubcategoryDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DuaSubcategoryDto(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int?>(json['catId']),
      subcatId: serializer.fromJson<int?>(json['subcatId']),
      subcatNameBn: serializer.fromJson<String?>(json['subcatNameBn']),
      subcatNameEn: serializer.fromJson<String?>(json['subcatNameEn']),
      noOfDua: serializer.fromJson<int?>(json['noOfDua']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int?>(catId),
      'subcatId': serializer.toJson<int?>(subcatId),
      'subcatNameBn': serializer.toJson<String?>(subcatNameBn),
      'subcatNameEn': serializer.toJson<String?>(subcatNameEn),
      'noOfDua': serializer.toJson<int?>(noOfDua),
    };
  }

  DuaSubcategoryDto copyWith(
          {int? id,
          Value<int?> catId = const Value.absent(),
          Value<int?> subcatId = const Value.absent(),
          Value<String?> subcatNameBn = const Value.absent(),
          Value<String?> subcatNameEn = const Value.absent(),
          Value<int?> noOfDua = const Value.absent()}) =>
      DuaSubcategoryDto(
        id: id ?? this.id,
        catId: catId.present ? catId.value : this.catId,
        subcatId: subcatId.present ? subcatId.value : this.subcatId,
        subcatNameBn:
            subcatNameBn.present ? subcatNameBn.value : this.subcatNameBn,
        subcatNameEn:
            subcatNameEn.present ? subcatNameEn.value : this.subcatNameEn,
        noOfDua: noOfDua.present ? noOfDua.value : this.noOfDua,
      );
  @override
  String toString() {
    return (StringBuffer('DuaSubcategoryDto(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('subcatNameBn: $subcatNameBn, ')
          ..write('subcatNameEn: $subcatNameEn, ')
          ..write('noOfDua: $noOfDua')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, catId, subcatId, subcatNameBn, subcatNameEn, noOfDua);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DuaSubcategoryDto &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.subcatId == this.subcatId &&
          other.subcatNameBn == this.subcatNameBn &&
          other.subcatNameEn == this.subcatNameEn &&
          other.noOfDua == this.noOfDua);
}

class DuaSubcategoryCompanion extends UpdateCompanion<DuaSubcategoryDto> {
  final Value<int> id;
  final Value<int?> catId;
  final Value<int?> subcatId;
  final Value<String?> subcatNameBn;
  final Value<String?> subcatNameEn;
  final Value<int?> noOfDua;
  const DuaSubcategoryCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.subcatId = const Value.absent(),
    this.subcatNameBn = const Value.absent(),
    this.subcatNameEn = const Value.absent(),
    this.noOfDua = const Value.absent(),
  });
  DuaSubcategoryCompanion.insert({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.subcatId = const Value.absent(),
    this.subcatNameBn = const Value.absent(),
    this.subcatNameEn = const Value.absent(),
    this.noOfDua = const Value.absent(),
  });
  static Insertable<DuaSubcategoryDto> custom({
    Expression<int>? id,
    Expression<int>? catId,
    Expression<int>? subcatId,
    Expression<String>? subcatNameBn,
    Expression<String>? subcatNameEn,
    Expression<int>? noOfDua,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (subcatId != null) 'subcat_id': subcatId,
      if (subcatNameBn != null) 'subcat_name_bn': subcatNameBn,
      if (subcatNameEn != null) 'subcat_name_en': subcatNameEn,
      if (noOfDua != null) 'no_of_dua': noOfDua,
    });
  }

  DuaSubcategoryCompanion copyWith(
      {Value<int>? id,
      Value<int?>? catId,
      Value<int?>? subcatId,
      Value<String?>? subcatNameBn,
      Value<String?>? subcatNameEn,
      Value<int?>? noOfDua}) {
    return DuaSubcategoryCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      subcatId: subcatId ?? this.subcatId,
      subcatNameBn: subcatNameBn ?? this.subcatNameBn,
      subcatNameEn: subcatNameEn ?? this.subcatNameEn,
      noOfDua: noOfDua ?? this.noOfDua,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    if (subcatId.present) {
      map['subcat_id'] = Variable<int>(subcatId.value);
    }
    if (subcatNameBn.present) {
      map['subcat_name_bn'] = Variable<String>(subcatNameBn.value);
    }
    if (subcatNameEn.present) {
      map['subcat_name_en'] = Variable<String>(subcatNameEn.value);
    }
    if (noOfDua.present) {
      map['no_of_dua'] = Variable<int>(noOfDua.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DuaSubcategoryCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('subcatNameBn: $subcatNameBn, ')
          ..write('subcatNameEn: $subcatNameEn, ')
          ..write('noOfDua: $noOfDua')
          ..write(')'))
        .toString();
  }
}

class $DuaCategoryTable extends DuaCategory
    with TableInfo<$DuaCategoryTable, DuaCategoryDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DuaCategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _catIdMeta = const VerificationMeta('catId');
  @override
  late final GeneratedColumn<int> catId = GeneratedColumn<int>(
      'cat_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _catNameBnMeta =
      const VerificationMeta('catNameBn');
  @override
  late final GeneratedColumn<String> catNameBn = GeneratedColumn<String>(
      'cat_name_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _catNameEnMeta =
      const VerificationMeta('catNameEn');
  @override
  late final GeneratedColumn<String> catNameEn = GeneratedColumn<String>(
      'cat_name_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noOfSubcatMeta =
      const VerificationMeta('noOfSubcat');
  @override
  late final GeneratedColumn<int> noOfSubcat = GeneratedColumn<int>(
      'no_of_subcat', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _noOfDuaMeta =
      const VerificationMeta('noOfDua');
  @override
  late final GeneratedColumn<int> noOfDua = GeneratedColumn<int>(
      'no_of_dua', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _catIconMeta =
      const VerificationMeta('catIcon');
  @override
  late final GeneratedColumn<String> catIcon = GeneratedColumn<String>(
      'cat_icon', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, catId, catNameBn, catNameEn, noOfSubcat, noOfDua, catIcon];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dua_category';
  @override
  VerificationContext validateIntegrity(Insertable<DuaCategoryDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    }
    if (data.containsKey('cat_name_bn')) {
      context.handle(
          _catNameBnMeta,
          catNameBn.isAcceptableOrUnknown(
              data['cat_name_bn']!, _catNameBnMeta));
    }
    if (data.containsKey('cat_name_en')) {
      context.handle(
          _catNameEnMeta,
          catNameEn.isAcceptableOrUnknown(
              data['cat_name_en']!, _catNameEnMeta));
    }
    if (data.containsKey('no_of_subcat')) {
      context.handle(
          _noOfSubcatMeta,
          noOfSubcat.isAcceptableOrUnknown(
              data['no_of_subcat']!, _noOfSubcatMeta));
    }
    if (data.containsKey('no_of_dua')) {
      context.handle(_noOfDuaMeta,
          noOfDua.isAcceptableOrUnknown(data['no_of_dua']!, _noOfDuaMeta));
    }
    if (data.containsKey('cat_icon')) {
      context.handle(_catIconMeta,
          catIcon.isAcceptableOrUnknown(data['cat_icon']!, _catIconMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DuaCategoryDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DuaCategoryDto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id']),
      catNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_name_bn']),
      catNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_name_en']),
      noOfSubcat: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_subcat']),
      noOfDua: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}no_of_dua']),
      catIcon: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cat_icon']),
    );
  }

  @override
  $DuaCategoryTable createAlias(String alias) {
    return $DuaCategoryTable(attachedDatabase, alias);
  }
}

class DuaCategoryDto extends DataClass implements Insertable<DuaCategoryDto> {
  final int id;
  final int? catId;
  final String? catNameBn;
  final String? catNameEn;
  final int? noOfSubcat;
  final int? noOfDua;
  final String? catIcon;
  const DuaCategoryDto(
      {required this.id,
      this.catId,
      this.catNameBn,
      this.catNameEn,
      this.noOfSubcat,
      this.noOfDua,
      this.catIcon});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || catId != null) {
      map['cat_id'] = Variable<int>(catId);
    }
    if (!nullToAbsent || catNameBn != null) {
      map['cat_name_bn'] = Variable<String>(catNameBn);
    }
    if (!nullToAbsent || catNameEn != null) {
      map['cat_name_en'] = Variable<String>(catNameEn);
    }
    if (!nullToAbsent || noOfSubcat != null) {
      map['no_of_subcat'] = Variable<int>(noOfSubcat);
    }
    if (!nullToAbsent || noOfDua != null) {
      map['no_of_dua'] = Variable<int>(noOfDua);
    }
    if (!nullToAbsent || catIcon != null) {
      map['cat_icon'] = Variable<String>(catIcon);
    }
    return map;
  }

  DuaCategoryCompanion toCompanion(bool nullToAbsent) {
    return DuaCategoryCompanion(
      id: Value(id),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
      catNameBn: catNameBn == null && nullToAbsent
          ? const Value.absent()
          : Value(catNameBn),
      catNameEn: catNameEn == null && nullToAbsent
          ? const Value.absent()
          : Value(catNameEn),
      noOfSubcat: noOfSubcat == null && nullToAbsent
          ? const Value.absent()
          : Value(noOfSubcat),
      noOfDua: noOfDua == null && nullToAbsent
          ? const Value.absent()
          : Value(noOfDua),
      catIcon: catIcon == null && nullToAbsent
          ? const Value.absent()
          : Value(catIcon),
    );
  }

  factory DuaCategoryDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DuaCategoryDto(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int?>(json['catId']),
      catNameBn: serializer.fromJson<String?>(json['catNameBn']),
      catNameEn: serializer.fromJson<String?>(json['catNameEn']),
      noOfSubcat: serializer.fromJson<int?>(json['noOfSubcat']),
      noOfDua: serializer.fromJson<int?>(json['noOfDua']),
      catIcon: serializer.fromJson<String?>(json['catIcon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int?>(catId),
      'catNameBn': serializer.toJson<String?>(catNameBn),
      'catNameEn': serializer.toJson<String?>(catNameEn),
      'noOfSubcat': serializer.toJson<int?>(noOfSubcat),
      'noOfDua': serializer.toJson<int?>(noOfDua),
      'catIcon': serializer.toJson<String?>(catIcon),
    };
  }

  DuaCategoryDto copyWith(
          {int? id,
          Value<int?> catId = const Value.absent(),
          Value<String?> catNameBn = const Value.absent(),
          Value<String?> catNameEn = const Value.absent(),
          Value<int?> noOfSubcat = const Value.absent(),
          Value<int?> noOfDua = const Value.absent(),
          Value<String?> catIcon = const Value.absent()}) =>
      DuaCategoryDto(
        id: id ?? this.id,
        catId: catId.present ? catId.value : this.catId,
        catNameBn: catNameBn.present ? catNameBn.value : this.catNameBn,
        catNameEn: catNameEn.present ? catNameEn.value : this.catNameEn,
        noOfSubcat: noOfSubcat.present ? noOfSubcat.value : this.noOfSubcat,
        noOfDua: noOfDua.present ? noOfDua.value : this.noOfDua,
        catIcon: catIcon.present ? catIcon.value : this.catIcon,
      );
  @override
  String toString() {
    return (StringBuffer('DuaCategoryDto(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('catNameBn: $catNameBn, ')
          ..write('catNameEn: $catNameEn, ')
          ..write('noOfSubcat: $noOfSubcat, ')
          ..write('noOfDua: $noOfDua, ')
          ..write('catIcon: $catIcon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, catId, catNameBn, catNameEn, noOfSubcat, noOfDua, catIcon);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DuaCategoryDto &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.catNameBn == this.catNameBn &&
          other.catNameEn == this.catNameEn &&
          other.noOfSubcat == this.noOfSubcat &&
          other.noOfDua == this.noOfDua &&
          other.catIcon == this.catIcon);
}

class DuaCategoryCompanion extends UpdateCompanion<DuaCategoryDto> {
  final Value<int> id;
  final Value<int?> catId;
  final Value<String?> catNameBn;
  final Value<String?> catNameEn;
  final Value<int?> noOfSubcat;
  final Value<int?> noOfDua;
  final Value<String?> catIcon;
  const DuaCategoryCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.catNameBn = const Value.absent(),
    this.catNameEn = const Value.absent(),
    this.noOfSubcat = const Value.absent(),
    this.noOfDua = const Value.absent(),
    this.catIcon = const Value.absent(),
  });
  DuaCategoryCompanion.insert({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.catNameBn = const Value.absent(),
    this.catNameEn = const Value.absent(),
    this.noOfSubcat = const Value.absent(),
    this.noOfDua = const Value.absent(),
    this.catIcon = const Value.absent(),
  });
  static Insertable<DuaCategoryDto> custom({
    Expression<int>? id,
    Expression<int>? catId,
    Expression<String>? catNameBn,
    Expression<String>? catNameEn,
    Expression<int>? noOfSubcat,
    Expression<int>? noOfDua,
    Expression<String>? catIcon,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (catNameBn != null) 'cat_name_bn': catNameBn,
      if (catNameEn != null) 'cat_name_en': catNameEn,
      if (noOfSubcat != null) 'no_of_subcat': noOfSubcat,
      if (noOfDua != null) 'no_of_dua': noOfDua,
      if (catIcon != null) 'cat_icon': catIcon,
    });
  }

  DuaCategoryCompanion copyWith(
      {Value<int>? id,
      Value<int?>? catId,
      Value<String?>? catNameBn,
      Value<String?>? catNameEn,
      Value<int?>? noOfSubcat,
      Value<int?>? noOfDua,
      Value<String?>? catIcon}) {
    return DuaCategoryCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      catNameBn: catNameBn ?? this.catNameBn,
      catNameEn: catNameEn ?? this.catNameEn,
      noOfSubcat: noOfSubcat ?? this.noOfSubcat,
      noOfDua: noOfDua ?? this.noOfDua,
      catIcon: catIcon ?? this.catIcon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (catId.present) {
      map['cat_id'] = Variable<int>(catId.value);
    }
    if (catNameBn.present) {
      map['cat_name_bn'] = Variable<String>(catNameBn.value);
    }
    if (catNameEn.present) {
      map['cat_name_en'] = Variable<String>(catNameEn.value);
    }
    if (noOfSubcat.present) {
      map['no_of_subcat'] = Variable<int>(noOfSubcat.value);
    }
    if (noOfDua.present) {
      map['no_of_dua'] = Variable<int>(noOfDua.value);
    }
    if (catIcon.present) {
      map['cat_icon'] = Variable<String>(catIcon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DuaCategoryCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('catNameBn: $catNameBn, ')
          ..write('catNameEn: $catNameEn, ')
          ..write('noOfSubcat: $noOfSubcat, ')
          ..write('noOfDua: $noOfDua, ')
          ..write('catIcon: $catIcon')
          ..write(')'))
        .toString();
  }
}

abstract class _$DuaDatabase extends GeneratedDatabase {
  _$DuaDatabase(QueryExecutor e) : super(e);
  late final $DuaSubcategoryTable duaSubcategory = $DuaSubcategoryTable(this);
  late final $DuaCategoryTable duaCategory = $DuaCategoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [duaSubcategory, duaCategory];
}
