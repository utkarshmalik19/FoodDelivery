import 'package:flutter/material.dart';
import 'package:food_delivery/components/card.dart';
import 'package:food_delivery/models/dummy_data.dart';
import 'package:food_delivery/style/app_style.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyle.bgColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Food ", style: GoogleFonts.nunito(
            color:AppStyle.primaryColor,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: AppStyle.primaryColor,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
              child: Text(
                  "Categories",
              style: AppStyle.mainTitleStyle,),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: FakeData.categories.map((e) => Container(margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),child: ActionChip(label: Text(e),onPressed: (){})))
                .toList(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text("Most Popular", style: AppStyle.mainTitleStyle,),
            ),
            Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: FakeData.food_menu.map((e) => FoodCard(e)).toList(),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
