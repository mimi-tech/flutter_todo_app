import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/home/logic/todo_provider.dart';
import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:intl/intl.dart';
class TodosWidget extends StatelessWidget {
  const TodosWidget({required this.todos,required this.ref,required this.isTodayTodo, super.key});
  final List<TodoTask> todos;
  final WidgetRef ref;
  final bool isTodayTodo;

  @override
  Widget build(BuildContext context) {
    final todoNotifier = ref.read(todoProvider.notifier);
    var theme = Theme.of(context).textTheme;
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          var item = todos[index];
          String formattedDate = DateFormat('dd MMMM, EEEE').format(item.selectedDate);
          return Column(
            children: [

              const SizedBox(height: 20,),
              Card(
                  child:  ListTile(
                    leading: IconButton(onPressed: (){
                      todoNotifier.toggleTodoChecked(item.id,item.checked?false:true , isTodayTodo);
                    },icon:Icon(item.checked ?Icons.check_box:Icons.check_box_outline_blank) ,),
                    title: Text(item.title,style: theme.bodyLarge,),
                    subtitle: Text("${item.startTime} - ${item.endTime}\n$formattedDate", style: theme.titleSmall!.copyWith(color: grayColor)),
                    trailing:IconButton(onPressed: (){
                      todoNotifier.deleteTodo(item.id);
                    },icon:const Icon(Icons.delete, color: redColor,) ,) ,


                  )


              ),
            ],
          );
        });
  }
}
