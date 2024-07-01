import 'package:getting_around_dsa/stack.dart';

void main() {
  // practice();
  // challengeOne();
  challengeTwo();
}

void practice() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped: $element\n');

  print(stack);
  const list = ['S', 'M', 'O', 'K', 'E'];
  final smokeStake = Stack.of(list);
  print(smokeStake);
  print(smokeStake.peek);
  print(smokeStake.pop());
  print(smokeStake);

  // for (var element in smokeStake) {
  //   print(element);
  // }
}

void challengeOne() {
  const list = ['D', 'E', 'E', 'Z', 'N', 'U', 'T', 'Z'];
  printInReverse(list);

  print(list.reversed);
}

void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E element in list) {
    stack.push(element);
  }

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

void challengeTwo() {
  print(checkBalancedParentheses('h((e))llo(world)()'));
  print(checkBalancedParentheses('(hello world'));
  print(checkBalancedParentheses('hello)(world'));
}

bool checkBalancedParentheses(String text) {
  var stack = Stack<int>();

  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}