import 'package:sprint3_activity/core/util/data_state.dart';
import 'package:sprint3_activity/domain/entities/post/post_entity.dart';

abstract class PostRepository {
  Future<DataState<List<PostEntity>>> getPosts();
}
