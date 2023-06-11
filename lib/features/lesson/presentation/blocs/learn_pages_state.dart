part of 'learn_pages_bloc.dart';

abstract class LearnPagesState extends Equatable {
  const LearnPagesState();

  @override
  List<Object> get props => [];
}

class LearnPagesInitial extends LearnPagesState {}

class LearnPageLoading extends LearnPagesState {}

class LearnPageLoaded extends LearnPagesState {}
