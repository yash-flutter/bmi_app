import 'package:bmi/BMICalculation.dart';
import 'package:bmi/Constants.dart';
import 'package:bmi/Pages/ResultPage.dart';
import 'package:bmi/Components/ButtomButton.dart';
import 'file:///C:/Users/YASH/Desktop/Flutter/bmi/lib/Components/IDButton.dart';
import 'file:///C:/Users/YASH/Desktop/Flutter/bmi/lib/Components/Icon_Content.dart';
import 'file:///C:/Users/YASH/Desktop/Flutter/bmi/lib/Components/ReUseAbleCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selected;
  int height= 180;
  int weight = 60;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: () {
                setState(() {
                  selected=null;
                  height=180;
                  weight=60;
                  age = 22;
                });
              },
              splashColor: Color(0xFFEA1556),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected=Gender.male;
                      });
                    },
                    colour: selected==Gender.male?kactiveCard:inactiveCard,
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected=Gender.female;
                      });
                    },
                    colour: selected==Gender.female?kactiveCard:inactiveCard,
                    cardChild: IconContent(
                      gender: FontAwesomeIcons.venus,
                      lable: 'FEMALE',
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kactiveCard,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HEIGHT',style: klableText,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString() ,style: numberText,),
                        Text('cm',style: klableText,)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEA1556),
                        overlayColor: Color(0x29EA1556),

                      ),
                      child: Slider(
                        value: height.roundToDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue)
                        {
                          setState(() {
                              height=newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: kactiveCard,
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',style: klableText),
                        Text(weight.toString(),style: numberText,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IDButton(
                              onTap: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              logo: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                           IDButton(onTap: (){
                             setState(() {
                               weight++;
                             });
                           },
                           logo: FontAwesomeIcons.plus,
                           )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: kactiveCard,
                        cardChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',style: klableText),
                            Text(age.toString(),style: numberText,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IDButton(
                                  onTap: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  logo: FontAwesomeIcons.minus,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                IDButton(onTap: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  logo: FontAwesomeIcons.plus,
                                )
                              ],
                            )
                          ],
                        ),
                  ))
                ],
              ),
            ),
            BottomButton(
              onPressed: (){
                BMICalculator calc = BMICalculator();
                String bmi=calc.result(height, weight);
                String bmires=calc.bmires();
                String intepretation = calc.intepretation();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new ResultPage(
                  result: bmi,
                  bmires: bmires,
                  inter: intepretation,
                )));
              },
              lable: 'CALCULATE',
            ),
          ],
        ));
  }
}