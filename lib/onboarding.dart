// import 'package:flutter/material.dart';
// import 'package:water_app/onboarding/gender.dart';
// import 'package:water_app/onboarding/weightMetric.dart';
// import 'package:water_app/onboarding/weightSystemClass.dart';
// import 'package:numberpicker/numberpicker.dart';
// import 'package:flutter_picker/flutter_picker.dart';

// import 'onboarding/weightImperial.dart';

// class OnBoarding extends StatefulWidget {
//   @override
//   _OnBoardingState createState() => _OnBoardingState();
// }

// class _OnBoardingState extends State<OnBoarding> {
//   List<WeightSystemClass> _weightSystem = WeightSystemClass.getWeightSystem();
//   List<DropdownMenuItem<WeightSystemClass>> _dropdownMenuItems;
//   WeightSystemClass _selectedWeightSystem;
//   // Weight Class Information ^^

//   //---

//   // Weight Information Imperial//
//   List<Weight> _weightAmountImperial = Weight.getWeight();
//   List<DropdownMenuItem<Weight>> _dropdownMenuItemsWeightImperial;
//   Weight _selectedWeightAmountImperial;
//   // --
//   //Weight Information Metric
//   List<WeightMetric> _weightAmountMetric = WeightMetric.getWeight();
//   List<DropdownMenuItem<WeightMetric>> _dropdownMenuItemsWeightMetric;
//   WeightMetric _selectedWeightAmountMetric;

//   List<Gender> _gender = Gender.getGender();
//   List<DropdownMenuItem<Gender>> _dropdownMenuItemsGender;
//   Gender _selectedGender;

//   bool _value = false;

//   void _onChange(bool value) {
//     setState(() {
//       _value = value;
//     });
//   }

//   @override
//   void initState() {
//     //Weight System //
//     _dropdownMenuItems =
//         WeightSystemClass.buildDropdownMenuItems(_weightSystem);
//     _selectedWeightSystem = _dropdownMenuItems[0].value;

//     //Weight Information Imperial && US System//
//     _dropdownMenuItemsWeightImperial =
//         Weight.buildDropdownMenuItemsWeight(_weightAmountImperial);
//     _selectedWeightAmountImperial = _dropdownMenuItemsWeightImperial[0].value;
//     //

//     //Weight Information Metric //
//     _dropdownMenuItemsWeightMetric =
//         WeightMetric.buildDropdownMenuItemsWeightMetric(_weightAmountMetric);
//     _selectedWeightAmountMetric = _dropdownMenuItemsWeightMetric[0].value;

//     _dropdownMenuItemsGender = Gender.buildDropdownMenuItems(_gender);
//     _selectedGender = _dropdownMenuItemsGender[0].value;
//     super.initState();
//   }

//   onChangeDropdownItemWeightAmountMetric(
//       WeightMetric selectedWeightAmountMetric) {
//     setState(() {
//       _selectedWeightAmountMetric = selectedWeightAmountMetric;
//     });
//   }

//   onChangeDropdownItemWeightAmountImperial(
//       Weight selectedWeightAmountImperial) {
//     setState(() {
//       _selectedWeightAmountImperial = selectedWeightAmountImperial;
//     });
//   }

//   onChangeDropdownItemWeightSystem(WeightSystemClass selectedWeightSystem) {
//     setState(() {
//       _selectedWeightSystem = selectedWeightSystem;
//     });
//   }

//   onChangeDropdownGender(Gender selectedGender) {
//     setState(() {
//       _selectedGender = selectedGender;
//     });
//   }

//   int _currentWeight = 80;
//   void _showDialogMetric() {
//     showDialog<int>(
//       context: context,
//       builder: (BuildContext context) {
//         return new NumberPickerDialog.integer(
//           minValue: 30,
//           maxValue: 475,
//           initialIntegerValue: _currentWeight,
//           cancelWidget: Text(
//             'Cancel',
//             textAlign: TextAlign.left,
//           ),
//           confirmWidget: Text(
//             'Save',
//             textAlign: TextAlign.right,
//           ),
//         );
//       },
//     ).then((value) {
//       if (value != null) {
//         setState(
//           () {
//             _currentWeight = value;
//           },
//         );
//       }
//     });
//   }

