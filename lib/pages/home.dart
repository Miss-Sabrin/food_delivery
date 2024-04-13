import 'package:flutter/material.dart';
import 'package:food_delivery/widget/suport.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream=false, burger=false, salad=false, pizza=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: Container(
        margin: EdgeInsets.only(top: 50,
        left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sabrin omar',
            style:AppWidget.boldTextFeildStyle()
             
            ),
             Container(
              padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
          ),
          child: Icon(Icons.shopping_cart,color: Colors.white,),
        )
          ],
        ),
        SizedBox(height: 20,),
        Text(
          'Delicious food',
          style: AppWidget.HeadLineTextFeildStyle(),
        ),
         Text(
          'Discover and get create food',
          style: AppWidget.LightTextFeildStyle(),
        ),
        SizedBox(height: 20,),
      
        ///
        showItems(),
        SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Image.asset('images/salad2.png',
                        
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        ),
                        Text('veggle teco mash',
                        style: AppWidget.boldTextFeildStyle(),
                        ),
                        SizedBox(height: 5,),
                        Text('fresh and helthy',style: AppWidget.LightTextFeildStyle(),),
                          
                        SizedBox(height: 5,),
                        Text('\$23',style: AppWidget.LightTextFeildStyle(),)
                        
                      ],
                    ),
                    
                    
                  ),
                ),
              ),
              SizedBox(width: 5,),
               Container(
                margin: EdgeInsets.all(4),
                 child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      children: [
                        Image.asset('images/salad2.png',
                        
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                        ),
                        Text('Mix Vlog Salad',
                        style: AppWidget.boldTextFeildStyle(),
                        ),
                        SizedBox(height: 5,),
                        Text('fresh and helthy',style: AppWidget.LightTextFeildStyle(),),
                           
                        SizedBox(height: 5,),
                        Text('\$23',style: AppWidget.LightTextFeildStyle(),)
                        
                      ],
                    ),
                    
                    
                  ),
                               ),
               )
          
          
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.only(right: 2),
          child: Material(

            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                Image.asset('images/salad2.png',
                height: 120,
                width: 120,),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text('mediaafretnon',style: AppWidget.HeadLineTextFeildStyle(),),
                      
                    ),
                     Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text('Checking gool cheese',style: AppWidget.LightTextFeildStyle(),),
                      
                    ),
                     Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: Text('\$12',style: AppWidget.boldTextFeildStyle(),),
                      
                    )

                  ],
                )
              ],),
            ),
          ),

        )

       
           
          ],
        ),
      ),
    );
  }

  Widget showItems(){
    return   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                pizza=false;
                salad=false;
                burger=false;
                icecream=true;
                setState(() {
                  
                });

              },
              child: Material(
                
                elevation: 5.0,
              
                borderRadius: BorderRadius.circular(10),
                
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: icecream?Colors.black :Colors.white,
                        borderRadius: BorderRadius.circular(10) ),
                      padding: EdgeInsets.all(8),
                      
              
                      child:Image.asset('images/ice-cream.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      color: icecream?Colors.white :Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///second
            GestureDetector(
              onTap: (){
                pizza=true;
                salad=false;
                burger=false;
                icecream=false;
                setState(() {
                  
                });

              },
              child: Material(
                
                elevation: 5.0,
              
                borderRadius: BorderRadius.circular(10),
                
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: pizza?Colors.black :Colors.white,
                        borderRadius: BorderRadius.circular(10) ),
                      padding: EdgeInsets.all(8),
                      
              
                      child:Image.asset('images/pizza.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      color: pizza?Colors.white :Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
           GestureDetector(
              onTap: (){
                pizza=false;
                salad=true;
                burger=false;
                icecream=false;
                setState(() {
                  
                });

              },
              child: Material(
                
                elevation: 5.0,
              
                borderRadius: BorderRadius.circular(10),
                
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: salad?Colors.black :Colors.white,
                        borderRadius: BorderRadius.circular(10) ),
                      padding: EdgeInsets.all(8),
                      
              
                      child:Image.asset('images/salad.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      color: salad?Colors.white :Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
           //three
          GestureDetector(
              onTap: (){
                pizza=false;
                salad=false;
                burger=true;
                icecream=false;
                setState(() {
                  
                });

              },
              child: Material(
                
                elevation: 5.0,
              
                borderRadius: BorderRadius.circular(10),
                
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: burger?Colors.black :Colors.white,
                        borderRadius: BorderRadius.circular(10) ),
                      padding: EdgeInsets.all(8),
                      
              
                      child:Image.asset('images/burger.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      color: burger?Colors.white :Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );

  }
}