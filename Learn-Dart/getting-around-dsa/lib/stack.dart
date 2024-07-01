class Stack<E> {
  Stack() : _storage = <E>[];
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  final List<E> _storage;

  // Operations
  void push(E element) => _storage.add(element);
  E pop() => _storage.removeLast();

  // Getters
  E get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '''
--- Top ---
${_storage.reversed.join('\n')}
-----------
''';
  }
}