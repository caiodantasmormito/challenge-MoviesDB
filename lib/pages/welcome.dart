import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  static const routeName = '/welcome';
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
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
