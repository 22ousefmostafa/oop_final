class Holiday {
  final String name;
  final int day;
  final String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month.toLowerCase() == h2.month.toLowerCase();
  }

  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) return 0.0;
    int sum = 0;
    for (var holiday in holidays) {
      sum += holiday.day;
    }
    return sum / holidays.length;
  }
}

void main() {
  Holiday h1 = Holiday("Independence Day", 4, "July");
  Holiday h2 = Holiday("Bastille Day", 14, "July");
  Holiday h3 = Holiday("New Year", 1, "January");

  print("Same month (Independence Day & Bastille Day): ${Holiday.inSameMonth(h1, h2)}");
  print("Same month (Independence Day & New Year): ${Holiday.inSameMonth(h1, h3)}");

  List<Holiday> holidayList = [h1, h2, h3];
  print("Average day value: ${Holiday.avgDate(holidayList)}");
}