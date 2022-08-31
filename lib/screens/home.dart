import 'package:flutter/material.dart';

class HomePageClass extends StatefulWidget {
  const HomePageClass({Key? key}) : super(key: key);

  @override
  HomePageClassState createState() => HomePageClassState();
}

class HomePageClassState extends State<HomePageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Delivery address",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            SizedBox(
                              height: 21,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    RichText(
                                        text: const TextSpan(children: [
                                      TextSpan(
                                          text: "Address, 1",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      WidgetSpan(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 2, bottom: 3),
                                              child: Icon(
                                                Icons.edit_rounded,
                                                size: 14,
                                                color: Colors.grey,
                                              )))
                                    ]))
                                  ]),
                            )
                          ]),
                      const Spacer(),
                      Row(children: [
                        Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                  )
                                ]),
                            child: const IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.search_rounded,
                                  color: Colors.black,
                                ),
                                color: Colors.white)),
                        const SizedBox(width: 10),
                        Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                  )
                                ]),
                            child: const IconButton(
                                onPressed: null,
                                icon: Icon(Icons.person_rounded,
                                    color: Colors.black),
                                color: Colors.white))
                      ]),
                    ])),
                const Padding(padding: EdgeInsets.all(10)),
                //FOOD CARDS
                SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          _buildFoodRestaurantCard(
                              "Nickel & Dinner",
                              "American (Traditional), Breakfast",
                              "https://previews.123rf.com/images/bhofack2/bhofack21708/bhofack2170800542/84631255-healthy-full-american-breakfast-with-eggs-bacon-and-pancakes.jpg",
                              4.9,
                              284,
                              "15-20 min",
                              "Free"),
                          Padding(padding: EdgeInsets.all(5)),
                          _buildFoodRestaurantCard(
                              "Long name restaurant...",
                              "Shit shit shit shit shit shit shit my...",
                              "https://upload.wikimedia.org/wikipedia/commons/f/f6/Faggots-and-gravy.jpg",
                              5.0,
                              12394,
                              "0 sec",
                              "200"),
                          Padding(padding: EdgeInsets.only(right: 20))
                        ])),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "•",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    Text(
                      "•",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      "•",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    )
                  ],
                ),
                SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20)),
                        _buildFoodCategoryButton(
                            Icon(
                              Icons.fastfood_outlined,
                              color: Color(0xFFEEC230),
                            ),
                            "American"),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(
                            Icon(Icons.fastfood_outlined,
                                color: Color(0xFFEEC230)),
                            "American"),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(
                            Icon(Icons.fastfood_outlined,
                                color: Color(0xFFEEC230)),
                            "American"),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(
                            Icon(Icons.fastfood_outlined,
                                color: Color(0xFFEEC230)),
                            "American"),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(
                            Icon(Icons.fastfood_outlined,
                                color: Color(0xFFEEC230)),
                            "American"),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(
                            Icon(Icons.fastfood_outlined,
                                color: Color(0xFFEEC230)),
                            "American"),
                        Padding(padding: EdgeInsets.only(right: 30))
                      ],
                    )),

                Padding(padding: EdgeInsets.all(5)),
                Divider(color: Colors.grey.withOpacity(0.7)),

                const Padding(padding: EdgeInsets.all(3)),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "All restaurants",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Sorted by Fastest delivery",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ]),
                      const Spacer(),
                      Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Colors.grey.withOpacity(0.3))
                          ], color: Colors.white, shape: BoxShape.circle),
                          child: const IconButton(
                              onPressed: null,
                              icon: Icon(Icons.filter_list_rounded)))
                    ])),
                const Padding(padding: EdgeInsets.all(10)),
                _buildRestaurantCard(),
                const Padding(padding: EdgeInsets.all(5)),
                _buildRestaurantCard(),
              ],
            )));
  }
}

Widget _buildFoodRestaurantCard(
    String name,
    String description,
    String imageURL,
    double rating,
    int ratingCount,
    String deliveryTime,
    String deliveryPrice) {
  return Container(
      clipBehavior: Clip.antiAlias,
      height: 210,
      width: 320,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.network(imageURL, width: 450, height: 300),
          Positioned(
              top: 100,
              bottom: 10,
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                height: 70,
                width: 280,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          description,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Padding(padding: EdgeInsets.all(1)),
                        SizedBox(
                            width: 240,
                            child: Divider(
                              color: Colors.grey.withOpacity(0.7),
                            )),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.orangeAccent,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                                "${rating.toString()} (${ratingCount.toString()})"),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Icon(Icons.timelapse_rounded,
                                color: Colors.grey),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            Text(deliveryTime),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Icon(Icons.attach_money_rounded,
                                color: Colors.grey),
                            Text(deliveryPrice)
                          ],
                        )
                      ],
                    )),
              ))
        ],
      ));
}

Widget _buildFoodCategoryButton(Icon icon, String name) {
  return Column(
    children: [
      Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 1,
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(0, 6),
                ),
              ]),
          child: IconButton(onPressed: null, icon: icon)),
      const Padding(padding: EdgeInsets.all(3)),
      Text(name)
    ],
  );
}

Widget _buildRestaurantCard() {
  return Container(
    width: 300,
    height: 100,
    decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              spreadRadius: 3,
              offset: Offset(0, 3))
        ],
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    child: Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Nickel & Diner",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "American (Traditional), Breakfast",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
        Positioned(top: 10, left: 260, child: FlutterLogo()),
        Divider(color: Colors.grey),
        Positioned(
            left: 10,
            top: 70,
            child: Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: Colors.orangeAccent,
                ),
                const Padding(padding: EdgeInsets.only(left: 5)),
                Text("4.9 (23)"),
                const Padding(padding: EdgeInsets.only(left: 5)),
                const Icon(Icons.timelapse_rounded, color: Colors.grey),
                const Padding(padding: EdgeInsets.only(left: 5)),
                Text("15 min"),
                const Padding(padding: EdgeInsets.only(left: 5)),
                const Icon(Icons.attach_money_rounded, color: Colors.grey),
                Text("Free")
              ],
            ))
      ],
    ),
  );
}
