enum BottomNavBarPage {
  lockers,
  friends,
  profile;

  int get indexOfHomePage {
    switch (this) {
      case BottomNavBarPage.lockers:
        return 0;
      case BottomNavBarPage.friends:
        return 2;
      case BottomNavBarPage.profile:
        return 1;
    }
  }
}
