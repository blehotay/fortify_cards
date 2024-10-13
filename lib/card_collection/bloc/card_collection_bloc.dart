import 'package:bloc/bloc.dart';
import 'package:card_repository/card_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:fortify_cards/card_collection/models/card.dart';
import 'package:meta/meta.dart';

part 'card_collection_event.dart';
part 'card_collection_state.dart';

class CardCollectionBloc extends Bloc<CardColectionEvent, CardColectionState> {
  CardCollectionBloc({
    required CardRepository cardRepository,
  })  : _cardRepository = cardRepository,
        super(CardColectionState()) {
    on<CardColectionRequested>(_onEarnedCardRequested);
  }

  final CardRepository _cardRepository;

  Future<void> _onEarnedCardRequested(
    CardColectionRequested event,
    Emitter<CardColectionState> emit,
  ) async {
    emit(state.copyWith(status: PageStatus.loading));
    try {
      final earnedCards = await _cardRepository.getCards();
      emit(
        state.copyWith(
          earnedCards: earnedCards,
        ),
      );
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(
        state.copyWith(
          status: PageStatus.error,
        ),
      );
    }
  }
}
