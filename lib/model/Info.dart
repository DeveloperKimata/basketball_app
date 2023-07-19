class Info{
  String? title;
  String? img;

  Info(this.title, this.img);

  Info.fromJson(Map<String,dynamic>json){

    title = json['title'];
    img = json['img'];
  }
}