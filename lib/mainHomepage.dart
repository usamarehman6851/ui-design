import 'package:flutter/material.dart';
import 'package:new_one/Widgets/appbarback.dart';
import 'package:new_one/Widgets/container.dart';
import 'package:new_one/Widgets/sixAvatar.dart';
import 'package:new_one/Widgets/swipeContainer.dart';

class mainHomepage extends StatelessWidget {
  const mainHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyCircularAvatar(25),

        title:  MyTitleWithAvatar(),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon:Icon( Icons.notifications,color: Colors.black,))


        ],


          ),
      body: ContainerWidget(),

    );













  }
}
