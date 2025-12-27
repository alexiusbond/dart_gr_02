import 'animals.dart';
import 'transports.dart';
import 'interfaces.dart';
import 'mixins.dart';

void main() {
  Cat cat = Cat('Tom', 2);
  Snake snake = Snake('James', 3);
  List<Drawable> drawables = [cat, snake, Car(), Parrot('Polly', 8), Plane()];

  for (var drawable in drawables) {
    drawObject(drawable);
    if (drawable is Animal) {
      (drawable as Animal).makeSound();
    }
    if(drawable is Fly){
      (drawable as Fly).fly(drawable.runtimeType.toString());
    }
    if (drawable is Playable) {
      (drawable as Playable).play();
    }
    if (drawable is Jump) {
      (drawable as Jump).jump();
    }
  }
}

void drawObject(Drawable d) {
  d.draw();
  print(d.draw3D('plastic'));
}
