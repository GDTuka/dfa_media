// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'models.dart';

class LockerMapper extends MapperBase<Locker> {
  static MapperContainer container = MapperContainer(
    mappers: {LockerMapper()},
  );

  @override
  LockerMapperElement createElement(MapperContainer container) {
    return LockerMapperElement._(this, container);
  }

  @override
  String get id => 'Locker';

  static final fromMap = container.fromMap<Locker>;
  static final fromJson = container.fromJson<Locker>;
}

class LockerMapperElement extends MapperElementBase<Locker> {
  LockerMapperElement._(super.mapper, super.container);

  @override
  Function get decoder => decode;
  Locker decode(dynamic v) =>
      checkedType(v, (Map<String, dynamic> map) => fromMap(map));
  Locker fromMap(Map<String, dynamic> map) => Locker(
      code: container.$get(map, 'code'),
      id: container.$get(map, 'id'),
      isLock: container.$get(map, 'isLock'),
      title: container.$get(map, 'title'));

  @override
  Function get encoder => encode;
  dynamic encode(Locker v) => toMap(v);
  Map<String, dynamic> toMap(Locker l) => {
        'code': container.$enc(l.code, 'code'),
        'id': container.$enc(l.id, 'id'),
        'isLock': container.$enc(l.isLock, 'isLock'),
        'title': container.$enc(l.title, 'title')
      };

  @override
  String stringify(Locker self) =>
      'Locker(id: ${container.asString(self.id)}, code: ${container.asString(self.code)}, title: ${container.asString(self.title)}, isLock: ${container.asString(self.isLock)})';
  @override
  int hash(Locker self) =>
      container.hash(self.id) ^
      container.hash(self.code) ^
      container.hash(self.title) ^
      container.hash(self.isLock);
  @override
  bool equals(Locker self, Locker other) =>
      container.isEqual(self.id, other.id) &&
      container.isEqual(self.code, other.code) &&
      container.isEqual(self.title, other.title) &&
      container.isEqual(self.isLock, other.isLock);
}

mixin LockerMappable {
  String toJson() => LockerMapper.container.toJson(this as Locker);
  Map<String, dynamic> toMap() => LockerMapper.container.toMap(this as Locker);
  LockerCopyWith<Locker, Locker, Locker> get copyWith =>
      _LockerCopyWithImpl(this as Locker, $identity, $identity);
  @override
  String toString() => LockerMapper.container.asString(this);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (runtimeType == other.runtimeType &&
          LockerMapper.container.isEqual(this, other));
  @override
  int get hashCode => LockerMapper.container.hash(this);
}

extension LockerValueCopy<$R, $Out extends Locker>
    on ObjectCopyWith<$R, Locker, $Out> {
  LockerCopyWith<$R, Locker, $Out> get asLocker =>
      base.as((v, t, t2) => _LockerCopyWithImpl(v, t, t2));
}

typedef LockerCopyWithBound = Locker;

abstract class LockerCopyWith<$R, $In extends Locker, $Out extends Locker>
    implements ObjectCopyWith<$R, $In, $Out> {
  LockerCopyWith<$R2, $In, $Out2> chain<$R2, $Out2 extends Locker>(
      Then<Locker, $Out2> t, Then<$Out2, $R2> t2);
  $R call({String? code, int? id, bool? isLock, String? title});
}

class _LockerCopyWithImpl<$R, $Out extends Locker>
    extends CopyWithBase<$R, Locker, $Out>
    implements LockerCopyWith<$R, Locker, $Out> {
  _LockerCopyWithImpl(super.value, super.then, super.then2);
  @override
  LockerCopyWith<$R2, Locker, $Out2> chain<$R2, $Out2 extends Locker>(
          Then<Locker, $Out2> t, Then<$Out2, $R2> t2) =>
      _LockerCopyWithImpl($value, t, t2);

  @override
  $R call({String? code, int? id, bool? isLock, String? title}) => $then(Locker(
      code: code ?? $value.code,
      id: id ?? $value.id,
      isLock: isLock ?? $value.isLock,
      title: title ?? $value.title));
}
