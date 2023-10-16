import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/domain/locker_repository/locker_repository.dart';
import 'package:elementary/elementary.dart';

abstract interface class ILockersScreenModel {
  Future<List<LockerModel>?> getLockers();
}

class LockersScreenModel extends ElementaryModel implements ILockersScreenModel {
  LockersScreenModel(this._lockerRepository);
  final LockerRepository _lockerRepository;

  @override
  Future<List<LockerModel>?> getLockers() async => _lockerRepository.getLockers();
}
