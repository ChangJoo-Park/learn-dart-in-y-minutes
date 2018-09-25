/**
 * printInteger
 */
printInteger() {
  var aNumber = 10;
  int typedNumber = 9999;
  print(aNumber);
  print('변수를 문자열 안에서 출력할 수 있습니다. aNumber => $aNumber');
  print('타입을 지정해서 숫자를 사용할 수 있습니다. typedNumber => $typedNumber');
}

defaultValueIsNull() {
  int lineCountButNotAssigned;
  print('lineCountButNotAssigned == null');
  assert(lineCountButNotAssigned == null);
}

usingArray() {
  const numberArray = [1, 2, 3, 4];
  print('하나씩 출력합니다');
  numberArray.forEach((n) => print('현재 숫자는 $n'));
  print('배열 변수를 출력합니다.');
  print(numberArray);
}

stringAndNumbers() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1);
  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  // int -> String
  var oneAsString = 1.toString();
  assert(oneAsString == '1');
  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

aboutAList() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 3;
  assert(list[1] == 3);
}

aboutAMap() {
  Map<String, String> gifts = {
    // Key:   Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  assert(gifts['first'] == 'partridge');
  assert(gifts['fifth'] == 'golden rings');

  assert(nobleGases[2] == 'helium');
  assert(nobleGases[10] == 'neon');

  gifts['fifth'] = 'silver rings';
  assert(gifts['fifth'] == 'silver rings');

  nobleGases[99] = 'unknown';
  assert(nobleGases[99] == 'unknown');
}

/**
 * #로 시작하는 식별자를 만들 수 있습니다.
 * 꼭 사용할 필요는 없습니다.
 */
getSymbols() {
  #radix;
  #foo;
  #bar;
  print(#radix);
  print(#foo);
  print(#bar);
}

/**
 * 함수는 리턴 타입을 지정할 수 있습니다.
 */
bool isFirstFunction() {
  return false;
}

/**
 * 애로우 펑션을 이용해 바로 리턴하는 함수를 만들 수 있습니다.
 */
int getThree() => 3;

usingNamedParameters({bool bold, bool hidden}) {
  print(bold);
  print(hidden);
}

usingOptionalParameters(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

printElement(int element) {
  print(element);
}

aboutConditional() {
  const bool isPublic = true;

  var visibility = isPublic ? 'public' : 'private';

  if (visibility == 'public') {
    print('isPublic이 true 입니다.');
  } else {
    print('isPublic이 false 입니다.');
  }
}

usingForLoop() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);
}

catchAnError() {
  try {
    throw Exception('Out of Energy!!');
  } catch (error) {
    print(error);
  }
}

main() {
  [
    printInteger,
    defaultValueIsNull,
    usingArray,
    stringAndNumbers,
    aboutAList,
    aboutAMap,
    getSymbols,
    isFirstFunction,
    getThree,
    aboutConditional,
    usingForLoop,
    catchAnError
  ].forEach((eachFunction) => eachFunction());

  usingNamedParameters(bold: true, hidden: false);
  print(usingOptionalParameters('You', 'Hello World', 'signal'));

  List<int> list = [1, 2, 3, 4];
  print('함수는 일급 시민입니다');
  list.forEach(printElement);
  print('익명함수를 사용할 수 있습니다.');
  list.forEach((element) {
    print(element);
  });
  print('애로우펑션을 사용할 수 있습니다.');
  list.forEach((element) => print(element));
}
