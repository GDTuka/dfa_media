import 'package:dfa_media/data/models/models.dart';
import 'package:dfa_media/ui/features/lockers/lockers_screen_wm.dart';
import 'package:dfa_media/ui/features/lockers/widgets/locker_widget.dart';
import 'package:dfa_media/ui/features/lockers/widgets/states/locker_screen_error.dart';
import 'package:dfa_media/ui/features/lockers/widgets/states/locker_screen_loading.dart';
import 'package:dfa_media/ui/icons/stystem_icons.dart';
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                      height: 180,
                      width: double.infinity,
                      color: wm.theme.bg.secondary,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: SystemIcons.logoText.getSvg(
                              color: wm.theme.main.primary,
                            )),
                      )),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: wm.theme.bg.primary,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My lockers',
                                style: wm.theme.h1.copyWith(color: wm.theme.text.tetryary),
                              ),
                              SystemIcons.leave.getSvg(color: wm.theme.main.primary)
                            ],
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
              loadingBuilder: (context, data) => SliverToBoxAdapter(
                child: Column(
                  children: List.generate(
                    5,
                    (index) => const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 8,
                      ),
                      child: LockerLoadingScreen(),
                    ),
                  ),
                ),
              ),
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
                            onPressed: () {},
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
      ),
    );
  }
}
