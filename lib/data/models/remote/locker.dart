part of '../models.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LockerModel with LockerModelMappable {
  LockerModel({
    required this.code,
    required this.id,
    required this.isLock,
    required this.title,
  });
  int id;
  String code;
  String title;
  bool isLock;
}
