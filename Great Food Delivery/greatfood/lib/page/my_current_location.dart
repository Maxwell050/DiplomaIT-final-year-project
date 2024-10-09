

import 'package:flutter/material.dart';
class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  //get context => context;

  void openLocationSearchBox(BuildContext context){
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
        title:const Text("your location") ,
        content: const TextField(
          decoration:  InputDecoration(hintText: "Search address..."),
        ),
          actions: [
           // cancel button
            MaterialButton(onPressed:()=> Navigator.pop(context),
            child: const Text("Cancel"),
            ),


            //save button
            MaterialButton(onPressed:()=> Navigator.pop(context),
              child: const Text("Save"),
            )
          ],
      )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver now",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          GestureDetector(
            onTap: ()=>openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Text("234 Sunyani Campus",
                    style: TextStyle(color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold
                )),
                //drop down menu
                 const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
