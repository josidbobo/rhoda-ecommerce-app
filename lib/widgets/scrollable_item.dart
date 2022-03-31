import 'package:flutter/material.dart';

class ScrollableItem extends StatelessWidget {
  final String image;
  final String title;

  const ScrollableItem({required this.image, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              width: 70,
              height: 55,
              padding: const EdgeInsets.only(right: 12),
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(image, fit: BoxFit.fill,),
                  ),
              ),
            Container(
              padding: const EdgeInsets.only(right: 12),
              child: Text(title, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),)),
          ],
    );
  }
}
