class ImageLinks {
  ImageLinks({
     required this.smallThumbnail,
     required this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
 late String smallThumbnail;
 late String thumbnail;



}