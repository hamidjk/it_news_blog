class HashTagModel {
  var title;
  HashTagModel({required this.title});
}

class ItBlogModels {
  var id;
  var imageUrl;
  var title;
  var writer;
  var writerImageUrl;
  var date;
  var content;
  var views;
  ItBlogModels(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.writer,
      required this.writerImageUrl,
      required this.date,
      required this.content,
      required this.views});
}

class podcasts {
  var image;
  var title;
  podcasts({required this.image, required this.title});
}
