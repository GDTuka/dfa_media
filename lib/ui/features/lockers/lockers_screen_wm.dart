import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/di/global/global_dep.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_model.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_widget.dart';
import 'package:dfa_media/ui/theme/theme.dart';
import 'package:dfa_media/utils/elementary/state_notifier.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class ILockersScreenWidgetModel implements IWidgetModel {
  ListenableState<EntityState<List<LockerModel>>> get lockerListenable;

  AppThemeData get theme;
  Future<void> refresh();
  Future<void> onSwitchTap();
}

LockersScreenWidgetModel defaultLockersScreenWidgetModelFactory(BuildContext context) {
  return LockersScreenWidgetModel(LockersScreenModel(
    context.global.lockerRepository,
  ));
}

class LockersScreenWidgetModel extends WidgetModel<LockersScreenWidget, LockersScreenModel> implements ILockersScreenWidgetModel {
  LockersScreenWidgetModel(LockersScreenModel model) : super(model);

  final _lockerEnity = EntityStateNotifier<List<LockerModel>>();

  @override
  ListenableState<EntityState<List<LockerModel>>> get lockerListenable => _lockerEnity;

  @override
  void initWidgetModel() {
    _initAsync();
    super.initWidgetModel();
  }

  Future<void> _initAsync() async {
    await _loadLockers();
  }

  Future<void> _loadLockers() async {
    _lockerEnity.loading();
    final res = await model.getLockers();
    if (res == null) return _lockerEnity.error();
    return _lockerEnity.content(res);
  }

  @override
  Future<void> onSwitchTap() async {
    // TODO: implement onSwitchTap
    throw UnimplementedError();
  }

  @override
  Future<void> refresh() async {
    await _loadLockers();
  }

  @override
  AppThemeData get theme => AppTheme.of(context);
}
