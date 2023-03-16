import 'package:flutter/material.dart';

class EventScreenPage extends StatefulWidget {
  const EventScreenPage({Key? key}) : super(key: key);

  @override
  State<EventScreenPage> createState() => _EventScreenPageState();
}

class _EventScreenPageState extends State<EventScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Events', style: TextStyle(fontSize: 18),),
      ),
      body: Container(),
    );
  }
}
