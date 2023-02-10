String findMonthName(int weekmonth) {
  String? month;
  switch (weekmonth) {
    case 1:
      month = 'Yanver';
      break;
    case 2:
      month = 'Fevral';
      break;
    case 3:
      month = 'Mart';
      break;
    case 4:
      month = 'Aprel';
      break;
    case 5:
      month = 'May';
      break;
    case 6:
      month = 'Iyun';
      break;
    case 7:
      month = 'Iyul';
      break;
    case 8:
      month = 'Avgust';
      break;
    case 9:
      month = 'Sentabr';
      break;
    case 10:
      month = 'Oktabr';
      break;
    case 11:
      month = 'Noyabr';
      break;
    case 12:
      month = 'Dekabr';
      break;
  }
  return month!;
}
