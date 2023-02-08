import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final index;
  final list = [
    "Tulum",
    "Playa del carmen",
    "Puerto Vallarta",
    "Chichén Itza",
    "Tequila",
    "Cabo San Lucas",
    "Castillo de Chapultepec",
    "Palacio de Bellas Artes",
    "Xcaret",
    "Islas Marieta"
  ];
  ItemActividad({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "screenshot/Capture$index.jpeg",
            height: 120,
            width: 120,
          ),
          Text("Day ${index + 1}", style: TextStyle(fontSize: 11)),
          Text(list[index]),
        ],
      ),
    );
  }
}
