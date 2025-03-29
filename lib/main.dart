import 'package:flutter/material.dart';

void main() {
  runApp(TimeTrackerApp());
}

class TimeTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProjectManagementScreen(),
    );
  }
}

class ProjectManagementScreen extends StatefulWidget {
  @override
  _ProjectManagementScreenState createState() =>
      _ProjectManagementScreenState();
}

class _ProjectManagementScreenState extends State<ProjectManagementScreen> {
  List<String> projects = ["Project A", "Project B", "Project C"];

  void addProject() {
    setState(() {
      projects.add("New Project ${projects.length + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Project Management")),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(projects[index]),
              leading: Icon(Icons.folder, color: Colors.blue),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addProject,
        child: Icon(Icons.add),
        tooltip: "Add Project",
      ),
    );
  }
}
