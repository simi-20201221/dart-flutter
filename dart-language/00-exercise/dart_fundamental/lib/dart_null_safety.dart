void main(List<String> arguments) {
  const person = {
    'name': 'Dart',
  };

  if (person['age'] == null) {
    print('Age is missing.');
  } else {
    print(person['age']);
  }

  print(person['age']);

  int? a;
  int b = 2;

  if (a == null) {
    print('a is null');
  } else {
    print(a + b);
  }

  int x =  10;
  int sign;

  if (x > 10) {
    sign = 1;
  } else {
    sign = -1;
  }

  print(sign);

  int y = 42;
  var maybeValue;

  if (y > 0) {
    maybeValue = y;
  }

  int valueAssertion = maybeValue!;
  print(valueAssertion);

  maybeValue ??= 0;
  int valueIfNull = maybeValue;
  print(valueIfNull);

    const cities = <String?>['London', 'Paris', null];
    cities.forEach((city) => {
        if (city !=null) {
          print(city.toUpperCase())
        }
    });

    cities.forEach((city) => print(city?.toUpperCase()));
}
