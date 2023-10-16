import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_wm.dart';
import 'package:dfa_media/ui/features/lockers/widgets/locker_widget.dart';
import 'package:dfa_media/ui/features/lockers/widgets/states/locker_screen_error.dart';
import 'package:dfa_media/ui/widgets/buttons/widgets/app_button.dart';
import 'package:dfa_media/utils/elementary/state_notifier_builder.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

class LockersScreenWidget extends ElementaryWidget<ILockersScreenWidgetModel> {
  const LockersScreenWidget({super.key}) : super(defaultLockersScreenWidgetModelFactory);

  @override
  Widget build(ILockersScreenWidgetModel wm) {
    return Scaffold(
      backgroundColor: wm.theme.bg.primary,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: wm.theme.bg.secondary,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: wm.theme.bg.primary,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          EntityStateNotifierBuilder<List<LockerModel>>(
            errorBuilder: (context, e, data) => SliverToBoxAdapter(child: LockerScreenError(refresh: wm.refresh)),
            listenableEntityState: wm.lockerListenable,
            builder: (context, List<LockerModel>? lockers) {
              if (lockers == null) return SliverToBoxAdapter(child: LockerScreenError(refresh: wm.refresh));
              return SliverList.separated(
                itemCount: lockers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: LockerWidget(
                      onSwitchTap: (val) {
                        wm.onSwitchTap(val, index);
                      },
                      lockerModel: lockers[index],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              );
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          EntityStateNotifierBuilder<List<LockerModel>>(
            listenableEntityState: wm.lockerListenable,
            builder: (context, List<LockerModel>? data) {
              if (data == null) return const SliverToBoxAdapter(child: SizedBox());
              return SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      SizedBox(
                        child: AppButton.primary(
                          onPressed: wm.refresh,
                          horizontalPadding: 14,
                          child: const Text(
                            '+ Add locker',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
