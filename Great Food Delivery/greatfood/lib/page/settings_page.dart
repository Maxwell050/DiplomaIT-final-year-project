import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:provider/provider.dart";

import '../theme/theme_provider.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
        children: [
          Container(
            decoration:
             BoxDecoration(color: Theme.of(context).colorScheme.secondary,
             borderRadius: BorderRadius.circular(15)),
            margin:const  EdgeInsets.only(top: 25,left: 25,right: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            //dark mode
            Text("Dark Mode",style: TextStyle(fontWeight:FontWeight.bold,
            color: Theme.of(context).colorScheme.tertiary),),

                     //switch

                      CupertinoSwitch(
                       value:Provider.of<ThemeProvider>(context,listen:false).isDarkMode,
                       onChanged: (value)=>
                        Provider .of<ThemeProvider>(context,listen:false).toggleTheme(),
                     ),
                  ],
                ),
          )
      ],

    ),
    );
  }
}