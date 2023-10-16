import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

enum SystemIcons {
  lock,
  leave,
  logo,
  friends,
  profile;

  SvgPicture getSvg(Color? color) {
    switch (this) {
      case SystemIcons.lock:
        return color == null
            ? SvgPicture.asset('assets/icons/stystem/lock')
            : SvgPicture.asset(
                'assets/icons/stystem/lock',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.leave:
        return color == null
            ? SvgPicture.asset('assets/icons/stystem/leave')
            : SvgPicture.asset(
                'assets/icons/stystem/lock',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.logo:
        return color == null
            ? SvgPicture.asset('assets/icons/stystem/logo')
            : SvgPicture.asset(
                'assets/icons/stystem/lock',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.friends:
        return color == null
            ? SvgPicture.asset('assets/icons/stystem/friends')
            : SvgPicture.asset(
                'assets/icons/stystem/lock',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.profile:
        return color == null
            ? SvgPicture.asset('assets/icons/stystem/profile')
            : SvgPicture.asset(
                'assets/icons/stystem/lock',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
    }
  }
}
