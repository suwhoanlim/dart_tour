//everything in flutter is class! our component is class! you need to learn & dominate syntax
//learn the difference of class in dart and other comp lang.

class Player {
  final String name;
  int xp; // dart doesn't like absence of values
  String team;
  int age;
  //thus we use late
  //late is very useful on class!

  Player(
      // default constructor
      // named constructor parameter
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});
  //better way of making constructor
  //dart knows the data type because we already mentioned it on the top of class
  //1) give default, 2) say required

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age, // collon!
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;
        //all positional param are required
        // for named param you need to explicitly mention required

  /* 
  late final String name;
  late int xp;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
   */
  void sayHello() {
    /* 
    var name = '121';
    print("Hi my name is ${this.name}");
     */
    // this.name is same, but not recommended to use this in class method
    //unless you have same named var
    print("hi, my nae msi $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
      name: 'nemo', age: 12); // new Player(); ok, but 'new' < not required
  print(player.name);
  //player.name = 'lolo'; // you cannot modify final var
  print(player.name);
  player.sayHello();

  var player2 = Player.createRedPlayer(
    name: 'semo',
    age: 12,
  );

  var player3 = Player(
    name: 'dongurami',
    xp: 2222,
    team: 'green',
    age: 13,
  );
  // var player2 = Player('semo', 1111111,'blue', 12);
  // we are using positional argument! just like fnc
  //this can be problamatic if class gets big
  //too many positional argument - we get lost!
  //print(player2.name);
}
