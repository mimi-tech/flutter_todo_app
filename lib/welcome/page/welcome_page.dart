import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/custom_button.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/routes/app_router.gr.dart';

import '../../gen/assets.gen.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration:   BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blueColor,
              blueColor.withOpacity(1),
              whiteColor,
              whiteColor,
            ],


          ),
        ),
        child: Column(

          children: [
            const SizedBox(height: 40,),
            Assets.logo.image(),
            SizedBox(height: height * 0.1,),

            Text("Welcome to Go Task",
                textAlign: TextAlign.center,
                style: theme.headlineSmall ),

            const SizedBox(height: 20,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: kMargin),
              child: Text("A workspace to over 10 million influencers around the global of the world",
                  textAlign: TextAlign.center,
                  style: theme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: darkGrayColor) ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: CustomButton(
          onPressed: (){context.router.replace(const BottomNavBarRoute());},
          title: "Let's Start",
        ),
      ),
    );
  }
}
