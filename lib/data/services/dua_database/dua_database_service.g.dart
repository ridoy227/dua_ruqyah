// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dua_database_service.dart';

// ignore_for_file: type=lint
class $DuaTableTable extends DuaTable
    with TableInfo<$DuaTableTable, DuaTableDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DuaTableTable(this.attachedDatabase, [this._alias]);
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
      'cat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _subcatIdMeta =
      const VerificationMeta('subcatId');
  @override
  late final GeneratedColumn<int> subcatId = GeneratedColumn<int>(
      'subcat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _duaIdMeta = const VerificationMeta('duaId');
  @override
  late final GeneratedColumn<int> duaId = GeneratedColumn<int>(
      'dua_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _duaNameBnMeta =
      const VerificationMeta('duaNameBn');
  @override
  late final GeneratedColumn<String> duaNameBn = GeneratedColumn<String>(
      'dua_name_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _duaNameEnMeta =
      const VerificationMeta('duaNameEn');
  @override
  late final GeneratedColumn<String> duaNameEn = GeneratedColumn<String>(
      'dua_name_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _topBnMeta = const VerificationMeta('topBn');
  @override
  late final GeneratedColumn<String> topBn = GeneratedColumn<String>(
      'top_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _topEnMeta = const VerificationMeta('topEn');
  @override
  late final GeneratedColumn<String> topEn = GeneratedColumn<String>(
      'top_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _duaArabicMeta =
      const VerificationMeta('duaArabic');
  @override
  late final GeneratedColumn<String> duaArabic = GeneratedColumn<String>(
      'dua_arabic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _duaIndopakMeta =
      const VerificationMeta('duaIndopak');
  @override
  late final GeneratedColumn<String> duaIndopak = GeneratedColumn<String>(
      'dua_indopak', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cleanArabicMeta =
      const VerificationMeta('cleanArabic');
  @override
  late final GeneratedColumn<String> cleanArabic = GeneratedColumn<String>(
      'clean_arabic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transliterationBnMeta =
      const VerificationMeta('transliterationBn');
  @override
  late final GeneratedColumn<String> transliterationBn =
      GeneratedColumn<String>('transliteration_bn', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _transliterationEnMeta =
      const VerificationMeta('transliterationEn');
  @override
  late final GeneratedColumn<String> transliterationEn =
      GeneratedColumn<String>('transliteration_en', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _translationBnMeta =
      const VerificationMeta('translationBn');
  @override
  late final GeneratedColumn<String> translationBn = GeneratedColumn<String>(
      'translation_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _translationEnMeta =
      const VerificationMeta('translationEn');
  @override
  late final GeneratedColumn<String> translationEn = GeneratedColumn<String>(
      'translation_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bottomEnMeta =
      const VerificationMeta('bottomEn');
  @override
  late final GeneratedColumn<String> bottomEn = GeneratedColumn<String>(
      'bottom_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bottomBnMeta =
      const VerificationMeta('bottomBn');
  @override
  late final GeneratedColumn<String> bottomBn = GeneratedColumn<String>(
      'bottom_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _refferenceBnMeta =
      const VerificationMeta('refferenceBn');
  @override
  late final GeneratedColumn<String> refferenceBn = GeneratedColumn<String>(
      'refference_bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _refferenceEnMeta =
      const VerificationMeta('refferenceEn');
  @override
  late final GeneratedColumn<String> refferenceEn = GeneratedColumn<String>(
      'refference_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _audioMeta = const VerificationMeta('audio');
  @override
  late final GeneratedColumn<String> audio = GeneratedColumn<String>(
      'audio', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const String $name = 'dua_table';
  @override
  VerificationContext validateIntegrity(Insertable<DuaTableDto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cat_id')) {
      context.handle(
          _catIdMeta, catId.isAcceptableOrUnknown(data['cat_id']!, _catIdMeta));
    } else if (isInserting) {
      context.missing(_catIdMeta);
    }
    if (data.containsKey('subcat_id')) {
      context.handle(_subcatIdMeta,
          subcatId.isAcceptableOrUnknown(data['subcat_id']!, _subcatIdMeta));
    } else if (isInserting) {
      context.missing(_subcatIdMeta);
    }
    if (data.containsKey('dua_id')) {
      context.handle(
          _duaIdMeta, duaId.isAcceptableOrUnknown(data['dua_id']!, _duaIdMeta));
    } else if (isInserting) {
      context.missing(_duaIdMeta);
    }
    if (data.containsKey('dua_name_bn')) {
      context.handle(
          _duaNameBnMeta,
          duaNameBn.isAcceptableOrUnknown(
              data['dua_name_bn']!, _duaNameBnMeta));
    } else if (isInserting) {
      context.missing(_duaNameBnMeta);
    }
    if (data.containsKey('dua_name_en')) {
      context.handle(
          _duaNameEnMeta,
          duaNameEn.isAcceptableOrUnknown(
              data['dua_name_en']!, _duaNameEnMeta));
    } else if (isInserting) {
      context.missing(_duaNameEnMeta);
    }
    if (data.containsKey('top_bn')) {
      context.handle(
          _topBnMeta, topBn.isAcceptableOrUnknown(data['top_bn']!, _topBnMeta));
    } else if (isInserting) {
      context.missing(_topBnMeta);
    }
    if (data.containsKey('top_en')) {
      context.handle(
          _topEnMeta, topEn.isAcceptableOrUnknown(data['top_en']!, _topEnMeta));
    } else if (isInserting) {
      context.missing(_topEnMeta);
    }
    if (data.containsKey('dua_arabic')) {
      context.handle(_duaArabicMeta,
          duaArabic.isAcceptableOrUnknown(data['dua_arabic']!, _duaArabicMeta));
    } else if (isInserting) {
      context.missing(_duaArabicMeta);
    }
    if (data.containsKey('dua_indopak')) {
      context.handle(
          _duaIndopakMeta,
          duaIndopak.isAcceptableOrUnknown(
              data['dua_indopak']!, _duaIndopakMeta));
    } else if (isInserting) {
      context.missing(_duaIndopakMeta);
    }
    if (data.containsKey('clean_arabic')) {
      context.handle(
          _cleanArabicMeta,
          cleanArabic.isAcceptableOrUnknown(
              data['clean_arabic']!, _cleanArabicMeta));
    } else if (isInserting) {
      context.missing(_cleanArabicMeta);
    }
    if (data.containsKey('transliteration_bn')) {
      context.handle(
          _transliterationBnMeta,
          transliterationBn.isAcceptableOrUnknown(
              data['transliteration_bn']!, _transliterationBnMeta));
    } else if (isInserting) {
      context.missing(_transliterationBnMeta);
    }
    if (data.containsKey('transliteration_en')) {
      context.handle(
          _transliterationEnMeta,
          transliterationEn.isAcceptableOrUnknown(
              data['transliteration_en']!, _transliterationEnMeta));
    } else if (isInserting) {
      context.missing(_transliterationEnMeta);
    }
    if (data.containsKey('translation_bn')) {
      context.handle(
          _translationBnMeta,
          translationBn.isAcceptableOrUnknown(
              data['translation_bn']!, _translationBnMeta));
    } else if (isInserting) {
      context.missing(_translationBnMeta);
    }
    if (data.containsKey('translation_en')) {
      context.handle(
          _translationEnMeta,
          translationEn.isAcceptableOrUnknown(
              data['translation_en']!, _translationEnMeta));
    } else if (isInserting) {
      context.missing(_translationEnMeta);
    }
    if (data.containsKey('bottom_en')) {
      context.handle(_bottomEnMeta,
          bottomEn.isAcceptableOrUnknown(data['bottom_en']!, _bottomEnMeta));
    } else if (isInserting) {
      context.missing(_bottomEnMeta);
    }
    if (data.containsKey('bottom_bn')) {
      context.handle(_bottomBnMeta,
          bottomBn.isAcceptableOrUnknown(data['bottom_bn']!, _bottomBnMeta));
    } else if (isInserting) {
      context.missing(_bottomBnMeta);
    }
    if (data.containsKey('refference_bn')) {
      context.handle(
          _refferenceBnMeta,
          refferenceBn.isAcceptableOrUnknown(
              data['refference_bn']!, _refferenceBnMeta));
    } else if (isInserting) {
      context.missing(_refferenceBnMeta);
    }
    if (data.containsKey('refference_en')) {
      context.handle(
          _refferenceEnMeta,
          refferenceEn.isAcceptableOrUnknown(
              data['refference_en']!, _refferenceEnMeta));
    } else if (isInserting) {
      context.missing(_refferenceEnMeta);
    }
    if (data.containsKey('audio')) {
      context.handle(
          _audioMeta, audio.isAcceptableOrUnknown(data['audio']!, _audioMeta));
    } else if (isInserting) {
      context.missing(_audioMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DuaTableDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DuaTableDto(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      catId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cat_id'])!,
      subcatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}subcat_id'])!,
      duaId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dua_id'])!,
      duaNameBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_name_bn'])!,
      duaNameEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_name_en'])!,
      topBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}top_bn'])!,
      topEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}top_en'])!,
      duaArabic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_arabic'])!,
      duaIndopak: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dua_indopak'])!,
      cleanArabic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}clean_arabic'])!,
      transliterationBn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}transliteration_bn'])!,
      transliterationEn: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}transliteration_en'])!,
      translationBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translation_bn'])!,
      translationEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translation_en'])!,
      bottomEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bottom_en'])!,
      bottomBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bottom_bn'])!,
      refferenceBn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refference_bn'])!,
      refferenceEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}refference_en'])!,
      audio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}audio'])!,
    );
  }

  @override
  $DuaTableTable createAlias(String alias) {
    return $DuaTableTable(attachedDatabase, alias);
  }
}

class DuaTableDto extends DataClass implements Insertable<DuaTableDto> {
  final int id;
  final int catId;
  final int subcatId;
  final int duaId;
  final String duaNameBn;
  final String duaNameEn;
  final String topBn;
  final String topEn;
  final String duaArabic;
  final String duaIndopak;
  final String cleanArabic;
  final String transliterationBn;
  final String transliterationEn;
  final String translationBn;
  final String translationEn;
  final String bottomEn;
  final String bottomBn;
  final String refferenceBn;
  final String refferenceEn;
  final String audio;
  const DuaTableDto(
      {required this.id,
      required this.catId,
      required this.subcatId,
      required this.duaId,
      required this.duaNameBn,
      required this.duaNameEn,
      required this.topBn,
      required this.topEn,
      required this.duaArabic,
      required this.duaIndopak,
      required this.cleanArabic,
      required this.transliterationBn,
      required this.transliterationEn,
      required this.translationBn,
      required this.translationEn,
      required this.bottomEn,
      required this.bottomBn,
      required this.refferenceBn,
      required this.refferenceEn,
      required this.audio});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cat_id'] = Variable<int>(catId);
    map['subcat_id'] = Variable<int>(subcatId);
    map['dua_id'] = Variable<int>(duaId);
    map['dua_name_bn'] = Variable<String>(duaNameBn);
    map['dua_name_en'] = Variable<String>(duaNameEn);
    map['top_bn'] = Variable<String>(topBn);
    map['top_en'] = Variable<String>(topEn);
    map['dua_arabic'] = Variable<String>(duaArabic);
    map['dua_indopak'] = Variable<String>(duaIndopak);
    map['clean_arabic'] = Variable<String>(cleanArabic);
    map['transliteration_bn'] = Variable<String>(transliterationBn);
    map['transliteration_en'] = Variable<String>(transliterationEn);
    map['translation_bn'] = Variable<String>(translationBn);
    map['translation_en'] = Variable<String>(translationEn);
    map['bottom_en'] = Variable<String>(bottomEn);
    map['bottom_bn'] = Variable<String>(bottomBn);
    map['refference_bn'] = Variable<String>(refferenceBn);
    map['refference_en'] = Variable<String>(refferenceEn);
    map['audio'] = Variable<String>(audio);
    return map;
  }

  DuaTableCompanion toCompanion(bool nullToAbsent) {
    return DuaTableCompanion(
      id: Value(id),
      catId: Value(catId),
      subcatId: Value(subcatId),
      duaId: Value(duaId),
      duaNameBn: Value(duaNameBn),
      duaNameEn: Value(duaNameEn),
      topBn: Value(topBn),
      topEn: Value(topEn),
      duaArabic: Value(duaArabic),
      duaIndopak: Value(duaIndopak),
      cleanArabic: Value(cleanArabic),
      transliterationBn: Value(transliterationBn),
      transliterationEn: Value(transliterationEn),
      translationBn: Value(translationBn),
      translationEn: Value(translationEn),
      bottomEn: Value(bottomEn),
      bottomBn: Value(bottomBn),
      refferenceBn: Value(refferenceBn),
      refferenceEn: Value(refferenceEn),
      audio: Value(audio),
    );
  }

  factory DuaTableDto.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DuaTableDto(
      id: serializer.fromJson<int>(json['id']),
      catId: serializer.fromJson<int>(json['catId']),
      subcatId: serializer.fromJson<int>(json['subcatId']),
      duaId: serializer.fromJson<int>(json['duaId']),
      duaNameBn: serializer.fromJson<String>(json['duaNameBn']),
      duaNameEn: serializer.fromJson<String>(json['duaNameEn']),
      topBn: serializer.fromJson<String>(json['topBn']),
      topEn: serializer.fromJson<String>(json['topEn']),
      duaArabic: serializer.fromJson<String>(json['duaArabic']),
      duaIndopak: serializer.fromJson<String>(json['duaIndopak']),
      cleanArabic: serializer.fromJson<String>(json['cleanArabic']),
      transliterationBn: serializer.fromJson<String>(json['transliterationBn']),
      transliterationEn: serializer.fromJson<String>(json['transliterationEn']),
      translationBn: serializer.fromJson<String>(json['translationBn']),
      translationEn: serializer.fromJson<String>(json['translationEn']),
      bottomEn: serializer.fromJson<String>(json['bottomEn']),
      bottomBn: serializer.fromJson<String>(json['bottomBn']),
      refferenceBn: serializer.fromJson<String>(json['refferenceBn']),
      refferenceEn: serializer.fromJson<String>(json['refferenceEn']),
      audio: serializer.fromJson<String>(json['audio']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'catId': serializer.toJson<int>(catId),
      'subcatId': serializer.toJson<int>(subcatId),
      'duaId': serializer.toJson<int>(duaId),
      'duaNameBn': serializer.toJson<String>(duaNameBn),
      'duaNameEn': serializer.toJson<String>(duaNameEn),
      'topBn': serializer.toJson<String>(topBn),
      'topEn': serializer.toJson<String>(topEn),
      'duaArabic': serializer.toJson<String>(duaArabic),
      'duaIndopak': serializer.toJson<String>(duaIndopak),
      'cleanArabic': serializer.toJson<String>(cleanArabic),
      'transliterationBn': serializer.toJson<String>(transliterationBn),
      'transliterationEn': serializer.toJson<String>(transliterationEn),
      'translationBn': serializer.toJson<String>(translationBn),
      'translationEn': serializer.toJson<String>(translationEn),
      'bottomEn': serializer.toJson<String>(bottomEn),
      'bottomBn': serializer.toJson<String>(bottomBn),
      'refferenceBn': serializer.toJson<String>(refferenceBn),
      'refferenceEn': serializer.toJson<String>(refferenceEn),
      'audio': serializer.toJson<String>(audio),
    };
  }

  DuaTableDto copyWith(
          {int? id,
          int? catId,
          int? subcatId,
          int? duaId,
          String? duaNameBn,
          String? duaNameEn,
          String? topBn,
          String? topEn,
          String? duaArabic,
          String? duaIndopak,
          String? cleanArabic,
          String? transliterationBn,
          String? transliterationEn,
          String? translationBn,
          String? translationEn,
          String? bottomEn,
          String? bottomBn,
          String? refferenceBn,
          String? refferenceEn,
          String? audio}) =>
      DuaTableDto(
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
  @override
  String toString() {
    return (StringBuffer('DuaTableDto(')
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
      (other is DuaTableDto &&
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

class DuaTableCompanion extends UpdateCompanion<DuaTableDto> {
  final Value<int> id;
  final Value<int> catId;
  final Value<int> subcatId;
  final Value<int> duaId;
  final Value<String> duaNameBn;
  final Value<String> duaNameEn;
  final Value<String> topBn;
  final Value<String> topEn;
  final Value<String> duaArabic;
  final Value<String> duaIndopak;
  final Value<String> cleanArabic;
  final Value<String> transliterationBn;
  final Value<String> transliterationEn;
  final Value<String> translationBn;
  final Value<String> translationEn;
  final Value<String> bottomEn;
  final Value<String> bottomBn;
  final Value<String> refferenceBn;
  final Value<String> refferenceEn;
  final Value<String> audio;
  const DuaTableCompanion({
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
  DuaTableCompanion.insert({
    this.id = const Value.absent(),
    required int catId,
    required int subcatId,
    required int duaId,
    required String duaNameBn,
    required String duaNameEn,
    required String topBn,
    required String topEn,
    required String duaArabic,
    required String duaIndopak,
    required String cleanArabic,
    required String transliterationBn,
    required String transliterationEn,
    required String translationBn,
    required String translationEn,
    required String bottomEn,
    required String bottomBn,
    required String refferenceBn,
    required String refferenceEn,
    required String audio,
  })  : catId = Value(catId),
        subcatId = Value(subcatId),
        duaId = Value(duaId),
        duaNameBn = Value(duaNameBn),
        duaNameEn = Value(duaNameEn),
        topBn = Value(topBn),
        topEn = Value(topEn),
        duaArabic = Value(duaArabic),
        duaIndopak = Value(duaIndopak),
        cleanArabic = Value(cleanArabic),
        transliterationBn = Value(transliterationBn),
        transliterationEn = Value(transliterationEn),
        translationBn = Value(translationBn),
        translationEn = Value(translationEn),
        bottomEn = Value(bottomEn),
        bottomBn = Value(bottomBn),
        refferenceBn = Value(refferenceBn),
        refferenceEn = Value(refferenceEn),
        audio = Value(audio);
  static Insertable<DuaTableDto> custom({
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

  DuaTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? catId,
      Value<int>? subcatId,
      Value<int>? duaId,
      Value<String>? duaNameBn,
      Value<String>? duaNameEn,
      Value<String>? topBn,
      Value<String>? topEn,
      Value<String>? duaArabic,
      Value<String>? duaIndopak,
      Value<String>? cleanArabic,
      Value<String>? transliterationBn,
      Value<String>? transliterationEn,
      Value<String>? translationBn,
      Value<String>? translationEn,
      Value<String>? bottomEn,
      Value<String>? bottomBn,
      Value<String>? refferenceBn,
      Value<String>? refferenceEn,
      Value<String>? audio}) {
    return DuaTableCompanion(
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
    return (StringBuffer('DuaTableCompanion(')
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

abstract class _$DuaDatabase extends GeneratedDatabase {
  _$DuaDatabase(QueryExecutor e) : super(e);
  late final $DuaTableTable duaTable = $DuaTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [duaTable];
}
