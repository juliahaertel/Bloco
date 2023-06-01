import 'package:bloco/values.dart';

class Piece {
  Shape type;

  Piece({required this.type});

  List<int> position = [];

  void initializePiece() {
    switch (type) {
      case Shape.L:
        position = [4, 14, 24, 25];

        break;
      default:
    }
  }

  void movePiece(Direction direction) {
    switch (direction) {
      case Direction.down:
        for (int i = 0; i < position.length; i++) {
          position[i] += rowLength;
        }
        break;
      case Direction.right:
        for (int i = 0; i < position.length; i++) {
          position[i] += 1;
        }
        break;
      case Direction.left:
        for (int i = 0; i < position.length; i++) {
          position[i] -= 1;
        }
        break;
      default:
    }
  }
}
