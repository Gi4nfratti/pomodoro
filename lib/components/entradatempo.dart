import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro_store.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    this.dec,
    this.inc,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(CircleBorder()),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  backgroundColor: store.estaTrabalhando()
                      ? MaterialStatePropertyAll(Colors.red)
                      : MaterialStatePropertyAll(Colors.green)),
            ),
            Text(
              '$valor min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: inc,
              child: Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(CircleBorder()),
                padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                backgroundColor: store.estaTrabalhando()
                    ? MaterialStatePropertyAll(Colors.red)
                    : MaterialStatePropertyAll(Colors.green),
              ),
            ),
          ],
        )
      ],
    );
  }
}
