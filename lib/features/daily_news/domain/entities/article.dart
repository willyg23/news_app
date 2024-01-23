// entities are  buisness objects of an application or a system
// so for a news app, an article is a buisness object we'll use

import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable{

  // here we have all of the fields for the entity. These are like attributes that this entity has.
  // the guide I'm referencing has these as final, and I'm not sure why, so I'll look into that:
  final int ? id;
  final String ? author;
  final String ? title;
  final String ? description;
  final String ? url;
  final String ? urlToImage;
  final String ? publishedAt;
  final String ? content;


  const ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

// equatable comes with props property which can be used in object comparison
// property decides whihc objects we should compare for object comparison
// props = getter method that returns a list of objects
// this function returns a list of all objects that are in our class, the objects can be of any type
  @override
  List < Object ? > get props {
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}