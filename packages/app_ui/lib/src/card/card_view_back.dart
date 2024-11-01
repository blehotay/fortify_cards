import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';

class CardViewBack extends StatelessWidget {
  const CardViewBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: NesContainer(
          padding: const EdgeInsets.all(4.0),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: NesContainer(
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.blueGrey,
              height: MediaQuery.of(context).size.height * .80,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // TitleAndCategory(),
                    // SizedBox(
                    //   height: 16,
                    // ),
                    // ImageSection(),
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
