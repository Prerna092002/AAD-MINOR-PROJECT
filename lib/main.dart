

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAD-MINOR-JUNE',
     theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Minor Project'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  MyHomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xFFB2DFDB),
      appBar: AppBar(
     
        title: Text(widget.title),
      ),
  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
       Center(
         child: Container(child: Text("GO",style:TextStyle(fontSize:70,color: Colors.teal[100])),decoration:BoxDecoration(color:Colors.white,shape:BoxShape.circle),height: 130,width: 130)),
       Spacer(flex: 2,),
       ElevatedButton(
         child: Text("Login"),
        style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: Colors.teal[100],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.white), 
     padding: EdgeInsets.symmetric(horizontal: 120),
     
       ),
         onPressed: (){
          
         showModalBottomSheet<void>(
            
            context: context,
            builder: (BuildContext context) {
         
               
              return Container(
                height: MediaQuery.of(context).size.height-0.9,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap:(){ Navigator.pop(context);},
                        child: Icon(Icons.cancel_presentation_sharp),
                      ),
                        Spacer(flex: 3,),
                       Center(
         child: Container(child: Text("LOGIN",style:TextStyle(fontSize:30,color: Colors.white)),decoration:BoxDecoration(color:Colors.teal[100],shape:BoxShape.circle),padding:EdgeInsets.only(top: 35),height: 100,width: 100)),
                    Spacer(flex: 2,),
                     new TextField(
                      
     decoration: new InputDecoration(
      
     icon: new Icon(Icons.email),
     labelText: "Email",
     enabledBorder: const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20.0)),
     borderSide: const BorderSide(
       color: Colors.blueAccent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.blue),
    ),
   ),
  ),
  SizedBox(height: 8,),
    new TextField(
      obscureText: true,
     decoration: new InputDecoration(
     icon: new Icon(Icons.lock),
     labelText: "Password",
     enabledBorder: const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20.0)),
     borderSide: const BorderSide(
       color: Colors.blueAccent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.blue),
    ),
   ),
  ),
  Spacer(flex: 2,),
                     
                     ElevatedButton(onPressed: (){
                    
 Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                     }, child:Text("Login"),
        style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.teal[100],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.white), 
     padding: EdgeInsets.symmetric(horizontal: 120),
     
       ), ),
       
       Spacer(flex: 3,),
                    ],
                  ),
                ),
              );
            },
          );
        

       }, 
       ),
       SizedBox(height: 8,),
       
        ElevatedButton(
         child:Text("Register"),
       
         style: ElevatedButton.styleFrom(
      primary: Colors.teal[100],
      onPrimary: Colors.white,
      side: BorderSide(width:1, color:Colors.white), 
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
      textStyle: TextStyle(fontSize: 30,),
     padding: EdgeInsets.symmetric(horizontal: 100),

       ),
       onPressed: (){
 showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height-0.9,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap:(){ Navigator.pop(context);},
                        child: Icon(Icons.cancel_presentation_sharp),
                      ),
                        Spacer(flex: 3,),
                       Center(
         child: Container(child: Text("Register",style:TextStyle(fontSize:30,color: Colors.white)),decoration:BoxDecoration(color:Colors.teal[100],shape:BoxShape.circle),padding:EdgeInsets.only(top: 35),height: 130,width: 130)),
                    Spacer(flex: 2,),
                     new TextField(
     decoration: new InputDecoration(
     icon: new Icon(Icons.person),
     labelText: "Display Name",
     enabledBorder: const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20.0)),
     borderSide: const BorderSide(
       color: Colors.blueAccent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.blue),
    ),
   ),
  ),
  SizedBox(height: 8,),
                     new TextField(
     decoration: new InputDecoration(
     icon: new Icon(Icons.email),
     labelText: "Email",
     enabledBorder: const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20.0)),
     borderSide: const BorderSide(
       color: Colors.blueAccent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.blue),
    ),
   ),
  ),
  SizedBox(height: 8,),
    new TextField(
      obscureText: true,
     decoration: new InputDecoration(
     icon: new Icon(Icons.lock),
     labelText: "Password",
     
     enabledBorder: const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(20.0)),
     borderSide: const BorderSide(
       color: Colors.blueAccent,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: Colors.blue),
    ),
   ),
  ),
  Spacer(flex: 2,),
                     
                     ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
                     }, child:Text("Create Account"),
        style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.teal[100],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.white), 
     padding: EdgeInsets.symmetric(horizontal: 120),
     
       ), ),
       Spacer(flex: 3,),
                    ],
                  ),
                ),
              );
            },
          );
        

       }, 
        
        ),
        Spacer(flex: 4,),
      ],)
     
   
    );
  }
}

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({ Key? key }) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Razorpay _razorpay=Razorpay();
 
  @override
  void initState(){
    super.initState();
    // _razorpay=Razorpay();
   _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
   _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
   _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }
  @override
  Widget build(BuildContext context) {
    final url1="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmiM-O90i6M-wMWqW93p_-Qji8VCLgdDVMeg&usqp=CAU";
    return Scaffold(
   appBar: AppBar(
  centerTitle: true,
 
  title:Text("Shop Now"),
  
  ),
   drawer: Drawer(
          child:Column(children: [
            Center(
              child: Container(
              
                width: 500,
                height: 100,
                color: Colors.blue,
              //  style:TextStyle(fontSize: 70),
              padding: EdgeInsets.only(top: 50.0),
              child: Text("9876543210",style: TextStyle(color:Colors.white,fontSize: 40),)),
            ),
             ListTile(
              title: Text("Account"),
              trailing: Icon(Icons.person),
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => AccScreen()),
  );
              },
             ),
              Divider(thickness: 4,),
            ListTile(
              title: Text("Order History"),
              trailing: Icon(Icons.history),
              ),
               Divider(thickness: 4,),
               ListTile(
              title: Text("Call and Support"),
              trailing: Icon(Icons.call),
              ),
              Divider(thickness: 4,),
               ListTile(
              title: Text("Updates"),
              trailing: Icon(Icons.update),
              ),
              Divider(thickness: 4,),
               ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.logout),
               onTap: ()async{
                await showDialog(
                    builder: (context) => new AlertDialog(
                      title: new Text(
                        'Are you sure you want to logout?',
                        style: TextStyle(fontFamily: "Smash"),
                      ),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>MyApp() ));
                        }, child: Text("Yes")),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("No")),
                      ],
                    ), context: context);
                
               }
                  ),
                 
             Divider(thickness: 4,),
          ],) ,),
  
  body:Column(children:<Widget> [
    Spacer(flex: 2,),
   Center(child: Image.network(url1,height: 500,width: 250,)),
  // Spacer(flex: 1,),
  Text("Kassualy",style: TextStyle(fontSize: 30,),),
  Text("Floral Print Peplum top",style: TextStyle(fontSize: 10),),
   Text("Rs 900",style: TextStyle(fontSize: 20),),
   Spacer(flex: 2,),
   ElevatedButton(onPressed: (){
      payNow();
    
   }, child: Text("Pay"),
    style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.teal[100],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.white), 
     padding: EdgeInsets.symmetric(horizontal: 120),
    )),
   Spacer(flex: 3,)
  ],)
    );
  }
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
  // Do something when payment succeeds
   
}

