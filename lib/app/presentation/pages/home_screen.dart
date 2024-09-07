import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/category_timing_selection.dart';
import '../widgets/greetings_widget.dart';
import '../widgets/home_card_widget.dart';
import '../widgets/submit_button.dart';
import '../widgets/white_rounded_home_icon.dart';
import '../widgets/white_rounded_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[40],
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:
              IconWithCircle(iconData: Icons.menu, iconSize: 25, onTap: () {}),
        ),
        title: const GreetingsWidget(name: "Mohamed"),
      ),
      body: Container(
        color: Colors.green[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedContainerWithImage(
                imageUrl: 'assets/images/swvlhomecart.png'),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCategorySelection(),
                  HomeCategorySelection(),
                  HomeCategorySelection(),
                ],
              ),
            ),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class ListItemsScreen extends StatelessWidget {
  const ListItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        // leading: Icon(Icons.menu),
        leadingWidth: 100,
        leading: const Text("Home Page"),
        centerTitle: true,
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print("phone click is done");
              },
              icon: Icon(Icons.phone))
        ],
      ),
      body: SafeArea(
          child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Name"),
              Text("Date of Birth"),
              Text("Age"),
              Text(
                "Hello",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
              ),
              Center(child: Image.asset('assets/images/my_pic.jpg')),
              Image(
                  image: NetworkImage(
                      'https://5.imimg.com/data5/PX/WQ/MN/SELLER-38271709/mobile.png')),
              Image.network(
                'https://5.imimg.com/data5/PX/WQ/MN/SELLER-38271709/mobile.png',
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Text('Error loading image'));
                },
              ),
              Center(
                child: Stack(
                  children: [
                    // Bottom layer: An image
                    Image.network(
                      'https://5.imimg.com/data5/PX/WQ/MN/SELLER-38271709/mobile.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    // Top layer: A text label positioned on top of the image
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          'Overlay Text',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    // Another example of positioned widget
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SubmitButton(),
              HorizontalListItems()
            ],
          ),
        ),
      )),
    );
  }
}
