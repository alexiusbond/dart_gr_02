import 'interfaces.dart';
import 'mixins.dart';

// Можно наследовать.
// Может содержать готовые методы.
// Может иметь абстрактные методы, которые наследник обязан реализовать.
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping.');
  }

  void makeSound();
}

class Cat extends Animal with Jump implements Playable {
  Cat(super.name, super.age);

  @override
  void makeSound() {
    print('$name says meow!');
  }

  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return '3D Cat model made of $material';
  }

  @override
  void play() {
    print('$name is playing with laser.');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeSound() {
    print('$name hissles!');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return '3D Snake model made of $material';
  }
}

class Parrot extends Animal with Fly, Jump implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeSound() {
    print('$name says Chirp!');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return '3D Parrot model made of $material';
  }

  @override
  void play() {
    print('$name is playing by mimiching sounds.');
  }
}
