import 'package:dfa_media/ui/features/friends/friends_screen_wm.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class FriendsScreenWidget extends ElementaryWidget<IFriendsScreenWidgetModel> {
  const FriendsScreenWidget({
    super.key,
  }) : super(defaultFriendsScreenWidgetModelFactory);

  @override
  Widget build(IFriendsScreenWidgetModel wm) {
    return const Center(
      child: Text('Friends screen'),
    );
  }
}
