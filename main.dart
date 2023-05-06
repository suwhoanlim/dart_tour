import 'dart:mirrors';

void main() {
  var name = 'nico'; // only modify variable with the same time.
  var kk = 3;
  var kkk = 1.0;
  String namer;

  //local var. for fnc or method = we use var
  //class property , variable = type
  //variables can be updated as long as the type is the same

  //dynamic: not recommended to use, but can be handy sometimes
  //used for variables for multiple type
  //sometimes is the only thing we can use

  //why use dynamic?
  //sometimes it is easy to run as dynamic
  var cool;
  dynamic lol;
  if(cool is String) {
    //dart will assume that cool = String in this block
  }

  if(cool is int) {
    //dart will assume cool = int
  }
  //you don't hae to use dynamic
  //only use when needed
  //avoid using dynamic

  /* 
  null safety = not allowing developer to access null VariableMirror
  if access null it will get runtime error
  you need null. but compiler can't know null access
   */
  String nico = 'nico';
  //nico = null; // causes error
  String? nicoo = 'nico'; // dart/compiler knows this variable can be null, ? tells compiler about this.
  nicoo.length;
  //nicoo = null;
  //nicoo.length;
  //nicoo?.isNotEmpty; // is nicoo exist, return isNotEmpty.
  //below if statments does the same.
  if(nicoo != Null) {
     nicoo.isNotEmpty;
  }
  //by default, all var are not nullable
  //to make it nullable, add ?
  //you'll see when you are fetching data using API

  final corr = 'nico'; // same as con or constant
  //corr = 'los'; // this will error, cannot change
  final String cor = 'lol'; // this can be done
  final li;
  li = 3;
  //li = 5;

  late final String cola; // late: allow to create var without data
  //late: create variable first and then assign value later
  //this wil protect from using the variable without adding value first.
  //used when you are getting data from api
  final int colaa;
/*   print(colaa);
  print(cola); */

  //js const = dart final
  //dart const = compile-time constant
  //same as final, but const must be known at compile time.
  const api = '3';
  //const apii = fetchApi();
  //this is not compile time sconstant. compiler doesn't know the value of apii because it is fetched on rntime?!
  //before compile time, that is, before you send your app to appstore.

  int i = 12;
  var nem = 'la';
  i - 123;
  nem = 'lelel';
  //need to keep the type
  //use var in method or function
  //use type on class property
  final nemm = 'nico';
  dynamic ne;
  ne = 12;
  ne = 'nem';
  ne = true; // dynamic is chaotic. check before using dynamic var.

  if(ne is bool) {//do this
  }

  const api_key = '12312312312';
  //we know the value before sending the code to appstore
  //final value can be created during runtime
  String na = 'name';
  //na = null; // this is not allowed
  String? naa = 'name';
  naa = null;
  if(naa != null) {
    naa.isEmpty;
  }
  naa?.isEmpty; // if naa is not null, return naa.isEmpty. same thing as the if statement above

  late final String naf; // make var first, will ask you to check before using it.
  //rint(naf); 

 /*  String
  bool
  int
  double
  */
  //everything is object in dart!
  num x = 12;
  x = 1.1;

  var giveMeFive = true;
  var numbers = [1, 2, 3, 4, 5, if(giveMeFive) 5,]; // collection if
  //same as
  if(giveMeFive){
    numbers.add(5);
  }
  //adding conditional elements to a list

  // this is List of integers
  List<int> number = [ 1, 2, 3 ,4, 5,]; // same thing!
  //but use above for class
  numbers.add(1);

  //string interpolation: adding variables on text
  var nee = 'nico';
  var age = 10;
  
  var greeting = 'hello everyone, my name is $nee, and i\'m ${age+1}';
  print(greeting);
  //use dollar signe!
  //dollar sign followed with variable! that's it!
  //double quote, single quote all the same.
  //this is syntax when the variable is already there.

  var oldFriends = ['nico', 'lynn',];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for(var friend in oldFriends) "nice $friend",
  ];
  //good tool for ui manipulation
  for(var friend in oldFriends) {
    newFriends.add("great $friend");
  }
print(newFriends);

  //map = js object = python dictionary
  var player = {
    'name' : 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  //map: key value, key = string, value = object
  //object can by any type. anything.
  //you can specify whatever type of key and value
  //maybe use class instead of map?
  //use class for api data?

  //set
  var numb = {1, 2, 3, 4,};
  //set = all member are unique
  //same as list 


  print('hello world!');
}