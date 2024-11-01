import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortify_cards/card_collection/bloc/card_collection_bloc.dart';
import 'package:fortify_cards/card_collection/widgets/widgets.dart';
import 'package:fortify_cards/l10n/l10n.dart';
import 'package:nes_ui/nes_ui.dart';

class CardCollectionView extends StatelessWidget {
  const CardCollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardCollectionBloc, CardColectionState>(
      builder: (context, state) {
        if (state.status == PageStatus.inital ||
            state.status == PageStatus.loading) {
          const CircularProgressIndicator();
        } else if (state.status == PageStatus.error) {
          const Center(
            child: Text('Error'),
          );
        } else {
          const CardCollectionSuccess();
        }
        return Container();
      },
    );
  }
}

class CardCollectionSuccess extends StatelessWidget {
  const CardCollectionSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // final earnedCards = context.read<CardCollectionBloc>().state.earnedCards;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fortify Cards',
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 14, // spacing between rows
            crossAxisSpacing: 14,
            mainAxisExtent: 300,
          ),
          padding: const EdgeInsets.all(8), // padding around the grid
          // itemCount: items.length, // total number of items
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ExpandedCardView(),
                  ),
                );
              },
              child: CardViewCollection(
                  // cards: earnedCards,
                  ),
            );
          },
        ));
  }
}

class CardViewCollection extends StatelessWidget {
  CardViewCollection({
    // required this.cards,
    super.key,
  });

  // List<FortifyCard> cards;
  @override
  Widget build(BuildContext context) {
    // return CardViewFront();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2.0),
        child: NesContainer(
          padding: EdgeInsets.all(2.0),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(4),
            child: NesContainer(
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.blueGrey,
              // height: MediaQuery.of(context).size.height * .80,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Kimura',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    NesContainer(
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        'Submission',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: NesContainer(
                        padding: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * .15,

                        ///should be 30 sec video
                        child: Image.network(
                          'https://bjj-world.com/wp-content/uploads/2021/04/kimura-lock.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
