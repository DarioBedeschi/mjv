import 'package:flutter/material.dart';
import 'package:jvm/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int titulo;
  final void Function(int tabindex)? callback;

  const AfazeresTab({super.key, required this.titulo, this.callback});

  @override
  State<AfazeresTab> createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  somarMaisum() {
    setState(() {
      acumulador++;
    });
  }

  void handCallBack() {
    if (widget.callback != null) {
      widget.callback!(1);
    }
  }

  @override
  void initState() {
    acumulador = widget.titulo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        const SpacerComponent(),
        ElevatedButton(
          onPressed: () {
            somarMaisum();
          },
          child: const Text('+1'),
        ),
        const SpacerComponent(),
        ElevatedButton(
            onPressed: () {
              handCallBack();
            },
            child: const Text('callBack'))
      ],
    );
  }
}
