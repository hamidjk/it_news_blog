class Podcast {
  String? id;
  String? title;
  String? poster;
  String? catName;
  String? author;
  String? view;
  String? status;
  String? createdAt;
  Podcast(
      {required this.id,
      required this.title,
      required this.poster,
      required this.catName,
      required this.author,
      required this.view,
      required this.status,
      required this.createdAt});
  Podcast.fromJson(Map<String, dynamic> elementfromjson) {
    id = elementfromjson["id"];
    title = elementfromjson["title"];
    poster = elementfromjson["poster"];
    catName = elementfromjson["cat_name"];
    author = elementfromjson["author"];
    view = elementfromjson["view"];
    status = elementfromjson["status"];
    createdAt = elementfromjson["created_at"];
  }
}
