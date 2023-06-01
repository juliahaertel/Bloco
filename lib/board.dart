import 'package:bloco/piece.dart';
import 'package:bloco/pixel.dart';
import 'package:bloco/values.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int rowLength = 10;
  int colLength = 15;

  Piece curretPiece = Piece(type: Shape.L);

  @override
  void initState() {
    super.initState();

    startGame();
  }

  void startGame() {
    curretPiece.initializePiece();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
          itemCount: rowLength * colLength,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: rowLength),
          itemBuilder: (context, index) {
            if (curretPiece.position.contains(index)) {
              return Pixel(color: Colors.purple, child: index);
            } else {
              return Pixel(color: Colors.grey[900], child: index);
            }
          }
          //Text(index.toString(), style: TextStyle(color: Colors.white)),
          // return Pixel(color: Colors.grey[900], child: index);

          ),
    );
  }
}
