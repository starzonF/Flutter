import 'package:flutter/material.dart';
import 'package:flutter_3/data/local_storage.dart';
import 'package:flutter_3/main.dart';
import 'package:flutter_3/models/task_model.dart';
import 'package:flutter_3/pages/custum_search_delegate.dart';
import 'package:flutter_3/widgets/task_list_item.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Task> _allTasks;
  late LocalStorage _localStorage;
  @override
  void initState() {
    super.initState();
    _localStorage = locater<LocalStorage>();
    _allTasks = <Task>[];
    _getAllTaskFromDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            _showAddTaskBottomSheet(context);
          },
          child: const Text(
            "Bugün Neler Yapacaksın?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              _showSearchPage();
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              _showAddTaskBottomSheet(context);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: _allTasks.isNotEmpty
          ? ListView.builder(
              itemCount: _allTasks.length,
              itemBuilder: (context, index) {
                Task oankiListeElemani = _allTasks[index];
                return Dismissible(
                  background: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Bu Görev Siliniyor"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.delete)
                      ]),
                  key: Key(oankiListeElemani.id),
                  onDismissed: (direction) {
                    _allTasks.removeAt(index);
                    _localStorage.deleteTask(task: oankiListeElemani);
                    setState(() {});
                  },
                  child: TaskItem(task: oankiListeElemani),
                );
              },
            )
          : const Center(
              child: Text("Hadi Görev Ekle"),
            ),
    );
  }

  void _showAddTaskBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            title: TextField(
              autofocus: true,
              onSubmitted: (value) {
                if (value.length > 3) {
                  Navigator.of(context).pop();
                  DatePicker.showTimePicker(
                    context,
                    showSecondsColumn: false,
                    locale: LocaleType.tr,
                    onConfirm: (time) {
                      var newTask = Task.create(name: value, createdAt: time);
                      _allTasks.insert(0, newTask);
                      _localStorage.addTask(task: newTask);
                      setState(() {});
                    },
                  );
                } else {
                  Navigator.of(context).pop();
                }
              },
              style: const TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                  hintText: "Görev Nedir ?", border: InputBorder.none),
            ),
          ),
        );
      },
    );
  }

  void _getAllTaskFromDb() async {
    _allTasks = await _localStorage.getAllTask();
    setState(() {});
  }

  void _showSearchPage() async {
    await showSearch(
        context: context, delegate: CustumSearchDelegate(allTask: _allTasks));
    _getAllTaskFromDb();
  }
}
