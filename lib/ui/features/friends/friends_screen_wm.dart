import 'package:dfa_media/ui/features/friends/friends_screen_model.dart';
import 'package:dfa_media/ui/features/friends/friends_screen_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class IFriendsScreenWidgetModel implements IWidgetModel {}

FriendsScreenWidgetModel defaultFriendsScreenWidgetModelFactory(BuildContext context) {
  return FriendsScreenWidgetModel(
    FriendsScreenModel(),
  );
}

class FriendsScreenWidgetModel extends WidgetModel<FriendsScreenWidget, FriendsScreenModel> implements IFriendsScreenWidgetModel {
  FriendsScreenWidgetModel(FriendsScreenModel model) : super(model);
}
