import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'learn_pages_event.dart';
part 'learn_pages_state.dart';

class LearnPagesBloc extends Bloc<LearnPagesEvent, LearnPagesState> {
  LearnPagesBloc() : super(LearnPagesInitial()) {
    on<LearnPagesEvent>((event, emit) {});
  }
}
