import 'package:flutter/material.dart';

class Weight {
  int amount;

  Weight(this.amount);

  static List<Weight> getWeight() {
    return <Weight>[
      Weight(66),
      Weight(67),
      Weight(68),
      Weight(69),
      Weight(70),
      Weight(71),
      Weight(72),
      Weight(73),
      Weight(74),
      Weight(75),
      Weight(76),
    ];
  }

  static List<DropdownMenuItem<Weight>> buildDropdownMenuItemsWeight(
      List weightAmount) {
    List<DropdownMenuItem<Weight>> items = List();

    for (Weight weight in weightAmount) {
      items.add(DropdownMenuItem(
        value: weight,
        child: Text('${weight.amount} Lbs'),
      ));
    }
    return items;
  }
}
