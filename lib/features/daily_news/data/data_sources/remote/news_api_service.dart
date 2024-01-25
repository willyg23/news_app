// import 'dart:io';

// import 'package:clean_arch/core/constants/constants.dart';
// import 'package:retrofit/http.dart';
// import 'package:dio/dio.dart';


// //retrofit generates code, so you must specify the .g file at the top of the file
// part 'news_api_service.g.dart';


// //this class is responsible for handling all network call methods
// @RestApi(baseUrl: newsAPIBaseURL)
// abstract class NewsApiService{
//   factory NewsApiService(Dio dio) = _NewsApiService;


// //return type is wrapped in HttpResponse. Because this is useful in determining stuff in the response
// //like whether or not the response was successful
//   Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
//     // these are parameters within the URL that we need to set
//     @Query("apiKey") String ? apiKey,
//     @Query("country") String ? country,
//     @Query("category") String ? category,
//   })

// }

// import 'package:clean_arch/features/daily_news/data/models/article.dart';
import 'package:clean_arch/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clean_arch/features/daily_news/data/models/article.model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/constants.dart';
import 'package:dio/dio.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl:newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  
  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });
}

