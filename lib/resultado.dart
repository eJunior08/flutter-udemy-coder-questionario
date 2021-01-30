import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado({
    @required this.pontuacao,
    @required this.reiniciarQuestionario,
  });

  String get fraseResultado {
    if (this.pontuacao < 8)
      return 'Parabéns';
    else if (this.pontuacao < 12)
      return 'Você é bom';
    else if (this.pontuacao < 16)
      return 'Impressionante!';
    else
      return 'Nível Jedi';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
