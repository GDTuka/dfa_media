part of '../models.dart';

@MappableClass()
class UserModel with UserModelMappable {
  UserModel({
    required this.lockers,
  });
  List<LockerModel> lockers;
}
