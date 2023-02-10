String weekdayDayName(int weekday) {
  String? day;
  switch (weekday) {
    case 1:
      day = 'Dushanba';
      break;
    case 2:
      day = 'Seshanba';
      break;
    case 3:
      day = 'Chorshanba';
      break;
    case 4:
      day = 'Payshanba';
      break;
    case 5:
      day = 'Juma';
      break;
    case 6:
      day = 'Shanba';
      break;
    case 7:
      day = 'Yakshanba';
      break;
  }
  return day!;
}
