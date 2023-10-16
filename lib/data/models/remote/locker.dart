part of '../models.dart';

@MappableClass()
class Locker {
  Locker({
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
