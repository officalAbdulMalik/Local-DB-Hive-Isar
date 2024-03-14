//
// import 'package:isar/isar.dart';
//
// part 'itemData.g.dart';
//
//
// @collection
// class ItemData {
//   int? albumId;
//   int id = Isar.autoIncrement; // Change to int since it's an auto-incrementing field
//   String? title;
//   String? url;
//   String? thumbnailUrl;
//
//   ItemData({this.albumId, this.title, this.url, this.thumbnailUrl});
//
//   Map<String, dynamic> toJson() {
//     return {
//       'albumId': albumId,
//       'id': id,
//       'title': title,
//       'url': url,
//       'thumbnailUrl': thumbnailUrl,
//     };
//   }
//
//   static ItemData fromJson(Map<String, dynamic> json) {
//     return ItemData(
//       albumId: json['albumId'],
//       title: json['title'],
//       url: json['url'],
//       thumbnailUrl: json['thumbnailUrl'],
//     );
//   }
// }