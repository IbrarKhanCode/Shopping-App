import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "images/camera.png",
    "images/cap.png",
    "images/bag.png",
    "images/watch.png",
    "images/dress.png",
  ];

  List<String> headText = [
    "Fuji x-Pro3",
    "Head cap",
    "Ladies bag",
    "Rolex watch",
    "Ladies frock",
  ];

  List<String> text = [
    "\$399",
    "\$50",
    "\$100",
    "\$250",
    "\$200",
  ];


  List<String> imagesBottom = [
    "images/nike.png",
    "images/shirts.png",
    "images/headphones.png",
    "images/shirt.png",
    "images/laptop.png",
  ];
  List<String> headTextBottom = [
    "Nike Air Zoom",
    "Louis Fashion Shirt",
    "Minimal Headphone",
    "A true Original",
    "Apple Laptop",
  ];
  List<String> middleText = [
    "Buy the latest addition of Nike Air Zoom",
    "Latest addition of louis vution",
    "Very good at listening ",
    "Good addition for men to wear",
    "Best quality laptop of Apple",
  ];
  List<String> textBottom = [
    "\$198",
    "\$270",
    "\$85",
    "\$350",
    "\$500",
  ];

  int numberOfLikes = 0;
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        suffixIcon: Icon(Icons.keyboard_voice_outlined, color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Badge(
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      smallSize: 20,
                      label: Text('3'),
                      child: Container(
                        height: 45,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Image.asset(
                        'images/head.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 50), // Adjusted for better spacing
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start, // Ensure text aligns to the left
                    children: [
                      Text(
                        '50%',
                        style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'Discount',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Aug 21 26',
                        style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Featured',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 180,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25,right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFADD9f5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              ),
                          ),
                          child: Image.asset(images[index]),
                        ),
                        Container(
                          height: 60,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  headText[index],
                                  style: TextStyle(color: Colors.black, fontSize: 13,),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      text[index],
                                      style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: LikeButton(
                                        likeCount: numberOfLikes,
                                        size: 25,
                                        animationDuration: Duration(milliseconds: 800),

                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                SizedBox(width: 30,),
                Text('All',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text('See All',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                ),
              ],
            ),

           Container(
             height: 230,
             child: ListView.builder(
                 itemCount: imagesBottom.length,
                 itemBuilder: (context,index){
                   return  Padding(
                     padding: const EdgeInsets.only(bottom: 20),
                     child: Row(
                       children: [
                         SizedBox(width: 20,),
                         Container(
                           height: 120,
                           width: 110,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
                               color: Colors.orangeAccent.shade100
                           ),
                           child: Image.asset(imagesBottom[index]),
                         ),
                         Container(
                             height: 120,
                             width: 250,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 20,top: 10),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                       Text(headTextBottom[index],style: TextStyle(fontWeight: FontWeight.w500),),
                                       Spacer(),
                                       Padding(
                                         padding: const EdgeInsets.only(right: 20),
                                         child: LikeButton(
                                           size: 25,
                                           likeCount: likes,
                                           animationDuration: Duration(milliseconds: 800),
                                         ),
                                       ),
                                     ],
                                   ),
                                   Text(middleText[index],style: TextStyle(color: Colors.grey),),
                                   SizedBox(height: 5,),
                                   Text(textBottom[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),)
                                 ],
                               ),
                             )
                         ),
                       ],
                     ),
                   );
                 }
        
             ),
           ),


        
          ],
        ),
      ),


      //   Navigation bar
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home_outlined,size: 33,color: Colors.black,),
          Icon(Icons.search,size: 33,color: Colors.black,),
          Icon(Icons.qr_code_scanner_outlined,size: 33,color: Colors.white,),
          Icon(Icons.favorite_border,size: 30,color: Colors.black,),
          Icon(Icons.person_outline_outlined,size: 33,color: Colors.black,),
        ],
        buttonBackgroundColor: Colors.orange,
        backgroundColor: Colors.orange,
        animationDuration: Duration(milliseconds: 200),
        index: 2,
      )
    );
  }
}
