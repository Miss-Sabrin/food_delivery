import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login.dart';
import 'package:food_delivery/widget/suport.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a)

                  ] 
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: Text(''),
            ),

            Container(
              margin: EdgeInsets.only(top: 60,left: 20,right:20),
              child: Column(
                children: [
                  Image.asset('images/logo.png',width: MediaQuery.of(context).size.width/1,fit: BoxFit.cover,),
                  SizedBox(height: 20,),
                  Material(
                       borderRadius: BorderRadius.circular(20),

                    elevation: 5.0,
                    child: Container(
                      
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.8,
                      decoration: BoxDecoration(
                        
                        
                    
                        color: Colors.white,
                            borderRadius: BorderRadius.circular(20),

                      ),
                      
                      child: Column(
                        children: [
                            SizedBox(height: 20,),

                          Text('SingUp',style: AppWidget.HeadLineTextFeildStyle(),),
                           SizedBox(height: 30,),
                            TextField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: AppWidget.LightTextFeildStyle(),
                              prefixIcon: Icon(Icons.email_outlined)
                            ),
                           ),
                           SizedBox(height: 30,),

                           TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: AppWidget.LightTextFeildStyle(),
                              prefixIcon: Icon(Icons.email_outlined)
                            ),
                           ),
                               SizedBox(height: 30,),
                               TextField(
                                obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'passworod',
                              hintStyle: AppWidget.LightTextFeildStyle(),
                              prefixIcon: Icon(Icons.password_outlined)
                            ),
                           ),
                                             SizedBox(height: 20,),

                           Container(
                            alignment: Alignment.topRight,
                            child: Text('Forget password',style: AppWidget.boldTextFeildStyle(),)),
                           SizedBox(height: 30,),
                           Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                             child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              width: 200,
                              decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),

                                color: Color.fromARGB(255, 252, 102, 65)
                              ),
                              child: Center(child: Text('Sing Up',
                              style: TextStyle(fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                              )),
                             ),
                           )



                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text("Allready have an account ?",style: AppWidget.LightTextFeildStyle(),))

                ],
              ),
            )
          ],
        ),
      ),

    );
      
    
  }
}