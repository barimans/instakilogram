class Photo {
  String username;
  String imgUser;
  String imgContent;
  String descContent;
  int likes;

  Photo({
    this.username,
    this.imgUser,
    this.imgContent,
    this.descContent,
    this.likes,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    username: json["username"],
    imgUser: json["img_user"],
    imgContent: json["img_content"],
    descContent: json["desc_content"],
    likes: json["likes"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "img_user": imgUser,
    "img_content": imgContent,
    "desc_content": descContent,
    "likes": likes,
  };
}