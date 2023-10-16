import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_model.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_widget.dart';
import 'package:dfa_media/utils/elementary/state_notifier.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class ILockersScreenWidgetModel implements IWidgetModel {
  ListenableState<EntityState<List<Locker>>> get lockerListenable;
}

LockersScreenWidgetModel defaultLockersScreenWidgetModelFactory(BuildContext context) {
  return LockersScreenWidgetModel(LockersScreenModel());
}

class LockersScreenWidgetModel extends WidgetModel<LockersScreenWidget, LockersScreenModel> implements ILockersScreenWidgetModel {
  LockersScreenWidgetModel(LockersScreenModel model) : super(model);

  @override
  ListenableState<EntityState<List<Locker>>> get lockerListenable => throw UnimplementedError();

  @override
  void initWidgetModel() {
    // TODO: implement initWidgetModel
    super.initWidgetModel();
  }
}
