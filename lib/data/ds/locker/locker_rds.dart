import 'package:chopper/chopper.dart';
import 'package:dfa_media/data/models/models.dart';

part 'locker_rds.chopper.dart';

@ChopperApi(baseUrl: 'ozon671game/demo')
abstract class LockerRDS extends ChopperService {
  static LockerRDS create([ChopperClient? client]) => _$LockerRDS(client);
  @Get(path: '/db')
  Future<Response<UserModel>> getLockers();
}
