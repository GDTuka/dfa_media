import 'package:dfa_media/ui/features/lockers/lockers_screen_model.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class ILockersScreenWidgetModel implements IWidgetModel {}

LockersScreenWidgetModel defaultLockersScreenWidgetModelFactory(BuildContext context) {
  return LockersScreenWidgetModel(LockersScreenModel());
}

class LockersScreenWidgetModel extends WidgetModel<LockersScreenWidget, LockersScreenModel> implements ILockersScreenWidgetModel {
  LockersScreenWidgetModel(LockersScreenModel model) : super(model);
}
