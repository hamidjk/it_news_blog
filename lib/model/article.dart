class ArticleModel {
  String? id;
  String? title;
  String? image;
  String? catId;
  String? catName;
  String? author;
  String? view;
  String? status;
  String? createDate;

  ArticleModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.catId,
      required this.catName,
      required this.author,
      required this.view,
      required this.status,
      required this.createDate});

  ArticleModel.fromJson(Map<String, dynamic> elementfromjson) {
    id = elementfromjson["id"];
    title = elementfromjson["title"];
    image = elementfromjson["image"];
    catId = elementfromjson["cat_id"];
    catName = elementfromjson["cat_name"];
    author = elementfromjson["author"];
    view = elementfromjson["view"];
    status = elementfromjson["status"];
    createDate = elementfromjson["created_at"];
  }
}
