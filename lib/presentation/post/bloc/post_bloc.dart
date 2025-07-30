import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sprint3_activity/domain/use_case/post/post_usecase.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(PostUsecase postUsecase) : super(PostInitial()) {
    // on<PostEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }
}
