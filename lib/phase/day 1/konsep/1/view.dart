import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mastering/phase/day%201/konsep/1/pattern_bloc.dart';
import 'package:mastering/phase/day%201/konsep/1/user_models.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PatternBloc(),
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }

  Widget buildTile(BuildContext context, Model model) {
    return Card(
      child: ListTile(
        title: Text(model.name),
        subtitle: Text(model.email),
        trailing: Row(
          children: [IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.remove))],
        ),
      ),
    );
  }
}
