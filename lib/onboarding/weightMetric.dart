import 'package:flutter/material.dart';

class WeightMetric {
  int amount;

  WeightMetric(this.amount);

  static List<WeightMetric> getWeight() {
    return <WeightMetric>[
      WeightMetric(30),
      WeightMetric(31),
      WeightMetric(32),
      WeightMetric(33),
      WeightMetric(34),
      WeightMetric(35),
      WeightMetric(36),
      WeightMetric(37),
      WeightMetric(38),
      WeightMetric(39),
      WeightMetric(40),
      WeightMetric(41),
      WeightMetric(42),
      WeightMetric(43),
      WeightMetric(44),
      WeightMetric(45),
      WeightMetric(46),
      WeightMetric(47),
      WeightMetric(48),
      WeightMetric(49),
      WeightMetric(50),
      WeightMetric(51),
      WeightMetric(52),
      WeightMetric(53),
    ];
  }

  static List<DropdownMenuItem<WeightMetric>> buildDropdownMenuItemsWeightMetric(
      List weightAmountMetric) {
    List<DropdownMenuItem<WeightMetric>> items = List();

    for (WeightMetric weight in weightAmountMetric) {
      items.add(DropdownMenuItem(
        value: weight,
        child: Text('${weight.amount} KG'),
      ));
    }
    return items;
  }
}
