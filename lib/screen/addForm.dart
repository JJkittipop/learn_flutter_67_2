import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Person App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const AddForm(),  // ครอบด้วย MaterialApp แล้ว
    );
  }
}

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  Job? _selectedJob = Job.doctor;

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final String name = _nameController.text.trim();
      final int age = int.parse(_ageController.text.trim());

      personList.add(Person(name: name, age: age, job: _selectedJob!));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Data saved successfully")),
      );

      _formKey.currentState!.reset();
      _nameController.clear();
      _ageController.clear();
      setState(() {
        _selectedJob = Job.doctor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Person"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _ageController,
                decoration: const InputDecoration(
                  labelText: 'Age',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<Job>(
                decoration: const InputDecoration(
                  labelText: 'Job',
                ),
                value: _selectedJob,
                items: Job.values.map((job) {
                  return DropdownMenuItem<Job>(
                    value: job,
                    child: Text(job.title),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedJob = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select a job';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),
                onPressed: _submitForm,
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
