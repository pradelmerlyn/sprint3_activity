import 'package:sprint3_activity/core/usecases/usecase.dart';
import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';
import 'package:sprint3_activity/domain/repository/post/post_repository.dart';

class PostUsecase implements UseCase<DataState<List<PostEntity>>, void> {
  final PostRepository _repository;
  PostUsecase(this._repository);

  @override
  Future<DataState<List<PostEntity>>> call({void params}) {
    return _repository.getPosts();
  }
}
