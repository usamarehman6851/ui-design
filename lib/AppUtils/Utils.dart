
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Camera,Botnavigation/bottomNavigationbar.dart';
import '../attendence_page.dart';


// Appbar with back Icon
PreferredSizeWidget? appUser(backgcolor){

  return AppBar(
    //toolbarHeight: appbarheight,

    elevation: 0,
    scrolledUnderElevation: 4,
    backgroundColor: backgcolor,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        // Add your back button functionality here
        Get.back();
      },
    ),
  );
}

//My Avatar With Text
Widget MyTitleWithAvatar(){
  return const Row(

    children: [


      SizedBox(width: 8), // Adjust the spacing between avatar and text
      Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('John Doe', style: TextStyle(fontSize: 16,color: Colors.black)),
          Text('Subtitle', style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    ],
  );
}


// Circular Avatar to camera
Widget MyCircularAvatar(double newRadius,) {
  return CircleAvatar(
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/apna.jpeg'),
      radius: newRadius,
    );

}




// Button that is used with dynamic Route
Widget buttonuser( final String hinttext,
    final  String anystring){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        Get.toNamed(anystring);

      },
      child: Text(hinttext),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        textStyle: TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        minimumSize: Size(400, 50),
      ),
    ),
  );
}

//Text Widget that take value of heading , TextStyle
Widget text_one(final String heading,
    final TextStyle? textStyle){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child:  Text(
      heading,
      style: textStyle?? const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 18,


      ),
    ),
  );
}

// TextformField
Widget inputdata(final String getdata,
    final Icon? icon ){
  return Padding(
    padding: const EdgeInsets.all(16),
    child: TextFormField(

      decoration: InputDecoration(

        hintText: getdata,
        filled: false,
      ),
    ),
  );
}

// Search Bar
Widget searchBar(){

  TextEditingController searchcontroller = TextEditingController();

  return TextFormField(
    controller: searchcontroller,

    decoration: InputDecoration(
      suffixIcon: Icon(Icons.list_outlined,color: Colors.black),
      prefixIcon: Icon(Icons.search,color: Colors.grey),
      fillColor: Colors.grey,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      hintText: 'Search Name',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),

    ),
  );
}

// Container Widget with attendance data
Widget ContainerWidget() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),

    child: Column(

      children: [
        Container(
          height: 200,
          width: 450,
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade400,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  text_one(
                      'Hindustan Construction',
                      TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: text_one(
                        'Site 1',
                        TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 10,
                        )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text_one('Today',
                        TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    text_one('Wed, 18, 2023',
                        TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 15,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        color: Colors.blueAccent.shade400,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_one('256\n Total',
                              TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 9,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.shade400,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_one('192\n Attendance',
                              TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 9,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        color: Colors.blueAccent.shade400,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_one('52\n Overtime',
                              TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 9,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 9,
        ),

        SwipeContent(),
        SizedBox(
          height: 9,
        ),

        Container(

            height: 200,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: avatarList('user 1')



        ),
        SizedBox(height: 55),
        MyCircularAvatar( 23),

        Spacer(),

        YourBottomNavigationBar(dynamicRoutename: attendancePage()),
      ],
    ),
  );



}

// Container with text of user given
Widget containerText(){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(


      children: [
        Stack(
          children: [
            Container(
              height: 90,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue,
                      width: 3
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(

                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  shape: BoxShape.rectangle,

                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/apna.jpeg'), // Replace with your asset path
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: text_one('Text two one\n code || Electricon', TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 100.0,top: 65),
              child: Container(
                height: 22,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: text_one('',
                    TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 9,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 185.0,top: 65),
              child: Container(
                height: 22,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    )
                ),
                child: text_one('',
                    TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 9,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 270.0,top: 65),
              child: Container(
                height: 22,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey
                  ),
                  color: Colors.white,
                ),
                child: text_one('',
                    TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 9,
                    )),
              ),
            ),

          ],
        )
      ],
    ),
  );

}

//Avatar with the List
Widget avatarList(final String userNames) {
  // List of colors for avatars
  List<Color> avatarColors = [Colors.red, Colors.green, Colors.blue];

  // List of texts below each avatar
  List<String> avatarTexts = ['Text1', 'Text2', 'Text3'];

  return Container(
    child: ListView.builder(
      itemCount: 2, // Number of rows
      itemBuilder: (context, rowIndex) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              3, // Number of avatars in each row
                  (index) => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: avatarColors[index],
                      radius: 40,
                      // Use different text for each avatar
                      child: Text(
                        avatarTexts[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 12), // Adjust the spacing below the avatar
                    Text(
                      userNames[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

//Stackbar with the avatar
Widget stackAppbar(color){
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          height: 55,
          width: 390,
          color: color,
        ),
      ),

      const   Padding(
        padding: const EdgeInsets.only(left: 140,top: 30),
        child: CircleAvatar(
          backgroundImage: NetworkImage(""),
          backgroundColor:Colors.white ,
          maxRadius: 50.0,

        ),
      )
    ],
  );
}

//Swap Container
Widget SwipeContent() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 150,
      width: 400,

      child: PageView(
        controller: PageController(),
        children: [
          // Swipeable Page 1
          Container(

            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Swipeable Page 2
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Swipeable Page 3
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade400,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Text(
                'Page 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}





