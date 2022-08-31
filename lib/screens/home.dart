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
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    "Address, 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(Icons.edit_rounded),
                                      iconSize: 15.0)
                                ])
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildFoodCard(),
                          _buildFoodCard(),
                          _buildFoodCard()
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
                        Padding(padding: EdgeInsets.only(left: 30)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.all(7)),
                        _buildFoodCategoryButton(),
                        Padding(padding: EdgeInsets.only(right: 30))
                      ],
                    ))
              ],
            )));
  }
}

Widget _buildFoodCard() {
  return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 280,
      width: 320,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.network(
              "https://i.pinimg.com/originals/70/3c/2c/703c2c1a566cf3c14dc13d7829bfe3a7.jpg"),
          Positioned(
              top: 180,
              bottom: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                height: 70,
                width: 260,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Spotted dick",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "Traditional British steamed pudding",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                                left: 3, right: 10, top: 5, bottom: 5)),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.orangeAccent,
                            ),
                            Text("4.9 (284)"),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(Icons.timelapse_rounded, color: Colors.grey),
                            Text("15-20 mins"),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(Icons.attach_money_rounded,
                                color: Colors.grey),
                            Text("Free")
                          ],
                        )
                      ],
                    )),
              ))
        ],
      ));
}

Widget _buildFoodCategoryButton() {
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
                  spreadRadius: 4,
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 5),
                ),
              ]),
          child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.fastfood_outlined,
                color: Color(0xFFEEC230),
              ))),
      const Padding(padding: EdgeInsets.all(3)),
      const Text("American")
    ],
  );
}
