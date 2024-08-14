
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/gen/assets.gen.dart';


class TaskProgress extends StatelessWidget {
  const TaskProgress({required this.todoLength,required this.todoProgress, super.key});

  final int todoLength;
  final double todoProgress;
  @override
  Widget build(BuildContext context) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    var theme = Theme.of(context).textTheme;
    int percentageValue = (todoProgress.toDouble() * 100).toInt();
    List<ImageProvider> images = [
       AssetImage(Assets.user1.path),
       AssetImage(Assets.user2.path),
       AssetImage(Assets.user3.path),
       AssetImage(Assets.user4.path),
    ];

    return Container(
      width: width ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            lighterBlueColor,
            lighterBlueColor.withOpacity(1),
            blueColor,
            blueColor,
          ],


        ),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today's progress summary",style: theme.bodyLarge!.copyWith(color: whiteColor),),
            Text("$todoLength Task(s)",style: theme.bodySmall!.copyWith(color: whiteColor,fontWeight: FontWeight.normal),),
            SizedBox(height: height * 0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterImageStack.providers(
                  providers: images,
                  totalCount: 4,
                  itemRadius: 50,
                  backgroundColor: whiteColor,
                    itemBorderWidth: 3,
                  itemBorderColor: whiteColor,
                  extraCountTextStyle: theme.bodyLarge!.copyWith(color: blueColor),
                ),

                Column(
                  children: [
                    Row(
                      children: [
                        Text("Progress", style: theme.bodySmall!.copyWith(color: whiteColor,fontWeight: FontWeight.normal),),
                       const SizedBox(width: 50,),
                        Text("$percentageValue%", style: theme.bodySmall!.copyWith(color: whiteColor,fontWeight: FontWeight.normal),),

                      ],
                    ),
                    SizedBox(
                      width: width * 0.35,
                      height: 10,
                      child: TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                        tween: Tween<double>(
                          begin: 4,
                          end: 6,
                        ),
                        builder: (context, value, _) =>
                            LinearProgressIndicator(value: todoProgress.toDouble(),
                            backgroundColor:const Color(0xFF6fa6e0) ,
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                      ),
                    ),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
