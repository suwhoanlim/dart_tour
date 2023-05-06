//Mixin : class without constructor
//used to add properties to classes

class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnununu!");
  }
}

class Tall {
  final double height = 1.99;
}

//inhereitance!
class human {
  final String name;
  human({required this.name});
  void sayHello() {
    print("hello ny mane is $name");
  }
}

class player extends human with Strong, QuickRunner, Tall {
  final Team team;
  player({
    required this.team,
    required String name,
  }) : super(name: name);
  //use super to communicate with parent class
  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

//abstract class / method
//blueprint that other classes must implement

abstract class Human {
  void walk(); // we won't implement anything here
  //define name and return type (and maybe parameter) of method
  //extended class all has this method, but developer can decide how to implement them
}

//enum constrains the range of choices so that programmer doesn't make mistake
enum Team { red, blue } // don't need to "red", "blue"

//You'll use a lot of enum and class in flutter code!

//instead of Color: 'red'
//you get Color.red
//reduce errors and mistakes!
enum XPLevel { beginner, medium, pro }

//once you get data from api, you need to convert it into dart/flutter class
class Player extends Human {
  String name;
  XPLevel xp;
  Team team; // more safe than String team

  Player({required this.name, required this.xp, required this.team});

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("yo my name is $name");
  }

  void walk() {
    print("I am wlaking here\n");
  }
}

class Coatch extends Human {
  void walk() {
    print("Coach is Walking");
  }
}

void main() {
/* 
  var nic = Player(name: 'nico', xp: 1200, team: 'red');
  nico.name = 'las';
  nico.xp = 12000;
  nico.team = 'blue';
   */
  var nic = Player(name: 'nico', xp: XPLevel.medium, team: Team.red);
  var potato = nic
    ..name = 'potato'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
  //does the same thing! cascading operator
  //less code, more cool!
  nic.sayHello();
  potato.sayHello();
  nic == potato ? print('yea') : print('no'); // answer is yea

  var apiData = [
    {
      "name": "nico",
      "team": "red",
      'xp': 0,
    },
    {
      "name": "limo",
      "team": "red",
      'xp': 0,
    },
    {
      "name": "dart",
      "team": "red",
      'xp': 0,
    },
  ];
/* 
  apiData.forEach((playerJ) {
    var player = Player.fromJson(playerJ);
    player.sayHello();
  });
 */
  var pl = player(team: Team.red, name: 'timmy');
  pl.sayHello();


  //extend: a class becomes your parent class, can access parent properties using super keyword, 
  //becomes instance of parent class
  //mixin: getting their properties and methods. Stealing from them! basically.
  //to be a mixin, it must not have constructor

}
