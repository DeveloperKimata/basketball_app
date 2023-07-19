class player {

  String? id;
  String? title1;
  String? title2;
  String? height;
  String? position;
  String? team;
  String? img;

  player(this.id, this.title1, this.title2, this.height, this.position, this.team, this.img);

  player.fromJson(Map<String,dynamic>json){

    id = json['id'];
    title1 = json['title1'];
    title2 = json['title2'];
    height = json['height'];
    position = json['position'];
    team = json['team'];
    img = json['img'];
  }
}