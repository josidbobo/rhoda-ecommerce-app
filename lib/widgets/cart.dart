import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Center(
          child: Text('Opps! There are no items currently in your Cart!',
          
          ),
    );
  }
}
