import 'package:chopper/chopper.dart';
import 'package:dfa_media/data/ds/locker/locker_rds.dart';
import 'package:dfa_media/di/app_async_dependency.dart';
import 'package:dfa_media/domain/locker_repository/locker_repository.dart';
import 'package:dfa_media/navigation/app_router.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:dfa_media/utils/interceptors/json_mappable_convertor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class GlobalDependency extends AppAsyncDependency {
  final theme = AppThemeData.light();
  late final AppRouter globalRouter;
  late ChopperClient chopperClient;
  late LockerRDS _lockerRDS;
  late LockerRepository lockerRepository;
  @override
  Future<void> initAsync(BuildContext context) async {
    globalRouter = AppRouter();
    chopperClient = ChopperClient(
      baseUrl: Uri.parse('https://my-json-server.typicode.com/'),
      converter: const JsonMappableConverter(),
    );
    _lockerRDS = LockerRDS.create(chopperClient);
    lockerRepository = LockerRepository(_lockerRDS);
    FlutterNativeSplash.remove();
  }
}

extension DepContextExtension on BuildContext {
  GlobalDependency get global => read<GlobalDependency>();
}
