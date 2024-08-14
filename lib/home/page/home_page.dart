import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/custom_button.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/home/components/task_progress.dart';
import 'package:flutter_todo_app/home/components/todos_widget.dart';
import 'package:flutter_todo_app/home/logic/todo_provider.dart';
import 'package:flutter_todo_app/routes/app_router.gr.dart';


@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var height  = MediaQuery.of(context).size.height;
    var theme = Theme.of(context).textTheme;
    final todoState = ref.watch(todoProvider);

    return  Container(
        margin: EdgeInsets.symmetric(horizontal: kMargin, vertical: 20),
        child:  Column(
          children: [

             TaskProgress(todoProgress: todoState.todayTodoProgress,todoLength: todoState.todos.length,),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's Task", style: theme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),

                GestureDetector(
                    onTap: ()=>context.router.push(const SeeAllTodosRoute()),
                    child: Text("See All", style: theme.titleSmall!.copyWith(color: grayColor),)),

              ],
            ),
            const SizedBox(height: 20,),

            const Text("If you want to see all your todos, please tap on see All"),
            if(todoState.isLoading)
              const Center(child: CircularProgressIndicator()),
            if(todoState.errorMessage.isNotEmpty)
              Text(todoState.errorMessage,style: theme.titleSmall!.copyWith(color: redColor)),

            if(todoState.todos.isEmpty && !todoState.isLoading)
               Text("You have no todo for today. Tap on see all to see all your todos",style: theme.titleSmall!.copyWith(color: redColor)),

            Expanded(
              child: TodosWidget(todos: todoState.todos,ref: ref, isTodayTodo: true),
            ),
          ],
        ),

    );
  }
}
