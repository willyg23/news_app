import 'package:clean_arch/core/resources/data_state.dart';
import 'package:clean_arch/core/usecases/usecase.dart';
import 'package:clean_arch/features/daily_news/domain/entities/article.dart';
import 'package:clean_arch/features/daily_news/domain/repository/article_repository.dart';

// we don't need a parameter, so we can just use void as the param
class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void>{

// a use case gets data from the repository and returns it, so that's why we ue ArticleRepository here
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}){
    return _articleRepository.getNewsArticles(); //gets data from repository
  }

}