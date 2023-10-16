enum BottomNavBarPage {
  lockers,
  friends,
  profile;

  int get indexOfHomePage {
    switch (this) {
      case BottomNavBarPage.lockers:
        return 0;
      case BottomNavBarPage.friends:
        return 1;
      case BottomNavBarPage.profile:
        return 2;
    }
  }
}
