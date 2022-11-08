class Status {
  final int terminalID;
  final int dateTime;
  final bool isOnline;
  //final Status;

  const Status(
      {required this.terminalID,
      required this.dateTime,
      required this.isOnline});

  factory Status.fromJeson(Map<String, dynamic> json) {
    return Status(
        terminalID: json['terminalId'],
        dateTime: json['dateTime'],
        isOnline: json['isOnline']);
  }
}
