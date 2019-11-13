import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class ActivityScreenOption extends StatefulWidget {
  @override
  _ActivityScreenOption createState() => _ActivityScreenOption();
}

class _ActivityScreenOption extends State<ActivityScreenOption> {
  bool isMale = true;
  bool isFemale = false;

  void _isMale() {
    setState(() {
      isMale = false;
      isFemale = true;
    });
  }

  void _isFemale() {
    setState(() {
      isMale = true;
      isFemale = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.7;

    return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 15.0, left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                                  child: Text(
                    'Please select your level of activity',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: cWidth,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 5.0, left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'It is necessary to calculate an individual rate of water consumption',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Image.asset(
              'assets/womenWorkout.jpg',
              width: cWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Container(
            width: cWidth,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 55.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    textColor: Colors.white,
                    color: isMale ? Colors.blueAccent[400] : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Male',
                      style: isMale
                          ? TextStyle(fontSize: 20)
                          : TextStyle(
                              fontSize: 17.0,
                              color: Colors.black.withOpacity(0.8),
                            ),
                    ),
                    onPressed: isMale ? _isMale : _isFemale,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: isFemale ? Colors.blueAccent[400] : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 5,
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Female',
                      style: isFemale
                          ? TextStyle(
                              fontSize: 20,
                            )
                          : TextStyle(
                              fontSize: 17.0,
                              color: Colors.black.withOpacity(0.8),
                            ),
                    ),
                    onPressed: isFemale ? _isFemale : _isMale,
                  ),
                ],
              ),
            ),
          ),
          Text('is Male? : ${isMale}'),
          Text('is Female? : ${isFemale}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                height: 50,
                minWidth: 300,
                child: GradientButton(
                  child: Text('Continue'),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.blueAccent[400],
                      Colors.lightBlue[300],
                    ],
                  ),
                  elevation: 25,
                  callback: () {},
                ),
              ),
            ],
          )
        ],
    );
      
    
  }
}
