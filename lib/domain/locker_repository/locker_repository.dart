import 'package:dfa_media/data/ds/locker/locker_rds.dart';
import 'package:dfa_media/data/models/models.dart';

class LockerRepository {
  LockerRepository(this._lockerRDS);
  final LockerRDS _lockerRDS;

  Future<List<LockerModel>?> getLockers() async {
    final res = await _lockerRDS.getLockers();
    return res.body?.lockers;
  }
}
