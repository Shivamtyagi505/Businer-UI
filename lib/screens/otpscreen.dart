import 'package:businer/screens/homescreen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5D66D3),
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded ),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
        backgroundColor: Color(0xFF5D66D3),
        body: SingleChildScrollView(
            child: Container(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40),
            child: Image.asset(
              'assets/images/medicine.png',
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: ListTile(
                title: Text(
                  "       enter your ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text('  mobile number',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
                onTap: () => print("ListTile")),
          ),
          Container(
            child: Text(
              'you will receive 4 digit code to verify next',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          SizedBox(height:40,),
           Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                  child: Text(
                                "+91",
                              )),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.only(left: 10,top: 1),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.white),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    counterText: '',
                                    hintText: "10 Digit Number",
                                  ),
                                  keyboardType: TextInputType.phone,
                                 // maxLines: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                   Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xFF353A85)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListTile(
                title: Text('Send Otp',style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                selected: true,
                onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
              ),
                      ),
                    ),
                  
        ]))));
  }
}
