extension IterableX<T extends num> on Iterable<T> {
    T sum() => reduce((value, element) => (value + element) as T);
}
