class DateConvertor{
  static String formatTimeAgo(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    DateTime now = DateTime.now();
    Duration difference = now.difference(dateTime);
    int minutes = difference.inMinutes;
    int hours = difference.inHours;
    int days = difference.inDays;
    int months = (now.year - dateTime.year) * 12 + now.month - dateTime.month;
    int years = now.year - dateTime.year;

    if (days < 1) {
      if (hours < 1) {
        return '$minutes분 전';
      } else {
        return '$hours시간 전';
      }
    } else if (days == 1) {
      return '어제';
    } else if (days < 7) {
      return '$days일 전';
    } else if (months == 1) {
      return '한 달 전';
    } else if (months < 12) {
      return '$months달 전';
    } else if (years == 1) {
      return '일 년 전';
    } else {
      return '$years년 전';
    }
  }
}