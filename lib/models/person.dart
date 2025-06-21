import 'package:flutter/material.dart';

enum Job {
  doctor(title: "Doctor", image: "assets/images/Dogs.jpg", color: Colors.red),
  teacher(title: "Teacher", image: "assets/images/Dogs.jpg", color: Colors.green),
  artist(title: "Artist", image: "assets/images/Dogs.jpg", color: Colors.purple),
  chef(title: "Chef", image: "assets/images/Dogs.jpg", color: Colors.orange),
  engineer(title: "Engineer", image: "assets/images/Dogs.jpg", color: Colors.blue);

  final String title;
  final String image;
  final Color color;

  const Job({required this.title, required this.image, required this.color});
}

class Person {
  final String name;
  final int age;
  final Job job;

  const Person({
    required this.name,
    required this.age,
    required this.job,
  });
}

List<Person> personList = [
  Person(name: "สมชาย", age: 30, job: Job.doctor),
  Person(name: "สมหญิง", age: 25, job: Job.teacher),
  Person(name: "สมศรี", age: 28, job: Job.artist),
  Person(name: "สมปอง", age: 35, job: Job.chef),
  Person(name: "สมจิตร", age: 40, job: Job.engineer),
];
