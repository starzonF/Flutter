import 'package:flutter/material.dart';
import 'package:flutter_3/data/local_storage.dart';
import 'package:flutter_3/main.dart';
import 'package:flutter_3/models/task_model.dart';
import 'package:flutter_3/widgets/task_list_item.dart';

class CustumSearchDelegate extends SearchDelegate {
  final List<Task> allTask;

  CustumSearchDelegate({required this.allTask});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query.isEmpty ? null : query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return GestureDetector(
        onTap: () {
          close(context, null);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
          size: 20,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Task> filteredList = allTask
        .where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return filteredList.isNotEmpty
        ? ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              Task oankiListeElemani = filteredList[index];
              return Dismissible(
                background: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Bu Görev Siliniyor"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.delete)
                  ],
                ),
                key: Key(oankiListeElemani.id),
                onDismissed: (direction) async{
                  filteredList.removeAt(index);
                  await locater<LocalStorage>().deleteTask(task: oankiListeElemani);
                },
                child: TaskItem(task: oankiListeElemani),
              );
            },
          )
        : const Center(
            child: Text("Aradığınızı Bulamadık."),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
