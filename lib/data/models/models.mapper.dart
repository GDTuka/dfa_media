// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'models.dart';

class LockerModelMapper extends MapperBase<LockerModel> {
  static MapperContainer container = MapperContainer(
    mappers: {LockerModelMapper()},
  );

  @override
  LockerModelMapperElement createElement(MapperContainer container) {
    return LockerModelMapperElement._(this, container);
  }

  @override
  String get id => 'LockerModel';

  static final fromMap = container.fromMap<LockerModel>;
  static final fromJson = container.fromJson<LockerModel>;
}

class LockerModelMapperElement extends MapperElementBase<LockerModel> {
  LockerModelMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  LockerModel decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  LockerModel fromMap(Map<String, dynamic> map) => LockerModel(
      code: container.$get(map, 'code'),
      id: container.$get(map, 'id'),
      isLock: container.$get(map, 'is_lock'),
      title: container.$get(map, 'title'));

  @override
  Function get encoder => encode;
  dynamic encode(LockerModel v) => toMap(v);
  Map<String, dynamic> toMap(LockerModel l) => {
        'code': container.$enc(l.code, 'code'),
        'id': container.$enc(l.id, 'id'),
        'is_lock': container.$enc(l.isLock, 'isLock'),
        'title': container.$enc(l.title, 'title')
      };

  @override
  String stringify(LockerModel self) =>
      'LockerModel(id: ${container.asString(self.id)}, code: ${container.asString(self.code)}, title: ${container.asString(self.title)}, isLock: ${container.asString(self.isLock)})';
  @override
  int hash(LockerModel self) =>
      container.hash(self.id) ^
      container.hash(self.code) ^
      container.hash(self.title) ^
      container.hash(self.isLock);
  @override
  bool equals(LockerModel self, LockerModel other) =>
      container.isEqual(self.id, other.id) &&
      container.isEqual(self.code, other.code) &&
      container.isEqual(self.title, other.title) &&
      container.isEqual(self.isLock, other.isLock);
}

mixin LockerModelMappable {
  String toJson() => LockerModelMapper.container.toJson(this as LockerModel);
  Map<String, dynamic> toMap() =>
      LockerModelMapper.container.toMap(this as LockerModel);
  LockerModelCopyWith<LockerModel, LockerModel, LockerModel> get copyWith =>
      _LockerModelCopyWithImpl(this as LockerModel, $identity, $identity);
  @override
  String toString() => LockerModelMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          LockerModelMapper.container.isEqual(this, other));
  @override
  int get hashCode => LockerModelMapper.container.hash(this);
}

extension LockerModelValueCopy<$R, $Out extends LockerModel>
    on ObjectCopyWith<$R, LockerModel, $Out> {
  LockerModelCopyWith<$R, LockerModel, $Out> get asLockerModel =>
      base.as((v, t, t2) => _LockerModelCopyWithImpl(v, t, t2));
}

typedef LockerModelCopyWithBound = LockerModel;

abstract class LockerModelCopyWith<$R, $In extends LockerModel,
    $Out extends LockerModel> implements ObjectCopyWith<$R, $In, $Out> {
  LockerModelCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends LockerModel>(
      Then<LockerModel, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? code, int? id, bool? isLock, String? title});
}

class _LockerModelCopyWithImpl<$R, $Out extends LockerModel>
    extends CopyWithBase<$R, LockerModel, $Out>
    implements LockerModelCopyWith<$R, LockerModel, $Out> {
  _LockerModelCopyWithImpl(super.value, super.then, super.then2);
  @override
  LockerModelCopyWith<$R2, LockerModel, $Out2>
      chain<$R2, $Out2 extends LockerModel>(
              Then<LockerModel, $Out2> t, Then<$Out2, $R2> t2) =>
          _LockerModelCopyWithImpl($value, t, t2);

  @override
  $R call({String? code, int? id, bool? isLock, String? title}) =>
      $then(LockerModel(
          code: code ?? $value.code,
          id: id ?? $value.id,
          isLock: isLock ?? $value.isLock,
          title: title ?? $value.title));
}

class UserModelMapper extends MapperBase<UserModel> {
  static MapperContainer container = MapperContainer(
    mappers: {UserModelMapper()},
  )..linkAll({LockerModelMapper.container});

  @override
  UserModelMapperElement createElement(MapperContainer container) {
    return UserModelMapperElement._(this, container);
  }

  @override
  String get id => 'UserModel';

  static final fromMap = container.fromMap<UserModel>;
  static final fromJson = container.fromJson<UserModel>;
}

class UserModelMapperElement extends MapperElementBase<UserModel> {
  UserModelMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  UserModel decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  UserModel fromMap(Map<String, dynamic> map) =>
      UserModel(lockers: container.$get(map, 'lockers'));

  @override
  Function get encoder => encode;
  dynamic encode(UserModel v) => toMap(v);
  Map<String, dynamic> toMap(UserModel u) =>
      {'lockers': container.$enc(u.lockers, 'lockers')};

  @override
  String stringify(UserModel self) =>
      'UserModel(lockers: ${container.asString(self.lockers)})';
  @override
  int hash(UserModel self) => container.hash(self.lockers);
  @override
  bool equals(UserModel self, UserModel other) =>
      container.isEqual(self.lockers, other.lockers);
}

mixin UserModelMappable {
  String toJson() => UserModelMapper.container.toJson(this as UserModel);
  Map<String, dynamic> toMap() =>
      UserModelMapper.container.toMap(this as UserModel);
  UserModelCopyWith<UserModel, UserModel, UserModel> get copyWith =>
      _UserModelCopyWithImpl(this as UserModel, $identity, $identity);
  @override
  String toString() => UserModelMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          UserModelMapper.container.isEqual(this, other));
  @override
  int get hashCode => UserModelMapper.container.hash(this);
}

extension UserModelValueCopy<$R, $Out extends UserModel>
    on ObjectCopyWith<$R, UserModel, $Out> {
  UserModelCopyWith<$R, UserModel, $Out> get asUserModel =>
      base.as((v, t, t2) => _UserModelCopyWithImpl(v, t, t2));
}

typedef UserModelCopyWithBound = UserModel;

abstract class UserModelCopyWith<$R, $In extends UserModel,
    $Out extends UserModel> implements ObjectCopyWith<$R, $In, $Out> {
  UserModelCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends UserModel>(
      Then<UserModel, $Out2> t, Then<$Out2, $R2> t2);
  ListCopyWith<$R, LockerModel,
      LockerModelCopyWith<$R, LockerModel, LockerModel>> get lockers;
  $R call({List<LockerModel>? lockers});
}

class _UserModelCopyWithImpl<$R, $Out extends UserModel>
    extends CopyWithBase<$R, UserModel, $Out>
    implements UserModelCopyWith<$R, UserModel, $Out> {
  _UserModelCopyWithImpl(super.value, super.then, super.then2);
  @override
  UserModelCopyWith<$R2, UserModel, $Out2> chain<$R2, $Out2 extends UserModel>(
          Then<UserModel, $Out2> t, Then<$Out2, $R2> t2) =>
      _UserModelCopyWithImpl($value, t, t2);

  @override
  ListCopyWith<$R, LockerModel,
          LockerModelCopyWith<$R, LockerModel, LockerModel>>
      get lockers => ListCopyWith(
          $value.lockers,
          (v, t) => v.copyWith.chain<$R, LockerModel>($identity, t),
          (v) => call(lockers: v));
  @override
  $R call({List<LockerModel>? lockers}) =>
      $then(UserModel(lockers: lockers ?? $value.lockers));
}
