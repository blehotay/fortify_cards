import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';

class CardViewCollection extends StatelessWidget {
  CardViewCollection({
    required this.title,
    required this.category,
    required this.categoryColor,
    required this.imageUrl,
    super.key,
  });

  final String title;
  final String category;
  final Color categoryColor;
  final String imageUrl;

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
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    NesContainer(
                      padding: EdgeInsets.all(8),
                      backgroundColor: categoryColor,
                      child: Text(
                        category,
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: NesContainer(
                        padding: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height * .15,

                        ///should be 30 sec video
                        child: Image.network(
                          imageUrl,
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
