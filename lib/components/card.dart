import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_cart_model.dart';
import 'package:food_delivery/style/app_style.dart';

class FoodCard extends StatelessWidget {
   FoodCard(this.model,{Key? key}) : super(key: key);
FoodCartModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300.0,
          margin: EdgeInsets.only(bottom: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: NetworkImage(model.img_url!,
              ),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: EdgeInsets.all(16.0),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.food!,style: AppStyle.mainTitleStyle,),
                    Text(model.restaurant!,style: AppStyle.subTitleStyle,),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text("${model.note}",
                        style: TextStyle(color: Colors.amber,fontSize: 18.0),),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.timer,
                          color: Colors.blueGrey.shade300,
                        ),
                        Text("${model.time}",
                          style: TextStyle(color: Colors.blueGrey.shade300,fontSize: 16.0),),
                        SizedBox(
                          width: 25.0,
                        ),

                        Text(
                          "${model.price}",
                          style: AppStyle.priceTitleStyle,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
