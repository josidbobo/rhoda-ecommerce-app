import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('You currently do not have any favourites'),
    );
  }
}