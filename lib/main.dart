import 'package:flutter/material.dart';

void main() {
  runApp(const SolveProblem(title: 'Solvingproblem',));
}

class SolveProblem extends StatelessWidget {
  const SolveProblem({Key? key, required String title}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hard Work',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SolveProblem(title: 'Solve Problem'),
    );
  }
}

class SolvingProblem extends StatefulWidget {
  const SolvingProblem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SolvingProblem> createState() => SolveProblemState();
}

class SolveProblemState extends State<SolvingProblem> {
  bool solveProblem = false;

  void solvingProblem() {
    setState(() {
      solveProblem = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Work smarter',
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: solvingProblem,
        tooltip: 'Increment',
        child: const Icon(Icons.add_to_queue_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
