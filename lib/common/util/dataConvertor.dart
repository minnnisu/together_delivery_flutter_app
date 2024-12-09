class DateConvertor{
  static String formatTimeAgo(DateTime dateTime) {
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

  static String formatDateTime(DateTime dateTime) {
    String year = dateTime.year != DateTime.now().year ?
    dateTime.year.toString().substring(2) + "/": '';
    String month = dateTime.month.toString().padLeft(2, '0');
    String day = dateTime.day.toString().padLeft(2, '0');
    String hour = dateTime.hour.toString().padLeft(2, '0');
    String minute = dateTime.minute.toString().padLeft(2, '0');

    return '${year}$month/$day $hour:$minute';
  }
}