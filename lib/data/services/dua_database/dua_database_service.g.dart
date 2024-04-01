// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_database_service.dart';

// ignore_for_file: type=lint
class $DuaTable extends Dua with TableInfo<$DuaTable, DuaDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DuaTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _duaIdMeta = const VerificationMeta('duaId');
  @override
  late final GeneratedColumn<int> duaId = GeneratedColumn<int>(
      'dua_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _duaNameBnMeta =
      const VerificationMeta('duaNameBn');
  @override
  late final GeneratedColumn<String> duaNameBn = GeneratedColumn<String>(
      'dua_name_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _duaNameEnMeta =
      const VerificationMeta('duaNameEn');
  @override
  late final GeneratedColumn<String> duaNameEn = GeneratedColumn<String>(
      'dua_name_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _topBnMeta = const VerificationMeta('topBn');
  @override
  late final GeneratedColumn<String> topBn = GeneratedColumn<String>(
      'top_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _topEnMeta = const VerificationMeta('topEn');
  @override
  late final GeneratedColumn<String> topEn = GeneratedColumn<String>(
      'top_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _duaArabicMeta =
      const VerificationMeta('duaArabic');
  @override
  late final GeneratedColumn<String> duaArabic = GeneratedColumn<String>(
      'dua_arabic', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _duaIndopakMeta =
      const VerificationMeta('duaIndopak');
  @override
  late final GeneratedColumn<String> duaIndopak = GeneratedColumn<String>(
      'dua_indopak', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cleanArabicMeta =
      const VerificationMeta('cleanArabic');
  @override
  late final GeneratedColumn<String> cleanArabic = GeneratedColumn<String>(
      'clean_arabic', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _transliterationBnMeta =
      const VerificationMeta('transliterationBn');
  @override
  late final GeneratedColumn<String> transliterationBn =
      GeneratedColumn<String>('transliteration_bn', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _transliterationEnMeta =
      const VerificationMeta('transliterationEn');
  @override
  late final GeneratedColumn<String> transliterationEn =
      GeneratedColumn<String>('transliteration_en', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationBnMeta =
      const VerificationMeta('translationBn');
  @override
  late final GeneratedColumn<String> translationBn = GeneratedColumn<String>(
      'translation_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationEnMeta =
      const VerificationMeta('translationEn');
  @override
  late final GeneratedColumn<String> translationEn = GeneratedColumn<String>(
      'translation_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bottomEnMeta =
      const VerificationMeta('bottomEn');
  @override
  late final GeneratedColumn<String> bottomEn = GeneratedColumn<String>(
      'bottom_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _bottomBnMeta =
      const VerificationMeta('bottomBn');
  @override
  late final GeneratedColumn<String> bottomBn = GeneratedColumn<String>(
      'bottom_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _refferenceBnMeta =
      const VerificationMeta('refferenceBn');
  @override
  late final GeneratedColumn<String> refferenceBn = GeneratedColumn<String>(
      'refference_bn', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _refferenceEnMeta =
      const VerificationMeta('refferenceEn');
  @override
  late final GeneratedColumn<String> refferenceEn = GeneratedColumn<String>(
      'refference_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _audioMeta = const VerificationMeta('audio');
  @override
  late final GeneratedColumn<String> audio = GeneratedColumn<String>(
      'audio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        catId,
        subcatId,
        duaId,
        duaNameBn,
        duaNameEn,
        topBn,
        topEn,
        duaArabic,
        duaIndopak,
        cleanArabic,
        transliterationBn,
        transliterationEn,
        translationBn,
        translationEn,
        bottomEn,
        bottomBn,
        refferenceBn,
        refferenceEn,
        audio
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dua';
  @override
  VerificationContext validateIntegrity(Insertable<DuaDto> instance,
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
    if (data.containsKey('dua_id')) {
      context.handle(
          _duaIdMeta, duaId.isAcceptableOrUnknown(data['dua_id']!, _duaIdMeta));
    }
    if (data.containsKey('dua_name_bn')) {
      context.handle(
          _duaNameBnMeta,
          duaNameBn.isAcceptableOrUnknown(
              data['dua_name_bn']!, _duaNameBnMeta));
    }
    if (data.containsKey('dua_name_en')) {
      context.handle(
          _duaNameEnMeta,
          duaNameEn.isAcceptableOrUnknown(
              data['dua_name_en']!, _duaNameEnMeta));
    }
    if (data.containsKey('top_bn')) {
      context.handle(
          _topBnMeta, topBn.isAcceptableOrUnknown(data['top_bn']!, _topBnMeta));
    }
    if (data.containsKey('top_en')) {
      context.handle(
          _topEnMeta, topEn.isAcceptableOrUnknown(data['top_en']!, _topEnMeta));
    }
    if (data.containsKey('dua_arabic')) {
      context.handle(_duaArabicMeta,
          duaArabic.isAcceptableOrUnknown(data['dua_arabic']!, _duaArabicMeta));
    }
    if (data.containsKey('dua_indopak')) {
      context.handle(
          _duaIndopakMeta,
          duaIndopak.isAcceptableOrUnknown(
              data['dua_indopak']!, _duaIndopakMeta));
    }
    if (data.containsKey('clean_arabic')) {
      context.handle(
          _cleanArabicMeta,
          cleanArabic.isAcceptableOrUnknown(
              data['clean_arabic']!, _cleanArabicMeta));
    }
    if (data.containsKey('transliteration_bn')) {
      context.handle(
          _transliterationBnMeta,
          transliterationBn.isAcceptableOrUnknown(
              data['transliteration_bn']!, _transliterationBnMeta));
    }
    if (data.containsKey('transliteration_en')) {
      context.handle(
          _transliterationEnMeta,
          transliterationEn.isAcceptableOrUnknown(
              data['transliteration_en']!, _transliterationEnMeta));
    }
    if (data.containsKey('translation_bn')) {
      context.handle(
          _translationBnMeta,
          translationBn.isAcceptableOrUnknown(
              data['translation_bn']!, _translationBnMeta));
    }
    if (data.containsKey('translation_en')) {
      context.handle(
          _translationEnMeta,
          translationEn.isAcceptableOrUnknown(
              data['translation_en']!, _translationEnMeta));
    }
    if (data.containsKey('bottom_en')) {
      context.handle(_bottomEnMeta,
          bottomEn.isAcceptableOrUnknown(data['bottom_en']!, _bottomEnMeta));
    }
    if (data.containsKey('bottom_bn')) {
      context.handle(_bottomBnMeta,
          bottomBn.isAcceptableOrUnknown(data['bottom_bn']!, _bottomBnMeta));
    }
    if (data.containsKey('refference_bn')) {
      context.handle(
          _refferenceBnMeta,
          refferenceBn.isAcceptableOrUnknown(
              data['refference_bn']!, _refferenceBnMeta));
    }
    if (data.containsKey('refference_en')) {
      context.handle(
          _refferenceEnMeta,
          refferenceEn.isAcceptableOrUnknown(
              data['refference_en']!, _refferenceEnMeta));
    }
    if (data.containsKey('audio')) {
      context.handle(
          _audioMeta, audio.isAcceptableOrUnknown(data['audio']!, _audioMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DuaDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DuaDto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id']),
      subcatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subcat_id']),
      duaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dua_id']),
      duaNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_name_bn']),
      duaNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_name_en']),
      topBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}top_bn']),
      topEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}top_en']),
      duaArabic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_arabic']),
      duaIndopak: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_indopak']),
      cleanArabic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}clean_arabic']),
      transliterationBn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}transliteration_bn']),
      transliterationEn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}transliteration_en']),
      translationBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translation_bn']),
      translationEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translation_en']),
      bottomEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bottom_en']),
      bottomBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bottom_bn']),
      refferenceBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refference_bn']),
      refferenceEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refference_en']),
      audio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}audio']),
    );
  }

  @override
  $DuaTable createAlias(String alias) {
    return $DuaTable(attachedDatabase, alias);
  }
}

class DuaDto extends DataClass implements Insertable<DuaDto> {
  final int id;
  final int? catId;
  final int? subcatId;
  final int? duaId;
  final String? duaNameBn;
  final String? duaNameEn;
  final String? topBn;
  final String? topEn;
  final String? duaArabic;
  final String? duaIndopak;
  final String? cleanArabic;
  final String? transliterationBn;
  final String? transliterationEn;
  final String? translationBn;
  final String? translationEn;
  final String? bottomEn;
  final String? bottomBn;
  final String? refferenceBn;
  final String? refferenceEn;
  final String? audio;
  const DuaDto(
      {required this.id,
      this.catId,
      this.subcatId,
      this.duaId,
      this.duaNameBn,
      this.duaNameEn,
      this.topBn,
      this.topEn,
      this.duaArabic,
      this.duaIndopak,
      this.cleanArabic,
      this.transliterationBn,
      this.transliterationEn,
      this.translationBn,
      this.translationEn,
      this.bottomEn,
      this.bottomBn,
      this.refferenceBn,
      this.refferenceEn,
      this.audio});
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
    if (!nullToAbsent || duaId != null) {
      map['dua_id'] = Variable<int>(duaId);
    }
    if (!nullToAbsent || duaNameBn != null) {
      map['dua_name_bn'] = Variable<String>(duaNameBn);
    }
    if (!nullToAbsent || duaNameEn != null) {
      map['dua_name_en'] = Variable<String>(duaNameEn);
    }
    if (!nullToAbsent || topBn != null) {
      map['top_bn'] = Variable<String>(topBn);
    }
    if (!nullToAbsent || topEn != null) {
      map['top_en'] = Variable<String>(topEn);
    }
    if (!nullToAbsent || duaArabic != null) {
      map['dua_arabic'] = Variable<String>(duaArabic);
    }
    if (!nullToAbsent || duaIndopak != null) {
      map['dua_indopak'] = Variable<String>(duaIndopak);
    }
    if (!nullToAbsent || cleanArabic != null) {
      map['clean_arabic'] = Variable<String>(cleanArabic);
    }
    if (!nullToAbsent || transliterationBn != null) {
      map['transliteration_bn'] = Variable<String>(transliterationBn);
    }
    if (!nullToAbsent || transliterationEn != null) {
      map['transliteration_en'] = Variable<String>(transliterationEn);
    }
    if (!nullToAbsent || translationBn != null) {
      map['translation_bn'] = Variable<String>(translationBn);
    }
    if (!nullToAbsent || translationEn != null) {
      map['translation_en'] = Variable<String>(translationEn);
    }
    if (!nullToAbsent || bottomEn != null) {
      map['bottom_en'] = Variable<String>(bottomEn);
    }
    if (!nullToAbsent || bottomBn != null) {
      map['bottom_bn'] = Variable<String>(bottomBn);
    }
    if (!nullToAbsent || refferenceBn != null) {
      map['refference_bn'] = Variable<String>(refferenceBn);
    }
    if (!nullToAbsent || refferenceEn != null) {
      map['refference_en'] = Variable<String>(refferenceEn);
    }
    if (!nullToAbsent || audio != null) {
      map['audio'] = Variable<String>(audio);
    }
    return map;
  }

  DuaCompanion toCompanion(bool nullToAbsent) {
    return DuaCompanion(
      id: Value(id),
      catId:
          catId == null && nullToAbsent ? const Value.absent() : Value(catId),
      subcatId: subcatId == null && nullToAbsent
          ? const Value.absent()
          : Value(subcatId),
      duaId:
          duaId == null && nullToAbsent ? const Value.absent() : Value(duaId),
      duaNameBn: duaNameBn == null && nullToAbsent
          ? const Value.absent()
          : Value(duaNameBn),
      duaNameEn: duaNameEn == null && nullToAbsent
          ? const Value.absent()
          : Value(duaNameEn),
      topBn:
          topBn == null && nullToAbsent ? const Value.absent() : Value(topBn),
      topEn:
          topEn == null && nullToAbsent ? const Value.absent() : Value(topEn),
      duaArabic: duaArabic == null && nullToAbsent
          ? const Value.absent()
          : Value(duaArabic),
      duaIndopak: duaIndopak == null && nullToAbsent
          ? const Value.absent()
          : Value(duaIndopak),
      cleanArabic: cleanArabic == null && nullToAbsent
          ? const Value.absent()
          : Value(cleanArabic),
      transliterationBn: transliterationBn == null && nullToAbsent
          ? const Value.absent()
          : Value(transliterationBn),
      transliterationEn: transliterationEn == null && nullToAbsent
          ? const Value.absent()
          : Value(transliterationEn),
      translationBn: translationBn == null && nullToAbsent
          ? const Value.absent()
          : Value(translationBn),
      translationEn: translationEn == null && nullToAbsent
          ? const Value.absent()
          : Value(translationEn),
      bottomEn: bottomEn == null && nullToAbsent
          ? const Value.absent()
          : Value(bottomEn),
      bottomBn: bottomBn == null && nullToAbsent
          ? const Value.absent()
          : Value(bottomBn),
      refferenceBn: refferenceBn == null && nullToAbsent
          ? const Value.absent()
          : Value(refferenceBn),
      refferenceEn: refferenceEn == null && nullToAbsent
          ? const Value.absent()
          : Value(refferenceEn),
      audio:
          audio == null && nullToAbsent ? const Value.absent() : Value(audio),
    );
  }

  factory DuaDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DuaDto(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int?>(json['catId']),
      subcatId: serializer.fromJson<int?>(json['subcatId']),
      duaId: serializer.fromJson<int?>(json['duaId']),
      duaNameBn: serializer.fromJson<String?>(json['duaNameBn']),
      duaNameEn: serializer.fromJson<String?>(json['duaNameEn']),
      topBn: serializer.fromJson<String?>(json['topBn']),
      topEn: serializer.fromJson<String?>(json['topEn']),
      duaArabic: serializer.fromJson<String?>(json['duaArabic']),
      duaIndopak: serializer.fromJson<String?>(json['duaIndopak']),
      cleanArabic: serializer.fromJson<String?>(json['cleanArabic']),
      transliterationBn:
          serializer.fromJson<String?>(json['transliterationBn']),
      transliterationEn:
          serializer.fromJson<String?>(json['transliterationEn']),
      translationBn: serializer.fromJson<String?>(json['translationBn']),
      translationEn: serializer.fromJson<String?>(json['translationEn']),
      bottomEn: serializer.fromJson<String?>(json['bottomEn']),
      bottomBn: serializer.fromJson<String?>(json['bottomBn']),
      refferenceBn: serializer.fromJson<String?>(json['refferenceBn']),
      refferenceEn: serializer.fromJson<String?>(json['refferenceEn']),
      audio: serializer.fromJson<String?>(json['audio']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int?>(catId),
      'subcatId': serializer.toJson<int?>(subcatId),
      'duaId': serializer.toJson<int?>(duaId),
      'duaNameBn': serializer.toJson<String?>(duaNameBn),
      'duaNameEn': serializer.toJson<String?>(duaNameEn),
      'topBn': serializer.toJson<String?>(topBn),
      'topEn': serializer.toJson<String?>(topEn),
      'duaArabic': serializer.toJson<String?>(duaArabic),
      'duaIndopak': serializer.toJson<String?>(duaIndopak),
      'cleanArabic': serializer.toJson<String?>(cleanArabic),
      'transliterationBn': serializer.toJson<String?>(transliterationBn),
      'transliterationEn': serializer.toJson<String?>(transliterationEn),
      'translationBn': serializer.toJson<String?>(translationBn),
      'translationEn': serializer.toJson<String?>(translationEn),
      'bottomEn': serializer.toJson<String?>(bottomEn),
      'bottomBn': serializer.toJson<String?>(bottomBn),
      'refferenceBn': serializer.toJson<String?>(refferenceBn),
      'refferenceEn': serializer.toJson<String?>(refferenceEn),
      'audio': serializer.toJson<String?>(audio),
    };
  }

  DuaDto copyWith(
          {int? id,
          Value<int?> catId = const Value.absent(),
          Value<int?> subcatId = const Value.absent(),
          Value<int?> duaId = const Value.absent(),
          Value<String?> duaNameBn = const Value.absent(),
          Value<String?> duaNameEn = const Value.absent(),
          Value<String?> topBn = const Value.absent(),
          Value<String?> topEn = const Value.absent(),
          Value<String?> duaArabic = const Value.absent(),
          Value<String?> duaIndopak = const Value.absent(),
          Value<String?> cleanArabic = const Value.absent(),
          Value<String?> transliterationBn = const Value.absent(),
          Value<String?> transliterationEn = const Value.absent(),
          Value<String?> translationBn = const Value.absent(),
          Value<String?> translationEn = const Value.absent(),
          Value<String?> bottomEn = const Value.absent(),
          Value<String?> bottomBn = const Value.absent(),
          Value<String?> refferenceBn = const Value.absent(),
          Value<String?> refferenceEn = const Value.absent(),
          Value<String?> audio = const Value.absent()}) =>
      DuaDto(
        id: id ?? this.id,
        catId: catId.present ? catId.value : this.catId,
        subcatId: subcatId.present ? subcatId.value : this.subcatId,
        duaId: duaId.present ? duaId.value : this.duaId,
        duaNameBn: duaNameBn.present ? duaNameBn.value : this.duaNameBn,
        duaNameEn: duaNameEn.present ? duaNameEn.value : this.duaNameEn,
        topBn: topBn.present ? topBn.value : this.topBn,
        topEn: topEn.present ? topEn.value : this.topEn,
        duaArabic: duaArabic.present ? duaArabic.value : this.duaArabic,
        duaIndopak: duaIndopak.present ? duaIndopak.value : this.duaIndopak,
        cleanArabic: cleanArabic.present ? cleanArabic.value : this.cleanArabic,
        transliterationBn: transliterationBn.present
            ? transliterationBn.value
            : this.transliterationBn,
        transliterationEn: transliterationEn.present
            ? transliterationEn.value
            : this.transliterationEn,
        translationBn:
            translationBn.present ? translationBn.value : this.translationBn,
        translationEn:
            translationEn.present ? translationEn.value : this.translationEn,
        bottomEn: bottomEn.present ? bottomEn.value : this.bottomEn,
        bottomBn: bottomBn.present ? bottomBn.value : this.bottomBn,
        refferenceBn:
            refferenceBn.present ? refferenceBn.value : this.refferenceBn,
        refferenceEn:
            refferenceEn.present ? refferenceEn.value : this.refferenceEn,
        audio: audio.present ? audio.value : this.audio,
      );
  @override
  String toString() {
    return (StringBuffer('DuaDto(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('duaId: $duaId, ')
          ..write('duaNameBn: $duaNameBn, ')
          ..write('duaNameEn: $duaNameEn, ')
          ..write('topBn: $topBn, ')
          ..write('topEn: $topEn, ')
          ..write('duaArabic: $duaArabic, ')
          ..write('duaIndopak: $duaIndopak, ')
          ..write('cleanArabic: $cleanArabic, ')
          ..write('transliterationBn: $transliterationBn, ')
          ..write('transliterationEn: $transliterationEn, ')
          ..write('translationBn: $translationBn, ')
          ..write('translationEn: $translationEn, ')
          ..write('bottomEn: $bottomEn, ')
          ..write('bottomBn: $bottomBn, ')
          ..write('refferenceBn: $refferenceBn, ')
          ..write('refferenceEn: $refferenceEn, ')
          ..write('audio: $audio')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      catId,
      subcatId,
      duaId,
      duaNameBn,
      duaNameEn,
      topBn,
      topEn,
      duaArabic,
      duaIndopak,
      cleanArabic,
      transliterationBn,
      transliterationEn,
      translationBn,
      translationEn,
      bottomEn,
      bottomBn,
      refferenceBn,
      refferenceEn,
      audio);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DuaDto &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.subcatId == this.subcatId &&
          other.duaId == this.duaId &&
          other.duaNameBn == this.duaNameBn &&
          other.duaNameEn == this.duaNameEn &&
          other.topBn == this.topBn &&
          other.topEn == this.topEn &&
          other.duaArabic == this.duaArabic &&
          other.duaIndopak == this.duaIndopak &&
          other.cleanArabic == this.cleanArabic &&
          other.transliterationBn == this.transliterationBn &&
          other.transliterationEn == this.transliterationEn &&
          other.translationBn == this.translationBn &&
          other.translationEn == this.translationEn &&
          other.bottomEn == this.bottomEn &&
          other.bottomBn == this.bottomBn &&
          other.refferenceBn == this.refferenceBn &&
          other.refferenceEn == this.refferenceEn &&
          other.audio == this.audio);
}

class DuaCompanion extends UpdateCompanion<DuaDto> {
  final Value<int> id;
  final Value<int?> catId;
  final Value<int?> subcatId;
  final Value<int?> duaId;
  final Value<String?> duaNameBn;
  final Value<String?> duaNameEn;
  final Value<String?> topBn;
  final Value<String?> topEn;
  final Value<String?> duaArabic;
  final Value<String?> duaIndopak;
  final Value<String?> cleanArabic;
  final Value<String?> transliterationBn;
  final Value<String?> transliterationEn;
  final Value<String?> translationBn;
  final Value<String?> translationEn;
  final Value<String?> bottomEn;
  final Value<String?> bottomBn;
  final Value<String?> refferenceBn;
  final Value<String?> refferenceEn;
  final Value<String?> audio;
  const DuaCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.subcatId = const Value.absent(),
    this.duaId = const Value.absent(),
    this.duaNameBn = const Value.absent(),
    this.duaNameEn = const Value.absent(),
    this.topBn = const Value.absent(),
    this.topEn = const Value.absent(),
    this.duaArabic = const Value.absent(),
    this.duaIndopak = const Value.absent(),
    this.cleanArabic = const Value.absent(),
    this.transliterationBn = const Value.absent(),
    this.transliterationEn = const Value.absent(),
    this.translationBn = const Value.absent(),
    this.translationEn = const Value.absent(),
    this.bottomEn = const Value.absent(),
    this.bottomBn = const Value.absent(),
    this.refferenceBn = const Value.absent(),
    this.refferenceEn = const Value.absent(),
    this.audio = const Value.absent(),
  });
  DuaCompanion.insert({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.subcatId = const Value.absent(),
    this.duaId = const Value.absent(),
    this.duaNameBn = const Value.absent(),
    this.duaNameEn = const Value.absent(),
    this.topBn = const Value.absent(),
    this.topEn = const Value.absent(),
    this.duaArabic = const Value.absent(),
    this.duaIndopak = const Value.absent(),
    this.cleanArabic = const Value.absent(),
    this.transliterationBn = const Value.absent(),
    this.transliterationEn = const Value.absent(),
    this.translationBn = const Value.absent(),
    this.translationEn = const Value.absent(),
    this.bottomEn = const Value.absent(),
    this.bottomBn = const Value.absent(),
    this.refferenceBn = const Value.absent(),
    this.refferenceEn = const Value.absent(),
    this.audio = const Value.absent(),
  });
  static Insertable<DuaDto> custom({
    Expression<int>? id,
    Expression<int>? catId,
    Expression<int>? subcatId,
    Expression<int>? duaId,
    Expression<String>? duaNameBn,
    Expression<String>? duaNameEn,
    Expression<String>? topBn,
    Expression<String>? topEn,
    Expression<String>? duaArabic,
    Expression<String>? duaIndopak,
    Expression<String>? cleanArabic,
    Expression<String>? transliterationBn,
    Expression<String>? transliterationEn,
    Expression<String>? translationBn,
    Expression<String>? translationEn,
    Expression<String>? bottomEn,
    Expression<String>? bottomBn,
    Expression<String>? refferenceBn,
    Expression<String>? refferenceEn,
    Expression<String>? audio,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (catId != null) 'cat_id': catId,
      if (subcatId != null) 'subcat_id': subcatId,
      if (duaId != null) 'dua_id': duaId,
      if (duaNameBn != null) 'dua_name_bn': duaNameBn,
      if (duaNameEn != null) 'dua_name_en': duaNameEn,
      if (topBn != null) 'top_bn': topBn,
      if (topEn != null) 'top_en': topEn,
      if (duaArabic != null) 'dua_arabic': duaArabic,
      if (duaIndopak != null) 'dua_indopak': duaIndopak,
      if (cleanArabic != null) 'clean_arabic': cleanArabic,
      if (transliterationBn != null) 'transliteration_bn': transliterationBn,
      if (transliterationEn != null) 'transliteration_en': transliterationEn,
      if (translationBn != null) 'translation_bn': translationBn,
      if (translationEn != null) 'translation_en': translationEn,
      if (bottomEn != null) 'bottom_en': bottomEn,
      if (bottomBn != null) 'bottom_bn': bottomBn,
      if (refferenceBn != null) 'refference_bn': refferenceBn,
      if (refferenceEn != null) 'refference_en': refferenceEn,
      if (audio != null) 'audio': audio,
    });
  }

  DuaCompanion copyWith(
      {Value<int>? id,
      Value<int?>? catId,
      Value<int?>? subcatId,
      Value<int?>? duaId,
      Value<String?>? duaNameBn,
      Value<String?>? duaNameEn,
      Value<String?>? topBn,
      Value<String?>? topEn,
      Value<String?>? duaArabic,
      Value<String?>? duaIndopak,
      Value<String?>? cleanArabic,
      Value<String?>? transliterationBn,
      Value<String?>? transliterationEn,
      Value<String?>? translationBn,
      Value<String?>? translationEn,
      Value<String?>? bottomEn,
      Value<String?>? bottomBn,
      Value<String?>? refferenceBn,
      Value<String?>? refferenceEn,
      Value<String?>? audio}) {
    return DuaCompanion(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      subcatId: subcatId ?? this.subcatId,
      duaId: duaId ?? this.duaId,
      duaNameBn: duaNameBn ?? this.duaNameBn,
      duaNameEn: duaNameEn ?? this.duaNameEn,
      topBn: topBn ?? this.topBn,
      topEn: topEn ?? this.topEn,
      duaArabic: duaArabic ?? this.duaArabic,
      duaIndopak: duaIndopak ?? this.duaIndopak,
      cleanArabic: cleanArabic ?? this.cleanArabic,
      transliterationBn: transliterationBn ?? this.transliterationBn,
      transliterationEn: transliterationEn ?? this.transliterationEn,
      translationBn: translationBn ?? this.translationBn,
      translationEn: translationEn ?? this.translationEn,
      bottomEn: bottomEn ?? this.bottomEn,
      bottomBn: bottomBn ?? this.bottomBn,
      refferenceBn: refferenceBn ?? this.refferenceBn,
      refferenceEn: refferenceEn ?? this.refferenceEn,
      audio: audio ?? this.audio,
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
    if (duaId.present) {
      map['dua_id'] = Variable<int>(duaId.value);
    }
    if (duaNameBn.present) {
      map['dua_name_bn'] = Variable<String>(duaNameBn.value);
    }
    if (duaNameEn.present) {
      map['dua_name_en'] = Variable<String>(duaNameEn.value);
    }
    if (topBn.present) {
      map['top_bn'] = Variable<String>(topBn.value);
    }
    if (topEn.present) {
      map['top_en'] = Variable<String>(topEn.value);
    }
    if (duaArabic.present) {
      map['dua_arabic'] = Variable<String>(duaArabic.value);
    }
    if (duaIndopak.present) {
      map['dua_indopak'] = Variable<String>(duaIndopak.value);
    }
    if (cleanArabic.present) {
      map['clean_arabic'] = Variable<String>(cleanArabic.value);
    }
    if (transliterationBn.present) {
      map['transliteration_bn'] = Variable<String>(transliterationBn.value);
    }
    if (transliterationEn.present) {
      map['transliteration_en'] = Variable<String>(transliterationEn.value);
    }
    if (translationBn.present) {
      map['translation_bn'] = Variable<String>(translationBn.value);
    }
    if (translationEn.present) {
      map['translation_en'] = Variable<String>(translationEn.value);
    }
    if (bottomEn.present) {
      map['bottom_en'] = Variable<String>(bottomEn.value);
    }
    if (bottomBn.present) {
      map['bottom_bn'] = Variable<String>(bottomBn.value);
    }
    if (refferenceBn.present) {
      map['refference_bn'] = Variable<String>(refferenceBn.value);
    }
    if (refferenceEn.present) {
      map['refference_en'] = Variable<String>(refferenceEn.value);
    }
    if (audio.present) {
      map['audio'] = Variable<String>(audio.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DuaCompanion(')
          ..write('id: $id, ')
          ..write('catId: $catId, ')
          ..write('subcatId: $subcatId, ')
          ..write('duaId: $duaId, ')
          ..write('duaNameBn: $duaNameBn, ')
          ..write('duaNameEn: $duaNameEn, ')
          ..write('topBn: $topBn, ')
          ..write('topEn: $topEn, ')
          ..write('duaArabic: $duaArabic, ')
          ..write('duaIndopak: $duaIndopak, ')
          ..write('cleanArabic: $cleanArabic, ')
          ..write('transliterationBn: $transliterationBn, ')
          ..write('transliterationEn: $transliterationEn, ')
          ..write('translationBn: $translationBn, ')
          ..write('translationEn: $translationEn, ')
          ..write('bottomEn: $bottomEn, ')
          ..write('bottomBn: $bottomBn, ')
          ..write('refferenceBn: $refferenceBn, ')
          ..write('refferenceEn: $refferenceEn, ')
          ..write('audio: $audio')
          ..write(')'))
        .toString();
  }
}

class $CategoryTable extends Category
    with TableInfo<$CategoryTable, CategoryDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTable(this.attachedDatabase, [this._alias]);
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
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryDto> instance,
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
  CategoryDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryDto(
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
  $CategoryTable createAlias(String alias) {
    return $CategoryTable(attachedDatabase, alias);
  }
}

class CategoryDto extends DataClass implements Insertable<CategoryDto> {
  final int id;
  final int? catId;
  final String? catNameBn;
  final String? catNameEn;
  final int? noOfSubcat;
  final int? noOfDua;
  final String? catIcon;
  const CategoryDto(
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

  CategoryCompanion toCompanion(bool nullToAbsent) {
    return CategoryCompanion(
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

  factory CategoryDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryDto(
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

  CategoryDto copyWith(
          {int? id,
          Value<int?> catId = const Value.absent(),
          Value<String?> catNameBn = const Value.absent(),
          Value<String?> catNameEn = const Value.absent(),
          Value<int?> noOfSubcat = const Value.absent(),
          Value<int?> noOfDua = const Value.absent(),
          Value<String?> catIcon = const Value.absent()}) =>
      CategoryDto(
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
    return (StringBuffer('CategoryDto(')
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
      (other is CategoryDto &&
          other.id == this.id &&
          other.catId == this.catId &&
          other.catNameBn == this.catNameBn &&
          other.catNameEn == this.catNameEn &&
          other.noOfSubcat == this.noOfSubcat &&
          other.noOfDua == this.noOfDua &&
          other.catIcon == this.catIcon);
}

class CategoryCompanion extends UpdateCompanion<CategoryDto> {
  final Value<int> id;
  final Value<int?> catId;
  final Value<String?> catNameBn;
  final Value<String?> catNameEn;
  final Value<int?> noOfSubcat;
  final Value<int?> noOfDua;
  final Value<String?> catIcon;
  const CategoryCompanion({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.catNameBn = const Value.absent(),
    this.catNameEn = const Value.absent(),
    this.noOfSubcat = const Value.absent(),
    this.noOfDua = const Value.absent(),
    this.catIcon = const Value.absent(),
  });
  CategoryCompanion.insert({
    this.id = const Value.absent(),
    this.catId = const Value.absent(),
    this.catNameBn = const Value.absent(),
    this.catNameEn = const Value.absent(),
    this.noOfSubcat = const Value.absent(),
    this.noOfDua = const Value.absent(),
    this.catIcon = const Value.absent(),
  });
  static Insertable<CategoryDto> custom({
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

  CategoryCompanion copyWith(
      {Value<int>? id,
      Value<int?>? catId,
      Value<String?>? catNameBn,
      Value<String?>? catNameEn,
      Value<int?>? noOfSubcat,
      Value<int?>? noOfDua,
      Value<String?>? catIcon}) {
    return CategoryCompanion(
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
    return (StringBuffer('CategoryCompanion(')
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
  late final $DuaTable dua = $DuaTable(this);
  late final $CategoryTable category = $CategoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dua, category];
}
