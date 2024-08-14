import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/custom_button.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/home/model/todo_task/todo_task.dart';
import 'package:flutter_todo_app/routes/app_router.gr.dart';
import 'package:flutter_todo_app/task/Logic/create_task_provider.dart';
import 'package:flutter_todo_app/task/components/calender.dart';
import 'package:flutter_todo_app/utils/appbar_action.dart';
import 'package:flutter_todo_app/utils/form_validator.dart';
import 'package:intl/intl.dart';

@RoutePage()
class CreateTaskPage extends ConsumerWidget {
   CreateTaskPage({super.key});
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _dateAndTime = TextEditingController();
  final _startTime = TextEditingController();
  final _endTime = TextEditingController();
  final _descriptionController = TextEditingController();
  List<String> category = ["Design", "Development", "Research"];
   Random random = Random();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var height  = MediaQuery.of(context).size.height;
    var width  = MediaQuery.of(context).size.width;
    var theme = Theme.of(context).textTheme;
    final spacing = height * 0.03;
    final createTaskState = ref.watch(createTaskProvider);
    _dateAndTime.text = createTaskState.selectedDate ?? "";
    _startTime.text = createTaskState.startTime ?? "";
    _endTime.text = createTaskState.endTime ?? "";

    var pickedDate = ref.watch<DateTime>(calenderPickedDate);
    String formattedDate = DateFormat('dd MMMM, EEEE').format(DateTime.now());
    String formattedDate1 = DateFormat('dd MMMM, EEEE').format(pickedDate);
    //_dateAndTime.text = formattedDate == formattedDate1 ? '':formattedDate1;
    _dateAndTime.text = formattedDate1;

    if(createTaskState.success && !createTaskState.isLoading){
      context.router.replace(const BottomNavBarRoute());

    }

    return Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppbarAction(icon: Icons.arrow_back_ios,onPressed: (){context.back();},),
        ),
        title:  const Text("Create New Task"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: kMargin, vertical: kMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(createTaskState.errorMessage.isNotEmpty)

              Text(createTaskState.errorMessage, style: theme.titleLarge!.copyWith(color: redColor),),
              SizedBox(height: spacing,),
              Text("Create New Task", style: theme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),

              SizedBox(height: spacing,),

            Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _titleController,
                    autocorrect: true,
                    cursorColor: blueColor,
                    keyboardType: TextInputType.text,
                    style: theme.bodyLarge,
                    validator: FormValidator.validateTitle,
                    decoration: const InputDecoration(
                      hintText: "UI Design",

                    ),

                  ),
                   SizedBox(height: spacing,),
                  Text("Category", style: theme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomButton(
                            onPressed: (){
                              ref.read(createTaskProvider.notifier).selectTaskCategory(category[index]);},
                          title:category[index],
                          backgroundColor: createTaskState.category == category[index]
                           ?blueColor
                           :inactiveColor,
                          textColor: createTaskState.category == category[index]
                              ?whiteColor
                              :darkColor,
                        ),
                      );

                      }),
                    ),
                   SizedBox(height: spacing,),
                  Text("Date & Time", style: theme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                          isDismissible: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => const Calender()
                      );
                    },
                    child: AbsorbPointer(
                      child: TextFormField(
                        controller: _dateAndTime,
                        autocorrect: true,
                        cursorColor: blueColor,
                        style: theme.bodyLarge,
                        validator: FormValidator.validateDateAndTime,
                        decoration: const InputDecoration(
                          hintText: "05 April, Tuesday",
                           suffixIcon: Icon(Icons.calendar_month,color: blueColor,)
                        ),

                      ),
                    ),
                  ),
                   SizedBox(height: spacing,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Start time", style: theme.titleLarge,),
                            const SizedBox(height: 20,),
                            GestureDetector(
                              onTap: (){
                                ref.read(createTaskProvider.notifier).showTime(context);
                              },
                              child: AbsorbPointer(
                                child: TextFormField(
                                  controller: _startTime,
                                  autocorrect: true,
                                  cursorColor: blueColor,
                                  style: theme.bodyLarge,
                                  validator: FormValidator.validateStartTime,
                                  decoration: const InputDecoration(
                                      hintText: "09:00 AM",
                                      suffixIcon: Icon(Icons.arrow_drop_down_rounded,color: blueColor,)
                                  ),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: width * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("End time", style: theme.titleLarge,),
                             SizedBox(height: spacing,),
                            GestureDetector(
                              onTap: (){
                                ref.read(createTaskProvider.notifier).showEndTime(context);
                              },
                              child: AbsorbPointer(
                                child: TextFormField(
                                  controller: _endTime,
                                  autocorrect: true,
                                  cursorColor: blueColor,
                                  style: theme.bodyLarge,
                                  validator: FormValidator.validateEndTime,
                                  decoration: const InputDecoration(
                                      hintText: "11:00 AM",
                                      suffixIcon: Icon(Icons.arrow_drop_down_rounded,color: blueColor,)
                                  ),
                                                            
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: spacing,),
                  Text("Description", style: theme.titleLarge!.copyWith(fontWeight: FontWeight.bold),),
                   SizedBox(height: spacing,),
                  TextFormField(
                    controller: _descriptionController,
                    autocorrect: true,
                    cursorColor: blueColor,
                    maxLines: null,
                    maxLength: null,
                    keyboardType: TextInputType.text,
                    style: theme.bodyLarge,
                    validator: FormValidator.validateDesc,
                    decoration: const InputDecoration(
                      hintText: "Research design path there are many career paths within the field of design...",

                    ),

                  ),


                ],
              ),
            ),
              SizedBox(height: spacing,),

              SizedBox(
                  width: double.infinity,
                  child: CustomButton(onPressed: (){
                  if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  FocusScopeNode currentFocus = FocusScope.of(context);

                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  int randomNumber = random.nextInt(100);
                  final newTodo = TodoTask(
                  id: randomNumber.toString(),
                  title: _titleController.text,
                  category: createTaskState.category,
                  selectedDate: pickedDate,
                  startTime: _startTime.text,
                  endTime: _endTime.text,
                  description: _descriptionController.text,
                  checked: false,
                  );

                  ref.read(createTaskProvider.notifier).saveTodo(newTodo);

                  }}, title: "Create Task", isLoading: createTaskState.isLoading,))

            ],
          ),
        ),
      ),
    );
  }
}
