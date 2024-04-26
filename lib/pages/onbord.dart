import 'package:flutter/material.dart';
import 'package:food_delivery/pages/singup.dart';
import 'package:food_delivery/widget/conntent_model.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int CurrentIndex=0;
        late PageController _controller;
        @override
  void dispose() {
    _controller.dispose();
    // TODO: implement initState
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: content.length,
              itemBuilder: (_,i){
                return Padding(
                  padding: EdgeInsets.only(top: 40,left: 20,right: 20),
                  child: Column(children: [
                    Image.asset(
                      content[i].image,
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                      
                    ), 
                    SizedBox(height: 20.0,),
            
                    Text(content[i].title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0,),
                    Text(content[i].description,style: TextStyle(fontSize: 20),)
            
                  ],),);
              }),
          ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                  List.generate(
                    
                    content.length,
                    (index)=>
                      buildDot(index, context),
                    
                    )
                  
                
              ),
            ),
            GestureDetector(
              onTap: (){
                if(CurrentIndex==content.length-1){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SingUp())); 

                }
                _controller.nextPage(duration: Duration(milliseconds: 100),
                 curve: Curves.bounceIn);

              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                height: 60,
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            )
        ],
      ),
    );
  }
  Container buildDot(int index,BuildContext content){
    return Container(
      height: 10.0,
      width: CurrentIndex==index?15:7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey
      ),
    );
  }
}