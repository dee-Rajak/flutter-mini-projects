class Node<T> {
  Node({required this.value, this.next});

  T value;
  Node<T>? next;

  // Make Nodes Printable - Recursively
  @override
  String toString() {
    if (next==null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty List';
    return head.toString();
  }

  // Adding Values to the list
  // Push
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }
  // Append
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value: value);
    tail = tail!.next;
  }
  // Insert After
  Node<E> nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }
    return currentNode!;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  // Removing Values from the List
  // Pop
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }
  // Remove Last
  E? removeLast() {
    if (head?.next == null) return pop();

    var current = head;
    while (current?.next != tail) {current = current?.next;}

    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
      // return value;
    }
    node.next = node.next?.next;
    return value;
  }
}