import 'package:flutter/material.dart';
import 'package:movies_db/pages/home_page.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/images/logo.png'),
              fit: BoxFit.contain,
              ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.75,
              ),
              
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white)),
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => (const HomePage())),); 
                    
                  } ,
                  child: const Text(
                    'Discover the App',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
