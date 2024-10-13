part of 'card_collection_bloc.dart';

enum PageStatus { inital, loading, success, error }

class CardColectionState extends Equatable {
  const CardColectionState({
    this.earnedCards = const [],
    this.purchasedCards = const [],
    this.status = PageStatus.inital,
  });

  final List<FortifyCard>? earnedCards;
  final List<FortifyCard>? purchasedCards;
  final PageStatus status;

  CardColectionState copyWith({
    List<FortifyCard>? earnedCards,
    List<FortifyCard>? purchasedCards,
    PageStatus? status,
  }) {
    return CardColectionState(
      earnedCards: earnedCards ?? this.earnedCards,
      purchasedCards: purchasedCards ?? this.purchasedCards,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        earnedCards,
        purchasedCards,
        status,
      ];
}
