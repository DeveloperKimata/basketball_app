class Game{
  String? id;

  int? hId;
  String? hAbbreviation;
  String? hCity;
  String? hConference;
  String? hDivision;
  String? hFull_name;
  String? hName;

  int? vId;
  String? vAbbreviation;
  String? vCity;
  String? vConference;
  String? vDivision;
  String? vFull_name;
  String? vName;

  Game(
      this.id,
      this.hId,
      this.hAbbreviation,
      this.hCity,
      this.hConference,
      this.hDivision,
      this.hFull_name,
      this.hName,
      this.vId,
      this.vAbbreviation,
      this.vCity,
      this.vConference,
      this.vDivision,
      this.vFull_name,
      this.vName);

  Game.fromJson(Map<String,dynamic>json){

    id = json['id'];
    hId = json['hId'];
    hAbbreviation = json['hAbbreviation'];
    hCity = json['hCity'];
    hConference = json['hConference'];
    hDivision = json['hDivision'];
    hFull_name = json['hFull_name'];
    hName = json['hName'];
    vId = json['vId'];
    vAbbreviation = json['vAbbreviation'];
    vCity = json['vCity'];
    vConference = json['vConference'];
    vDivision = json['vDivision'];
    vFull_name = json['vFull_name'];
    vName = json['vName'];
  }
}