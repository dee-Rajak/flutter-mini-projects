// TESTING
const numDays = 7;
class DaysLeftInWeek {
  int currentDay = 0;

  DaysLeftInWeek() {
    currentDay = DateTime.now().weekday.toInt();
  }
  int howManyDaysLeft() => numDays - currentDay;
  // int howManyDaysLeft() {
  //   return numDays - currentDay;
  // }
}

// FINISHED
/*
void main(List<String> args) {
  Map<String, dynamic> data = {
    jsonEncode('title'): json.encode('Star Wars'),
    jsonEncode('year'): json.encode(1977)
  };
  Map<String, dynamic> items = json.decode(data.toString());

  print(items);
  print(items['title']);
  print("This is the title: $items['title']");
  print("This is the title: ${items['title']}");
}
void main(List<String> args) {
  Map<int, String> mapMonths ={
    1: "Jan",
    2: "Feb",
    3: "Mar",
  };
  print("Months: ${mapMonths[2]}");
  print("Map: $mapMonths");

  if (mapMonths[0]==null) {
    print("Test 1: Key exists");
  }
  (mapMonths.containsKey(8)) ? print("Test 2: Key exists") : print("Test 2: Key don't exists");
}
void main() {
  Map<String, dynamic> film1 = {"title": "Star Wars", "year": 1977};
  Map<String, dynamic> film2 = {"title": "The Empire Strikes Back", "year": 1980};
  Map<String, dynamic> film3 = {"title": "The Return of the Jedi", "year": 1983};

  List listFilms = [film1, film2, film3];
  Map<String, dynamic> getFilm = listFilms[0];

  print(getFilm);
  print(getFilm["title"]);
}
void main() {
  List listMonths = ['Jan', 'Feb', 'Mar'];
  listMonths.add('Apr');
  listMonths.forEach(print);
}
void main() async {
  int myDelay = 5;
  print('Hello');
  var value = await _customDelay(myDelay);
  var customText = myDelay == 1 ? "second later" : "seconds later";
  print('Its $value $customText');
}

Future<int> _customDelay(int delay) async {
  try {
    await Future.delayed(Duration(seconds: delay));
    return delay;
  } catch (e) {
    print(e);
    return delay;
  }
}
void main() {
  printGreetingNamed();
  printGreetingNamed(personName: "Dee");
  printGreetingNamed(personName: "Deez", clientId: 007);
  printGreetingPositional("Dee");
  printGreetingPositional("Deez", "Rajak");
}
void getCurrentTime(int hourDiff) {
  var time = DateTime.now();
  var timeDiff = time.add(Duration(hours: hourDiff));
  print('Time: $time');
  print('TimeDiff with $hourDiff is: $timeDiff');
}
void printGreetingNamed({String personName = 'Stranger', int clientId = 999}) {
  if (personName.contains('Stranger')) {
    print('Employee: $clientId Stranger DANGER!');
  } else {
    print('Employee: $clientId & $personName');
  }
}
void printGreetingPositional(String personName, [String? personSurname]) {
  print(personName);
  if (personSurname != null) {
    print(personSurname);
  }
}
String name = "Dart";
  try {
    print('Name: $name');
// The following line generates a RangeError
    name.indexOf(name[0], name.length - (name.length));
  } on RangeError catch (exception) {
    print('On Exception: $exception');
  } catch (exception) {
    print('Catch Exception: $exception');
  } finally {
    print('Mission completed!');
  }
// const daysInYear = 365;
  // print('Ther are $daysInYear days in a year');
  // final today = DateTime.now();
  // print('Today is day $today');
  // int? myVar;
  // print('ten: $myVar');
  // myVar = 10;
  // print('ten: $myVar');
  // print('Hello, to deez world! Love');
  // bool myVar = true;
//   String myVar1 = "Test string 1, it is.";
//   String myVar2 = """
// Trying raw string format,
//   I guess it is working fine,
//     I mean, let see..
// how a raw string display looks like.
// """;
//   print(myVar1);
//   print(myVar2);
print('Hello All,');
int intVar = 40;
var boolVar = true;
print('intVar is: $intVar');
print('Bool var is:');
print('$boolVar');
*/