//   void _showDialogImperial() {
//     showDialog<int>(
//       context: context,
//       builder: (BuildContext context) {
//         return new NumberPickerDialog.integer(
//           minValue: 30,
//           maxValue: 475,
//           initialIntegerValue: _currentWeight,
//           cancelWidget: Text(
//             'Cancel',
//             textAlign: TextAlign.left,
//           ),
//           confirmWidget: Text(
//             'Save',
//             textAlign: TextAlign.right,
//           ),
//         );
//       },
//     ).then((value) {
//       if (value != null) {
//         setState(
//           () {
//             _currentWeight = value;
//           },
//         );
//       }
//     });
//   }
  
//   double waterAmount = 0;
//   void waterCalculation() {
//     double waterFraction = 0.67;

//     waterAmount = _currentWeight * waterFraction;
//     waterAmount.toStringAsFixed(0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(156, 171, 229, 1),
//         title: Text(
//           'WELCOME',
//           textAlign: TextAlign.center,
//         ),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(
//             Icons.calendar_today,
//             color: Colors.white,
//           ),
//         ),
//         actions: <Widget>[
//           FlatButton(
//             child: Text(
//               'DONE',
//               style: TextStyle(color: Colors.white),
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Container(
//         color: Colors.white,
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(
//         //     begin: Alignment.bottomCenter,
//         //     end: Alignment.topCenter,
//         //     colors: [
//         //       Color.fromRGBO(64, 76, 120, 1),
//         //       Color.fromRGBO(156, 171, 229, 1),
//         //     ],
//         //   ),
//         // ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             // Units of measure Row

//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Text(
//                 "PLEASE INPUT YOUR INFORMATION BEFORE WE GET STARTED",
//                 style: TextStyle(
//                     fontSize: 12,
//                     color: Color.fromRGBO(64, 76, 120, 1),
//                     fontFamily: "Roboto-Black.ttf",
//                     fontWeight: FontWeight.bold),
//               ),
//             ),

//             Container(
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     height: 50,
//                     color: Colors.white,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Icon(Icons.arrow_drop_down_circle),
//                         Text('UNITS OF MEASURE'),
//                         DropdownButton(
//                           value: _selectedWeightSystem,
//                           items: _dropdownMenuItems,
//                           onChanged: onChangeDropdownItemWeightSystem,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.black12,
//                     height: 2,
//                     thickness: 1,
//                     indent: 50,
//                   ),
//                   // Units of measure Row ^^^^^
//                   // ---------------------------
//                   // Weight amount row
//                   Container(
//                     color: Colors.white,
//                     height: 50,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Icon(Icons.center_focus_weak),
//                         Text(
//                           'Weight',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Container(
//                           child: Row(
//                             children: <Widget>[
//                               if (_selectedWeightSystem.name != "Metric")
//                                 GestureDetector(
//                                   onTap: () {
//                                     _showDialogImperial();
//                                     waterCalculation();
//                                   },
//                                   child: Text(
//                                     '${_currentWeight} lbs',
//                                     style: TextStyle(fontSize: 20),
//                                   ),
//                                 ),
//                               if (_selectedWeightSystem.name == "Metric")
//                                 GestureDetector(
//                                   onTap: () {
//                                     _showDialogMetric();
//                                                                         waterCalculation();

//                                   },
//                                   child: Text(
//                                     '${_currentWeight} kg',
//                                     style: TextStyle(fontSize: 20),
//                                   ),
//                                 ),
//                               Icon(Icons.keyboard_arrow_down)
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.black12,
//                     height: 2,
//                     thickness: 1,
//                     indent: 50,
//                   ),
//                 ],
//               ),
//             ),

//             Container(
//               color: Colors.white,
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Icon(Icons.question_answer),
//                   Text(
//                     'Do you train?',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   Switch.adaptive(
//                     value: _value,
//                     onChanged: (bool value) {
//                       _onChange(value);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 50,
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Icon(Icons.arrow_drop_down_circle),
//                   Text(
//                     'Gender',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   DropdownButton(
//                     value: _selectedGender,
//                     items: _dropdownMenuItemsGender,
//                     onChanged: onChangeDropdownGender,
//                   ),
//                 ],
//               ),
//             ),

//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.bottomCenter,
//                     end: Alignment.topCenter,
//                     colors: [
//                       Color.fromRGBO(64, 76, 120, 1),
//                       Color.fromRGBO(156, 171, 229, 1),
//                     ],
//                   ),
//                 ),
//                 width: double.infinity,
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                  
//                 Text('The amount of water you should be drinking is:'),
    
//                   Text('${waterAmount}'),
//                 ],) 
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
