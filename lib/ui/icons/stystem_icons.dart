import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

enum SystemIcons {
  lock,
  leave,
  logo,
  friends,
  profile,
  logoText;

  SvgPicture getSvg({Color? color}) {
    switch (this) {
      case SystemIcons.lock:
        return color == null
            ? SvgPicture.asset('assets/icons/system/lock.svg')
            : SvgPicture.asset(
                'assets/icons/system/lock.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.leave:
        return color == null
            ? SvgPicture.asset('assets/icons/system/leave.svg')
            : SvgPicture.asset(
                'assets/icons/system/leave.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.logo:
        return color == null
            ? SvgPicture.asset('assets/icons/system/logo.svg')
            : SvgPicture.asset(
                'assets/icons/system/logo.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.friends:
        return color == null
            ? SvgPicture.asset('assets/icons/system/friends')
            : SvgPicture.asset(
                'assets/icons/system/friends.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.profile:
        return color == null
            ? SvgPicture.asset('assets/icons/system/profile.svg')
            : SvgPicture.asset(
                'assets/icons/system/profile.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
      case SystemIcons.logoText:
        return color == null
            ? SvgPicture.asset('assets/icons/system/logo_with_text.svg')
            : SvgPicture.asset(
                'assets/icons/system/logo_with_text.svg',
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              );
    }
  }
}
