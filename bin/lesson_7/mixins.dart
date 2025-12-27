// Миксин — набор методов, который можно «примешать» к классу.
// Миксин НЕ задаёт структуру и НЕ требует реализации.
// Добавляет функционал поверх наследования.
mixin Fly {
  void fly(String title) {
    print('$title is flying');
  }
}

mixin Jump {
  void jump() {
    print('I can jump!');
  }
}
