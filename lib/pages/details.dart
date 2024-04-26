import 'package:flutter/material.dart';
import 'package:food_delivery/widget/suport.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined,color: Colors.black,)),

              Image.asset('images/salad2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              fit: BoxFit.contain,
              ),
              SizedBox(height: 15,),
           
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       Text('Mediterrance',style: 
            AppWidget.boldTextFeildStyle(),),
              Text('sabrin omar',style: 
            AppWidget.boldTextFeildStyle(),),

                  ],
                ),
                Spacer(),
                
                GestureDetector(
                  onTap: () {
                    if(a>1)
                    --a;
                    setState(() {
                      
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.remove,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 10,),
                                Text(a.toString(),style: AppWidget.LightTextFeildStyle(),),

                                SizedBox(width: 10,),

                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially',maxLines: 3,
            style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Delivery Time',style: 
                AppWidget.boldTextFeildStyle()
                ,),
                SizedBox(width: 25,),
                Icon(Icons.alarm,color: Colors.black,),
                SizedBox(width: 5,),
                Text('30 min',style: AppWidget.boldTextFeildStyle(),)
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total price',style: AppWidget.boldTextFeildStyle(),),
                      Text('\$129',style: AppWidget.boldTextFeildStyle(),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 16),),
                      SizedBox(width: 40,),

                       Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                   SizedBox(width: 10,),

                    ],),
                    
                  ),
                 
                ],
              ),
            )



          ],
        ),
        
      ),
    );
  }
}