void _handlePaymentError(PaymentFailureResponse response) {
  // Do something when payment fails
}

void _handleExternalWallet(ExternalWalletResponse response) {
  // Do something when an external wallet is selected
}
@override
void dispose(){
  super.dispose();
  _razorpay.clear();
}
void payNow(){
     var options = {
  'key': 'rzp_test_yhJk1pqpo5PBB8',
  'amount': 50000, //in the smallest currency sub-unit.
  'name': 'Kassualy',
  'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
  'description': 'Floral Print Peplum top',
  'timeout': 60, // in seconds
  'prefill': {
    'contact': '9123456789',
    'email': 'gaurav.kumar@example.com'
  }
};

// try {
//   _razorpay.open(options);
// } catch (e) {
//   print(e);
// }
 try{
      _razorpay.open(options);

    }catch(e){
      print(e.toString());
    }
//_razorpay.open(options);


}
}


class AccScreen extends StatelessWidget {
   
  const AccScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    final _controller1 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
  
  leading:InkWell(
    onTap:() {
      Navigator.pop(context);
    },
   child: Icon(Icons.arrow_back),
  ) ,
 title:Text("Account"),
  
  ),
 body:Column(children:<Widget> [
   Spacer(flex: 1,),
   Center(child: Icon(Icons.person,size: 90,)),
   Text("9876543210"),
   Spacer(flex: 1,),
   TextField(
      controller: _controller,
     decoration: InputDecoration(
          hintText: "Your Name",
    suffixIcon: IconButton(
      onPressed: () => _controller.clear(),
      icon: Icon(Icons.clear),
    ),
        prefixIcon: Icon(Icons.person,
      ),
   )
   ),

   TextField(
      controller: _controller1,
     decoration: InputDecoration(
          hintText: "Email",
    suffixIcon: IconButton(
      onPressed: () => _controller1.clear(),
      icon: Icon(Icons.clear)
    ),
        prefixIcon: Icon(Icons.email,
      ),
   )
   ),
   Spacer(flex: 1,),
   ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddScreen()));
   }, child: Text("ADD ADDRESS"),
    style: ElevatedButton.styleFrom(
      onPrimary: Colors.teal[100],
      primary: Colors.white,
    //  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.lightBlue), 
   //  padding: EdgeInsets.symmetric(horizontal: 120),
    ),
   ),
   Spacer(flex: 4,),
   ],)
    );
  }
}
class AddScreen extends StatelessWidget {
  const AddScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
  
  leading:InkWell(
    onTap:() {
      Navigator.pop(context);
    },
   child: Icon(Icons.arrow_back),
  ) ,
 title:Text("Add Address"),
  
  ),
 body:Column(children:<Widget> [
  TextField( decoration: InputDecoration(  labelText: "Full Name",
 
  ),
  ),
 // SizedBox(height: 8,),
  TextField(
    decoration: InputDecoration( labelText: "House No./ Building No."),
  ),
 // SizedBox(height: 8,),
  TextField(
decoration: InputDecoration( labelText: "Locality"),
  ),
 // SizedBox(height: 8,),
  TextField(
    decoration: InputDecoration( labelText: "City"),
  ),
//  SizedBox(height: 8,),
  TextField(
    decoration: InputDecoration( labelText: "Pincode"),
),
SizedBox(height: 20,),
ElevatedButton(onPressed: (){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Address Saved"),
    ));
}, child: Text("ADD ADDRESS"),
 style: ElevatedButton.styleFrom(
      primary: Colors.grey,
      onPrimary: Colors.white,
    //  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28))),
    textStyle: TextStyle(fontSize: 30,),
     side: BorderSide(width:1, color:Colors.grey), ))
   ],)
    );
  }
}