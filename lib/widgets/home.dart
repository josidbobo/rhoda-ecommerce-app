import 'package:flutter/material.dart';
import 'package:rhoda_ecommerce_app/widgets/scrollable_item.dart';
import './Sneaker_item.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final _searchController = TextEditingController();

  _notifications(BuildContext contex) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        context: contex,
        builder: (context) {
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: Navigator.of(context).pop,
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 37,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: Text(
                    'You currently do not have any notifications!',
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 19),
                  )),
                ],
              ),
            ),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            width: double.infinity,
            child: ListTile(
              iconColor: Colors.black87,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 19, vertical: 9),
              title: Text.rich(TextSpan(
                  text: 'Hi',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.black),
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(
                        text: 'Rhoda',
                        style: Theme.of(context).textTheme.headline1),
                  ])),
              subtitle: Text('What are you looking for?',
                  style: Theme.of(context).textTheme.bodyText1),
              trailing: Stack(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      size: 29,
                    ),
                    onPressed: () {
                      _notifications(context);
                    },
                  ),
                  const Positioned(
                    bottom: 28,
                    left: 25,
                    child: Icon(
                      Icons.circle_rounded,
                      size: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 17,
            ),
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.black54),
                  )),
              autocorrect: true,
              controller: _searchController,
              showCursor: true,
              cursorWidth: 2.7,
              cursorColor: Colors.black,
              onSubmitted: (_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text(
                      'You can\'t afford the ${_searchController.text} we have!',
                      style: const TextStyle(fontSize: 20)),
                  duration: const Duration(seconds: 5),
                ));
                _searchController.clear();
              },
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            elevation: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.22,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.01, 4],
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment(0.4, 1.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 21.8,
                        ),
                        const Text('ENJOY 30% OFF FOR',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Text('VALENTINE SALES',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 19),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  )),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.redAccent,
                                  content: Text(
                                      'You no get money you wan chop discount are you not a thief? 😭😂',
                      style: TextStyle(fontSize: 20)),
                                  duration: Duration(seconds: 8),
                                ));
                              },
                              child: const FittedBox(child: Text('SHOP NOW'))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/Image.png',
                        fit: BoxFit.cover,
                        scale: 0.12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 18,
              ),
              Text('Categories', style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 92,
            width: 368,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ScrollableItem(image: 'assets/Fashion.jpg', title: 'Fashion'),
                ScrollableItem(image: 'assets/big_benz.jpg', title: 'Vehicles'),
                ScrollableItem(image: 'assets/couch.jpg', title: 'Furniture'),
                ScrollableItem(image: 'assets/phone.jpg', title: 'Phones'),
                ScrollableItem(image: 'assets/bag.png', title: 'Bags'),
                ScrollableItem(image: 'assets/burger.jpg', title: 'Burger'),
                ScrollableItem(image: 'assets/food_image.jpg', title: 'Jollof'),
                ScrollableItem(
                    image: 'assets/Happy_man.jpg', title: 'BoyFriend'),
                ScrollableItem(image: 'assets/benz.jpg', title: 'Benz'),
                ScrollableItem(
                    image: 'assets/no_background_image.jpg', title: 'Husband'),
                ScrollableItem(image: 'assets/burger.jpg', title: 'Calories'),
              ],
            ),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  const SizedBox(
                    width: 18,
                  ),
                  Text('Sneakers',
                      style: Theme.of(context).textTheme.bodyText2),
                ]),
                Row(
                  children: [
                    TextButton(
                        child: Text('View all',
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(fontSize: 14)),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text(
                                'Top your balance boss, the one wey you see, your money reach? 😂',
                      style: TextStyle(fontSize: 20)),
                            duration: Duration(seconds: 6),
                          ));
                        }),
                    const SizedBox(
                      width: 18,
                    ),
                  ],
                ),
              ]),
          Row(
            children: const [
              SizedBox(
                width: 18,
              ),
              SneakerBuilder(
                sneakerImage: 'assets/blue_sneaker.png',
                price: '\$110,000',
                title: 'Nike Airforce',
                scale: 0.03,
              ),
              SizedBox(
                width: 18,
              ),
              SneakerBuilder(
                sneakerImage: 'assets/rectangle_18.png',
                price: '\$45,000',
                title: 'Vanz',
                scale: 1,
              ),
              SizedBox(
                width: 18,
              ),
              SneakerBuilder(
                sneakerImage: 'assets/Rectangle_19.png',
                price: '\$85,000',
                title: 'Nike Air',
                scale: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
