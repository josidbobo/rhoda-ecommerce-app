import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 40,),
          Center(
            child: SizedBox(
              height: 170,
              width: 164,
              child: ClipOval(
                      child: Image.asset(
                        'assets/20220314_100746.jpg',
                        fit: BoxFit.fill,
                        scale: 11.8,
                      ),
                    ),
              ),
          ),
          const SizedBox( height: 12,),
        
              Row(
                children: const [
                  SizedBox(width: 120,),
                  Icon(Icons.person),
                  Text('Rhoda Ogunesan'),
                ],
              ),
              const SizedBox( height: 12,),
               Row(
                children: [
                  const SizedBox(width: 120,),
                  const Icon(Icons.shopping_bag),
                  Text('No Items', style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 19),),
                ],
              ),
              const SizedBox( height: 12,),
              Row(
                children: const[
                  SizedBox(width: 120,),
                  Icon(Icons.monetization_on_sharp),
                  Text('5.00'),
                ],
              ),
        ],
        
    );
  }
}