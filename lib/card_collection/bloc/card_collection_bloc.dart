import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'card_collection_event.dart';
part 'card_collection_state.dart';

class CardCollectionBloc extends Bloc<HomeEvent, HomeState> {
  CardCollectionBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
