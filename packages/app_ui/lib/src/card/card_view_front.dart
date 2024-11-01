import 'package:flutter/material.dart';
import 'package:nes_ui/nes_ui.dart';

class CardViewFront extends StatelessWidget {
  const CardViewFront({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: NesContainer(
          padding: const EdgeInsets.all(4.0),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: NesContainer(
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.blueGrey,
              height: MediaQuery.of(context).size.height * .80,
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        TitleAndCategory(),
                        SizedBox(
                          height: 16,
                        ),
                        ImageSection(),
                        SizedBox(
                          height: 4,
                        ),
                        _DetailWidget()
                      ],
                    ),
                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   child: NesButton(
                    //     type: NesButtonType.primary,
                    //     onPressed: () {
                    //       NesBottomSheet(
                    //         child: NesContainer(),
                    //       );
                    //     },
                    //     child: Text('Learn More'),
                    //   ),
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

class TitleAndCategory extends StatelessWidget {
  const TitleAndCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Kimura',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        NesContainer(
          padding: EdgeInsets.all(8),
          backgroundColor: Colors.redAccent,
          child: NesRunningText(
            text: 'Submission',
          ),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: NesContainer(
        padding: EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height * .50,

        ///should be 30 sec video
        child: Image.network(
          'https://bjj-world.com/wp-content/uploads/2021/04/kimura-lock.jpg',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class _DetailWidget extends StatelessWidget {
  const _DetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NesContainer(
      padding: const EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * .2,
      width: double.infinity,
      child: NesContainer(
        backgroundColor: Colors.black12,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DetailRow(
                icon: NesIcons.hammer, label: 'Difficulty', value: 'Beginner'),
            DetailRow(icon: NesIcons.check, label: 'Issued', value: '10/12/23'),
            DetailRow(
                icon: NesIcons.energy, label: 'Times Taught', value: '10'),
            DetailRow(icon: NesIcons.pickaxe, label: 'Last', value: '10/12/23')
          ],
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  const DetailRow({
    required this.label,
    required this.value,
    required this.icon,
    super.key,
  });

  final String label;
  final String value;
  final NesIconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NesIcon(
          iconData: icon,
          size: Size(24.0, 24),
        ),
        Text('$label: '),
        Text(value),
      ],
    );
  }
}
