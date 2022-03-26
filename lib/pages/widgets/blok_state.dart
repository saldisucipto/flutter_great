import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/class/color_event.dart';

class BlokState extends StatefulWidget {
  const BlokState({Key? key}) : super(key: key);

  @override
  State<BlokState> createState() => _BlokStateState();
}

class _BlokStateState extends State<BlokState> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    // TODO: implement dispose
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                // make event
                bloc.eventSink.add(ColorEvenet.to_amber);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                // make event
                bloc.eventSink.add(ColorEvenet.to_light_blue);
              },
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Block State"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Container(
                    color: Colors.amber, child: Text(snapshot.data.toString())),
              );
            },
          ),
        ),
      ),
    );
  }
}
