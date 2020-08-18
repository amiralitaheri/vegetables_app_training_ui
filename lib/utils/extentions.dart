extension mapIndexedFunction on Iterable {
  Iterable<E> mapIndexed<E, T>(E Function(int index, T item) f) sync* {
    var index = 0;

    for (final item in this) {
      yield f(index, item);
      index = index + 1;
    }
  }
}

extension slugFunction on String {
  String slug() => this.toLowerCase().replaceAll(' ', '-');
}
