import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entity/character_entity.dart';
import '../../domain/entity/customization_items_entity.dart';

part 'chracter_event.dart';
part 'chracter_state.dart';

class ChracterBloc extends Bloc<ChracterEvent, ChracterState> {
  //final LoadCharDataUseCase _loadCharDataUseCase
  ChracterBloc() : super(ChracterLoaded()) {


    on<ChracterEvent>((event, emit) {
      if(event is LoadCharData){
      }
    });
  }
}
