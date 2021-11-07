import 'package:flutter/material.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 120,

        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  height: 120,
                  width: 100,
                  color: Colors.purple,
                  child: Image.asset('img/image.png'),
                ),
                Container(
                  height: 20,
                  width: 63,
                  color: Colors.red,
                  child: Center(child: Text('30% OFF',style: TextStyle(color: Colors.white),)),),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meal BOX",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text("Meal BOX",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0x80000000))),
               Container(
                 height: 1,
                 width: 60,
                 color: Colors.grey,
               ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffDE1F26),
                      size: 18,
                    ),
                    Text(
                      "4.1  •  40-50 mins",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0x80000000)),
                    ),
                  ],
                ),
                Text("Free Delivery  •  £30.0 for two",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0x80000000))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
