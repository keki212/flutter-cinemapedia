import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  // FullScreenLoader({super.key});
   const  FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Cargando contenido emocionante...',
      'Preparando la mejor experiencia para ti...',
      'Cargando películas y series...',
      'Un momento, estamos casi listos...',
      'Buscando las mejores recomendaciones para ti...',
      'Casi listo, gracias por tu paciencia...',
      'Cargando... ¡la espera valdrá la pena!',
      'Esto esta tomando un poco más de lo esperado...',
    ];
    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  // final messages = <String>[
  //   'Cargando contenido emocionante...',
  //   'Preparando la mejor experiencia para ti...',
  //   'Cargando películas y series...',
  //   'Un momento, estamos casi listos...',
  //   'Buscando las mejores recomendaciones para ti...',
  //   'Casi listo, gracias por tu paciencia...',
  //   'Esto esta tomando un poco más de lo esperado...',
  //   'Cargando... ¡la espera valdrá la pena!',
  // ];

  // Stream<String> get stream async* {
  //   for (final message in messages) {
  //     await Future.delayed(const Duration(milliseconds: 1200));
  //     yield message;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere por favor...'),
          SizedBox(height: 20),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 20),

          StreamBuilder(
            stream: getLoadingMessages(),
            //stream: stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return SizedBox.shrink();
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
