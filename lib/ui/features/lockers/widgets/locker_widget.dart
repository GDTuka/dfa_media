import 'package:dfa_media/data/models/models.dart';
import 'package:flutter/cupertino.dart';

class LockerWidget extends StatelessWidget {
  const LockerWidget({super.key, required this.onSwitchTap, required this.lockerModel});

  final VoidCallback onSwitchTap;
  final LockerModel lockerModel;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
