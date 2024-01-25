import 'dart:io';

import 'package:clean_arch/core/constants/constants.dart';
import 'package:clean_arch/features/daily_news/data/models/article.model.dart';
import 'package:clean_arch/features/daily_news/domain/repository/article_repository.dart';
import 'package:clean_arch/core/resources/data_state.dart';
import 'package:clean_arch/features/daily_news/domain/entities/article.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data_sources/remote/news_api_service.dart';


// here we are implementing the abstract class ArticleRepository found in the domain layer. Note that we need to implement all of it's classes.
class ArticleRepositoryImpl implements ArticleRepository{
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);


//returns a list of ArticleModels
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async{
   
   // put request in a try catch to be safe from unexpected error.
    try { 
      // the api needs an apiKey, country, and category
        final httpResponse = await _newsApiService.getNewsArticles(
          apiKey: newsAPIKey,
          country: countryQuery,
          category: categoryQuery,
        );

        //check if request sent to server was successful
        if (httpResponse.response.statusCode == HttpStatus.ok) {
          return DataSuccess(httpResponse.data);
        } else {
          return DataFailed(
            DioError(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              type: DioErrorType.response,
              requestOptions: httpResponse.response.requestOptions
            )
          );
        }
      } on DioError catch(e){
        return DataFailed(e);
      }
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