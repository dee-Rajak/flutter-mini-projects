import 'package:getting_around_dsa/linked_list.dart';

void main(List<String> args) {
  // final node1 = Node(value: 1);
  // final node2 = Node(value: 2);
  // final node3 = Node(value: 3);

  // node1.next = node2;
  // node2.next = node3;

  // print(node1);
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
  list.append(5);
  list.append(7);
  print(list);

  var midNode = list.nodeAt(3);
  list.insertAfter(midNode, 30);
  var newNode = list.tail;
  list.insertAfter(newNode!, 10);
  print(list);

  var item = list.pop();
  print(list);
  item = list.removeLast();
  print(list);
  item = list.removeAfter(midNode);
  print(list);
}