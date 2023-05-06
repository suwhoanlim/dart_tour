//import 'dart:html';

String sayHo({
  String name = 'anon',
  int age = 99,
  String country = 'wakanda',
}) {
  return "hello $name, you are $age, and you came from $country";
}

String sayH(
{  required String name,
  required int age,
  String country = 'non'}
) {
  return "hello $name, you are $age, and you came from $country";
}
// use required modifier
//or give default value

String sayHi(String name) => "Hello, $name. nice to meet you!";
//fat arrow syntax = return immediatly

//String cap(String? name) => name.toUpperCase(); // what if name = null? this line causes error

String capi(String? name) {
  if(name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

//or we can do this
String capii(String? name) => name != null ? name.toUpperCase() : 'ANON';

String capiii(String? name) => name?.toUpperCase() ?? 'ANON';

// left ?? right // if left is null, return right. if left is not null, return left

//typedef: making your alias to data types when data types look a bit confusing

typedef ListOfInts = List<int>; // rename type of data

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed; // return of .reversed is iterable
  return reversed.toList(); // need to change it back to list
}

typedef UserInfo = Map<String, String>;
//this works, but if you want alias of structured data, you better use class.
//typedef is for simple aliases

String sayHoi(Map<String, String> userInfo) {
  return "Hoi ${userInfo['name']}";
}
 

void main() {
  print(sayHi('limod'));
  //print(sayH('gamba', 1,'cuba'));
  //한 번에 알아보기 쉽지 않음. name argument라는걸 써 줄거다!
  //name argument 쓰면 이제 위처럼은 못 씀. 아래처럼 해야 함.
/*   print(sayH(
      // order doesn't matter
      age: 12,
      country: 'cuba',
      name: 'gamba')); */
  //print(sayH());
  print(sayH(
    name: 'lala',
    age: 123));

  //positional parameter: you need to put in order, c에서 쓰는 방식
  //named parameter: 순서대로, 어떤 var인지 명시해가며 {}
  //optional param: [], make it nullable, and give default value
  //usually use named param, optional은 잘 안 쓰인다?!

  //??
  //?=
  print(capiii('nico'));
  print(capiii(null));

  String? nam;
  nam ??= 'nico';
  print(nam);
  nam = null;
  nam ??= 'another'; 
  print(nam);


}
