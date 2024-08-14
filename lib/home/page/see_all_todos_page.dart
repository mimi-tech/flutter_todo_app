import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/custom_button.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/home/components/task_progress.dart';
import 'package:flutter_todo_app/home/components/todos_widget.dart';
import 'package:flutter_todo_app/home/logic/todo_provider.dart';


@RoutePage()
class SeeAllTodosPage extends ConsumerStatefulWidget {
  const SeeAllTodosPage({super.key});

  @override
  _SeeAllTodosPageState createState() => _SeeAllTodosPageState();
}

class _SeeAllTodosPageState extends ConsumerState<SeeAllTodosPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final todoNotifier = ref.read(todoProvider.notifier);
    Future.microtask(
            () {
          todoNotifier.loadTodos();
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final todoState = ref.watch(todoProvider);
    var theme = Theme.of(context).textTheme;
    return  Scaffold(
      appBar: AppBar(title: const Text("All Todos"),),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: kMargin, vertical: 20),
        child:  Column(
          children: [

            TaskProgress(todoProgress: todoState.progress,todoLength: todoState.allTodos.length,),
            const SizedBox(height: 20,),

            if(todoState.isLoading)
              const Center(child: CircularProgressIndicator()),
            if(todoState.errorMessage.isNotEmpty)
              Text(todoState.errorMessage,style: theme.titleSmall!.copyWith(color: redColor)),

            if(todoState.allTodos.isEmpty && !todoState.isLoading)
              const Text("You have no todo. Please go and create one"),
         

              Expanded(child: TodosWidget(todos: todoState.allTodos,ref: ref, isTodayTodo: false),),
          ],
        ),

      ),
    );
  }
}
