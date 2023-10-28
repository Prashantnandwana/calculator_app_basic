import 'package:flutter/material.dart';

  class CalculatorView  extends StatefulWidget {
  const CalculatorView ({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;
  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
    void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          // calculator display
           CalculatorDispaly(hint: "enter first number", controller: displayOneController),
           CalculatorDispaly(hint: "eneter 2nd number", controller: displayTwoController),
           SizedBox(height: 30,),
           Text(z.toString(),style: TextStyle(
            fontSize: 60,fontWeight: FontWeight.bold,
           ),),
           Spacer(),
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(onPressed: (){
                setState(() {
                  z=num.tryParse(displayOneController.text)! + 
              num.tryParse(displayTwoController.text)!;
                });
                },child: Icon(Icons.add),),
              FloatingActionButton(onPressed: (){z=x-y;},child: Icon(Icons.format_underline),),
              FloatingActionButton(onPressed: (){z=x*y;},child: Icon(Icons.star),),
              FloatingActionButton(onPressed: (){z=x/y;},child: Icon(Icons.percent),),

            ],
           )
          // expand
    
          // calculator button
        ],
      ),
    );
  }
}

class CalculatorDispaly extends StatelessWidget {
  var hint;

   CalculatorDispaly({
    super.key,this.hint = "enter a number",required this.controller
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 3.0,
        )
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black
        )
      ),
        labelText: "0",
        hintText: "enter a number",hintStyle: TextStyle(color: Colors.white)
      ),
    );
  }
}