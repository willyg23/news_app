import 'package:clean_arch/features/daily_news/domain/entities/article.dart';


/*

why do we need a model and not just use entity?

the domain layer shold be independent and not depend on other layers 

if we may change our database in the future or use XML instead of Json and have to change the entity, which wouldn't be clean clean architecture 

so if we change the db or stop using json, we don't have to change the entity, we can just change the model. I think.

*/

class ArticleModel extends ArticleEntity{
    
  const ArticleModel({
      int ? id,
      String ? author,
      String ? title,
      String ? description,
      String ? url,
      String ? urlToImage,
      String ? publishedAt,
      String ? content,
    }): super(
      id: id,
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
    );

  factory ArticleModel.fromJson(Map < String, dynamic > map) {
    return ArticleModel(
      author: map['author'] ?? "",
      title: map['title'] ?? "",
      description: map['description'] ?? "",
      url: map['url'] ?? "",
      urlToImage: map['urlToImage'] ?? "",
      publishedAt: map['publishedAt'] ?? "",
      content: map['content'] ?? "",
    );
  }


}