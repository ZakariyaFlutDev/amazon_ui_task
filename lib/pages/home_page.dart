import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}
/*
*Color(0xFF018197),
*"What are you looking for"
*                          "Deliver to Uzbekistan, Republic of",
                              "We ship 45 million products",
                          "Sign in for the best experience",
                          "Up to 31% off APC UPS Battery Back",

* */

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                width: 100,
                image: AssetImage("assets/images/amazon_logo.png"),
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.mic, color: Colors.white,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart, color: Colors.white,)),
                ],
              )
            ],
          )

      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [

            //#search
            Container(
              height: 50,
              color: Color(0xFF018197),
              padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              child: Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Color(0xFF018197),)
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, color: Color(0xFF018197),))
                  ],
                ),
              ),
            ),


            Expanded(
              child: ListView(
                children: [
                  //#location
                  Container(
                    color: Colors.blueGrey,
                    height: 40,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("Deliver to Uzbekistan, Republic of", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                  //#reklama
                  Container(
                    height: 140,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(70), bottomRight: Radius.circular(70)),
                              image: DecorationImage(
                                image: AssetImage("assets/images/image_1.jpeg"),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: EdgeInsets.all(20),
                          child: Text("We ship 45 million products",style: TextStyle(fontSize: 16),),
                        )
                      ],
                    )
                  ),
                  SizedBox(height: 8,),

                  //#signIn
                  Container(
                    padding: EdgeInsets.only(right: 16, left: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in for the best experience",style: TextStyle(fontSize: 22),),
                        SizedBox(height: 15,),
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: Colors.orange,
                          child: const Center(
                            child: Text("Sign In", style: TextStyle(fontSize: 18),),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Create account", style: TextStyle(color: Colors.blueAccent, fontSize: 18),)
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  //deal
                  Container(
                    padding: EdgeInsets.all(16),
                    // height: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const [
                        Text("Deal of the Day", style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),),
                        SizedBox(height: 16,),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage("assets/images/item_7.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),
                        Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 18),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$90.99", style: TextStyle(fontSize: 18),)
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  //#best
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Best Sellers in Electronics", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_1.jpeg",),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_4.jpeg",),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child:Column(
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_2.jpeg",),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_3.jpeg",),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                )
                              )
                            ],
                          ),

                        )

                      ],
                    ),

                   ),
                  SizedBox(height: 8,),
                  
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Top Products in Camera", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                        SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Image(
                                  width: double.infinity,
                                  image: AssetImage("assets/images/item_7.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_2.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage("assets/images/item_4.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
