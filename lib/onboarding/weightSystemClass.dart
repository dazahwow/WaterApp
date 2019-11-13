import 'package:flutter/material.dart';

class WeightSystemClass {
  String name;

  WeightSystemClass(this.name);

  static List<WeightSystemClass> getWeightSystem() {
    return <WeightSystemClass>[
      WeightSystemClass('Metric'),
      WeightSystemClass('Imperial'),
      WeightSystemClass('US System'),
    ];
  }

  static List<DropdownMenuItem<WeightSystemClass>> buildDropdownMenuItems(
      List weightSystems) {
    List<DropdownMenuItem<WeightSystemClass>> items = List();

    for (WeightSystemClass weight in weightSystems) {
      items.add(DropdownMenuItem(
        value: weight,
        child: Text(weight.name),
      ));
    }
    return items;
  }
}
