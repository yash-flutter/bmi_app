import 'package:bmi/Components/ButtomButton.dart';
import 'package:bmi/Constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.result,@required this.bmires,@required this.inter});
  final String result;
  final String inter;
  final String bmires;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(

        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Your Result',
                textAlign: TextAlign.start,
                style: TextStyle(
                color: Colors.white,
                fontSize: 60
              ),),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Text(bmires,style: TextStyle(fontSize: 25,color: Colors.green),)),
                    Center(child: Text(result,style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold),)),
                    Center(child: Text(inter,style: TextStyle(fontSize:25),textAlign: TextAlign.center,),)
                  ],
                ),
                decoration: BoxDecoration(
                    color: kactiveCard,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          ),
          BottomButton(
            lable: 'Find Again',
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
