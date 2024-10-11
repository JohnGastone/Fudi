class PickUpTimesModel {
  String? time;
  PickUpTimesModel(this.time);
}

class PickUpMorningTimesList {
  static List<PickUpTimesModel> getPickUpTimes = [
    PickUpTimesModel('09:00 AM'),
    PickUpTimesModel('09:30 AM'),
    PickUpTimesModel('10:00 AM'),
    PickUpTimesModel('10:30 AM'),
    PickUpTimesModel('11:00 AM'),
    PickUpTimesModel('11:30 AM'),
    PickUpTimesModel('12:00 AM'),
  ];
  static List<PickUpTimesModel> displayList =
      List.from(PickUpMorningTimesList.getPickUpTimes);
}

class PickUpAfterNoonTimesList {
  static List<PickUpTimesModel> getPickUpTimes = [
    PickUpTimesModel('12:30 AM'),
    PickUpTimesModel('13:00 AM'),
    PickUpTimesModel('13:30 AM'),
    PickUpTimesModel('14:00 AM'),
    PickUpTimesModel('14:30 AM'),
    PickUpTimesModel('15:00 AM'),
    PickUpTimesModel('15:30 AM'),
  ];
  static List<PickUpTimesModel> displayList =
      List.from(PickUpAfterNoonTimesList.getPickUpTimes);
}

class PickUpEveningTimesList {
  static List<PickUpTimesModel> getPickUpTimes = [
    PickUpTimesModel('16:00 PM'),
    PickUpTimesModel('16:30 PM'),
    PickUpTimesModel('17:00 PM'),
    PickUpTimesModel('17:30 PM'),
    PickUpTimesModel('18:00 PM'),
    PickUpTimesModel('18:30 PM'),
    PickUpTimesModel('19:00 PM'),
    PickUpTimesModel('19:30 PM'),
  ];
  static List<PickUpTimesModel> displayList =
      List.from(PickUpEveningTimesList.getPickUpTimes);
}
