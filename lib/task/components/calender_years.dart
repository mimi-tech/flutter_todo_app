import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/task/Logic/create_task_provider.dart';

void showYearPicker(BuildContext context, WidgetRef ref) {
  final years = generateYearsList();

  showModalBottomSheet(
    context: context,
    isDismissible: false,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return SizedBox(
            height: 300,
            child: Column(
              children: [
                ListTile(
                  title: Text('Select a Year'),
                  trailing: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: years.length,
                    itemBuilder: (context, index) {
                      final year = years[index];
                      return ListTile(
                        title: Text(year.toString(),style: Theme.of(context).textTheme.bodySmall,),
                        onTap: () {
                          ref.read(selectedYearProvider.notifier).state = year;
                          context.back();
                        },
                        //tileColor: isSelected ? Colors.blue : null,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

List<int> generateYearsList() {
  final currentYear = DateTime.now().year;
  final years = List<int>.generate(currentYear - 1900, (index) => currentYear - index);
  return years;
}