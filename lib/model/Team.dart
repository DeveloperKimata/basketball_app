class Team{

  String? id;
  String? abbreviation;
  String? city;
  String? conference;
  String? division;
  String? full_name;


  Team(this.id, this.abbreviation, this.city, this.conference, this.division,
      this.full_name);

  Team.fromJson(Map<String,dynamic>json){

    id = json['id'];
    abbreviation = json['abbreviation'];
    city = json['city'];
    conference = json['conference'];
    division = json['division'];
    full_name = json['full_name'];
  }
}