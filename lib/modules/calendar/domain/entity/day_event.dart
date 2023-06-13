class DayEventEntity {
  final int id;
  final String name;
  final String desc;
  final String time;
  final String location;
  final String colorHex;
  final String date;

  const DayEventEntity(
      {this.colorHex = '',
      this.time = '',
      this.id = 0,
      this.name = '',
      this.desc = '',
      this.location = '',
      this.date=''});
}
