import 'package:drawer/components/mini_card.dart';
import 'package:flutter/material.dart';

class MiniCardList extends StatefulWidget {
  const MiniCardList({Key? key}) : super(key: key);

  @override
  State<MiniCardList> createState() => _MiniCardListState();
}

class _MiniCardListState extends State<MiniCardList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 450,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            SizedBox(
              width: 10,
            ),
            MiniCardListHorizontal(),
          ],
        ),
      ),
    );
  }
}


class MiniCardListHorizontal extends StatefulWidget {
  const MiniCardListHorizontal({Key? key}) : super(key: key);

  @override
  State<MiniCardListHorizontal> createState() => _MiniCardListHorizontalState();
}

class _MiniCardListHorizontalState extends State<MiniCardListHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        MiniCard(
            cardLogo: 'assets/images/mastercard.jpg',
            bankName: 'Sber Bank',
            cardName: 'MasterCard',
            cardBalanse: 5700),
        MiniCard(
            cardLogo: 'assets/images/mastercard.jpg',
            bankName: 'Pochta Bank',
            cardName: 'Visa',
            cardBalanse: 1200),
      ],
    );
  }
}
