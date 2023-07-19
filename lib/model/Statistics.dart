class Statistics{

  String? game_id;
  String? team;
  String? img;
  String? id;
  String? player;
  String? turnover;

  Statistics(
      this.game_id, this.team, this.img, this.id, this.player, this.turnover);

  Statistics.fromJson(Map<String,dynamic>json){

    game_id = json['game_id'];
    team = json['team'];
    img = json['img'];
    id = json['id'];
    player = json['player'];
    turnover = json['turnover'];
  }
}