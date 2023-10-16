import 'package:dfa_media/ui/features/profile/profile_screen_model.dart';
import 'package:dfa_media/ui/features/profile/profile_screen_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class IProfileScreenWidgetModel implements IWidgetModel {}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(BuildContext context) {
  return ProfileScreenWidgetModel(ProfileScreenModel());
}

class ProfileScreenWidgetModel extends WidgetModel<ProfileScreenWidget, ProfileScreenModel> implements IProfileScreenWidgetModel {
  ProfileScreenWidgetModel(ProfileScreenModel model) : super(model);
}
