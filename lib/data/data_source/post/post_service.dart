import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:sprint3_activity/core/config/endpoints.dart';
import 'package:sprint3_activity/data/model/post/post_model.dart';

part 'post_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class PostService {
  factory PostService(Dio dio, {String baseUrl}) = _PostService;

  @GET(Endpoints.posts)
  Future<HttpResponse<List<PostModel>>> getPosts();
}
