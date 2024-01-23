import 'package:clean_arch/core/resources/data_state.dart';
import 'package:clean_arch/features/daily_news/domain/entities/article.dart';

//import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';


// for this to be implemented, it needs the article model in /data/models

abstract class ArticleRepository {
  // API methods
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database methods
  Future < List < ArticleEntity >> getSavedArticles();

  Future < void > saveArticle(ArticleEntity article);

  Future < void > removeArticle(ArticleEntity article);
}