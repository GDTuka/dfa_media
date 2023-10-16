import 'package:dfa_media/ui/features/profile/profile_screen_wm.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class ProfileScreenWidget extends ElementaryWidget<IProfileScreenWidgetModel> {
  const ProfileScreenWidget({
    super.key,
  }) : super(defaultProfileScreenWidgetModelFactory);

  @override
  Widget build(IProfileScreenWidgetModel wm) {
    return const Scaffold(
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
