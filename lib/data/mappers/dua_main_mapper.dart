import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/data/services/runnig_compute.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';

extension DtoToDuaMainEntityMapper on List<DuaMainDto> {
  Future<List<DuaMainEntity>> toDuaMain() async {
    final List<DuaMainDto> duaMainDtoList = this;
    final List<DuaMainEntity> duaMainEntities =
        await compute(_convertDuaMainDtoToDuaMain, duaMainDtoList);
    return duaMainEntities;
  }
}

List<DuaMainEntity> _convertDuaMainDtoToDuaMain(List<DuaMainDto> duaMainDtoList) =>
    duaMainDtoList.map(_convertDtoToDuaMainEntity).toList();

DuaMainEntity _convertDtoToDuaMainEntity(DuaMainDto duaMain) {
  return DuaMainEntity(
    id: duaMain.id,
    catId: duaMain.catId!,
    subcatId: duaMain.subcatId!,
    duaId: duaMain.duaId!,
    duaNameBn: duaMain.duaNameBn ?? "",
    duaNameEn: duaMain.duaNameEn ?? "",
    topBn: duaMain.topBn ?? "",
    topEn: duaMain.topEn ?? "",
    duaArabic: duaMain.duaArabic ?? "",
    duaIndopak: duaMain.duaIndopak ?? "",
    cleanArabic: duaMain.cleanArabic ?? "",
    transliterationBn: duaMain.transliterationBn ?? "",
    transliterationEn: duaMain.transliterationEn ?? "",
    translationBn: duaMain.translationBn ?? "",
    translationEn: duaMain.translationEn ?? "",
    bottomBn: duaMain.bottomBn ?? "",
    bottomEn: duaMain.bottomEn ?? "",
    referenceBn: duaMain.referenceBn ?? "",
    referenceEn: duaMain.referenceEn ?? "",
    audio: duaMain.audio ?? "",
  );
}
