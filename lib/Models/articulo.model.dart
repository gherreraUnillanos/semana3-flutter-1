class Articulo{

  String source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Articulo({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });


  factory Articulo.fromJson(Map<String, dynamic> json) => Articulo(
    source: json["source"]["name"] ?? '',
    author : json["author"] ?? 'no tiene autor',
    title : json["title"] ?? '',
    description : json["description"] ?? '',
    url : json["url"] ?? '',
    urlToImage : json["urlToImage"] ?? '',
    publishedAt : json["publishedAt"] ?? '',
    content : json["content"] ?? ''
  );

}

class Source {
    String id;
    String name;

    Source({
      required this.id,
      required this.name
    });

    factory Source.fromJson(Map<String, dynamic> json) => Source(
      id: json["id"] ?? '',
      name:json["name"] ?? '' 
    );
}