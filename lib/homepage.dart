import 'package:flutter/material.dart';
import 'package:flutter_application_2/signuppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF50C2C9),
        centerTitle: true,
        title: Text(
          "TODO LIST",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child:
                      Image.asset("images/undraw_done_checking_re_6vyx 1.png")),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Gets things with TODO",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 180,
                height: 150,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 90,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF50C2C9),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 110), // Padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  elevation: 5, // Shadow/elevation
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18, // Text size
                    fontWeight: FontWeight.bold, // Text weight
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
