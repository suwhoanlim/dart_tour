import 'package:flutter/material.dart';
import 'package:toonflix/widgets/buttons.dart';

void main() {
  // var nico = Player(name: 'nico');
  runApp(const App());
  //runApp is imported from above line
  //it returns void, takes 'widget'as argument
  //widget = building lego block
  //everything in flutter is widget!
  //we put a lot of widget and make a app
  //there a lot of widget, community, official etc
  //flutter point of view: widget = lego blocks to build ui
  //creating widget = creating class
}

// class Player {
//   String name;
//   Player ({required this.name})
//   }
// }

//every widget in flutter is dart class
//think about named parameter class.
//you'll see constructor pop up when you put your mouse above a widget
//widget = initializing classes via constructors
//new player == player. new 없이도 선언이 된다!

//in order for class to be a widget, it must extend 1 of 3 core widget from flutter sdk
class App extends StatelessWidget {
  const App({super.key});

  // only job: show something on the screen
  //when you extend widget, you should implement build method
  //build method: builds ui of your widget
  @override
  Widget build(BuildContext context) {
    //ignor the parameter for now..
    // whatever is returned, flutter will show it on the screen
    // TODO: implement build
    //since app is our root, we need to return either of two
    //material(google) or cupertino(apple) design system
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selina',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$197,247,474',
                style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 25,
                      ),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const Button(
                      text: 'Request',
                      bgcolor: Color.fromARGB(96, 59, 56, 56),
                      textcolor: Color.fromARGB(255, 255, 255, 255))
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: const Color.fromARGB(255, 88, 85, 78),
                  //       borderRadius: BorderRadius.circular(50)),
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(
                  //       vertical: 12,
                  //       horizontal: 25,
                  //     ),
                  //     child: Text(
                  //       'Request',
                  //       style: TextStyle(
                  //         fontSize: 22,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      // this part is hard to know at compile time
                      //thus remove const from Row
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color:  ),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text('Euro'),
                        Row(
                          children: [
                            Text('6428'),
                            Text('Euro'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ); // Text("Hello world!")); // google style, better for flutter?!
    //return CupertinoApp // apple style
    //discusting! needs scaffold on screen
  }
}

//become familar with the concept of widget and how to inspect them

//column: want to put things one under each other
//row: put things next to each other

//constant: value that you cant change
//and also a value you know before you compile
//thus compiler can do a lot of optimization with the value
//rather than computing the value during runtime, 
//compiler can decide the value during compile time