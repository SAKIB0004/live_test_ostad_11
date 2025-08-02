import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Management',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: AddEmployeeScreen(),
    );
  }
}


class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a TextEditingController for each field (optional but useful)
    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final salaryController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:Text('Add Employee'),
        backgroundColor: Colors.purple.shade100,
      ),
      backgroundColor: Colors.purple.shade50,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration:InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter employee name'
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter employee age'
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Salary',
                  hintText: 'Enter employee salary'
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // You can handle the logic to save data here
                String name = nameController.text;
                String age = ageController.text;
                String salary = salaryController.text;
                print('Employee: $name, Age: $age, Salary: $salary');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade100,
                foregroundColor: Colors.purple.shade800,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text('Add Employee'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
