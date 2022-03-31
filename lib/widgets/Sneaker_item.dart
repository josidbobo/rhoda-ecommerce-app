import 'package:flutter/material.dart';

class SneakerBuilder extends StatelessWidget {
  final String sneakerImage;
  final String title;
  final String price;
  final double scale;

  const SneakerBuilder(
      {Key? key,
      required this.sneakerImage,
      required this.scale,
      required this.price,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 110,
      child: Card(
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              SizedBox(height: 79,
                child: Image.asset(sneakerImage, scale: scale,)),
              Text(title, softWrap: true,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12,),),
                  Text(price, 
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize:14),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
