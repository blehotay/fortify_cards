import 'package:flutter/material.dart';
import 'package:fortify_cards/card_collection/widgets/widgets.dart';
import 'package:fortify_cards/l10n/l10n.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // final items = <Card>[const Card(title: 'Kimura')];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fortify Cards',
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // number of items in each row
            mainAxisSpacing: 16, // spacing between rows
            crossAxisSpacing: 16,
            mainAxisExtent: 250,
          ),
          padding: const EdgeInsets.all(8), // padding around the grid
          // itemCount: items.length, // total number of items
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CardView(),
                  ),
                );
              },
              child: CardViewCollection(),
            );
          },
        ));
  }
}

class CardViewCollection extends StatelessWidget {
  const CardViewCollection({
    super.key,
    // required this.items,
  });

  // final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Text('Kimura',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container(
                height: MediaQuery.of(context).size.height * .10,

                ///should be 30 sec video
                child: Image.network(
                  'https://bjj-world.com/wp-content/uploads/2021/04/kimura-lock.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Coach:', style: TextStyle(fontSize: 6, color: Colors.white)),
            Text('Cameron Knight',
                style: TextStyle(fontSize: 6, color: Colors.white)),
            Spacer(),
            Row(
              children: [
                Text('Issued:',
                    style: TextStyle(fontSize: 5, color: Colors.white)),
                Text('10/11/22',
                    style: TextStyle(fontSize: 5, color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
