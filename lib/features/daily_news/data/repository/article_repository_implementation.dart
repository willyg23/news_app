import 'package:clean_arch/features/daily_news/data/models/article.model.dart';
import 'package:clean_arch/features/daily_news/domain/repository/article_repository.dart';
import 'package:clean_arch/core/resources/data_state.dart';
import 'package:clean_arch/features/daily_news/domain/entities/article.dart';


// here we are implementing the abstract class ArticleRepository found in the domain layer. Note that we need to implement all of it's classes.
class ArticleRepositoryImpl implements ArticleRepository{



//returns a list of ArticleModels
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    //TODO: implement getNewsArticles
    throw UnimplementedError();
  }
  
  @override
  Future<List<ArticleEntity>> getSavedArticles() {
    // TODO: implement getSavedArticles
    throw UnimplementedError();
  }
  
  @override
  Future<void> removeArticle(ArticleEntity article) {
    // TODO: implement removeArticle
    throw UnimplementedError();
  }
  
  @override
  Future<void> saveArticle(ArticleEntity article) {
    // TODO: implement saveArticle
    throw UnimplementedError();
  }

  /*
  here is what not to do as this is returning a list of ArticleEntities, rather than ArticleModels. We shouldn't use entities in the data layer.
                               ↓
                               ↓
    @override                  ↓
    Future<DataState<List<ArticleEntity>>> getNewsArticles() {
      //TODO: implement getNewsArticles
      throw UnimplementedError();
    }
  */

}