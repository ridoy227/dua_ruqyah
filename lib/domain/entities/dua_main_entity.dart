import 'package:equatable/equatable.dart';

class DuaMainEntity extends Equatable {
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
  final String bottomBn;
  final String bottomEn;
  final String referenceBn;
  final String referenceEn;
  final String audio;

  const DuaMainEntity({
    required this.id,
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
    required this.bottomBn,
    required this.bottomEn,
    required this.referenceBn,
    required this.referenceEn,
    required this.audio,
  });

  factory DuaMainEntity.empty() {
    return const DuaMainEntity(
      id: -1,
      catId: -1,
      subcatId: -1,
      duaId: -1,
      duaNameBn: '',
      duaNameEn: '',
      topBn: '',
      topEn: '',
      duaArabic: '',
      duaIndopak: '',
      cleanArabic: '',
      transliterationBn: '',
      transliterationEn: '',
      translationBn: '',
      translationEn: '',
      bottomBn: '',
      bottomEn: '',
      referenceBn: '',
      referenceEn: '',
      audio: '',
    );
  }

  @override
  List<Object?> get props => [
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
        bottomBn,
        bottomEn,
        referenceBn,
        referenceEn,
        audio,
      ];

  DuaMainEntity copyWith({
    int? id,
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
    String? bottomBn,
    String? bottomEn,
    String? referenceBn,
    String? referenceEn,
    String? audio,
  }) {
    return DuaMainEntity(
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
      bottomBn: bottomBn ?? this.bottomBn,
      bottomEn: bottomEn ?? this.bottomEn,
      referenceBn: referenceBn ?? this.referenceBn,
      referenceEn: referenceEn ?? this.referenceEn,
      audio: audio ?? this.audio,
    );
  }
}
