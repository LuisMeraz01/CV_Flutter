
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<String> imagenes = ['assets/img/image1.jpg', 'assets/img/image2.png', 'assets/img/images3.png', 'assets/img/image4.jpg'];


    return Scaffold(

      appBar: AppBar(
        title: const Text('Informacion personal'),
      ),
      body: Column(
        children: [
          Row( // Fila de foto e informacion personal
            children: [
              const SizedBox(height: 70),
              Image.asset('assets/img/user.png', scale: 8), // Foto personal
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre: Luis Angel Meraz Barajas', style: TextStyle(fontSize: 18)),
                  Text('Fecha de Nacimiento: 28/Enero/2001', style: TextStyle(fontSize: 16)),
                  Text('Telefono: ----------', style: TextStyle(fontSize: 14)),
                  Text('Carrera: Ingenieria en sistemas', style: TextStyle(fontSize: 12)),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Habilidades'),
                    Text('-Java', style: TextStyle(fontSize: 10),),
                    Text('-JavaScript', style: TextStyle(fontSize: 10),),
                    Text('-Python', style: TextStyle(fontSize: 10),),
                    Text('-Bases de datos', style: TextStyle(fontSize: 10),),
                    Text('-Metodologias', style: TextStyle(fontSize: 10),),
                    Text('-Diseño', style: TextStyle(fontSize: 10),)
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Experiencia Academica y laboral'),
                        Text('-Proyecto escolar "Azulmente" para personas con TEA', style: TextStyle(fontSize: 10),),
                        Text('-Servidor web con proyectos hechos en clase de', style: TextStyle(fontSize: 10),),
                        Text('Fullstack (php, javascript)', style: TextStyle(fontSize: 10),),
                        Text('-Trabajador en Cybercafe - +1 año ', style: TextStyle(fontSize: 10),),
                        
                      ],
                    )
                  ],
                )
              ],
            ),
          ), // Fila de habilidades y experiencia laboral y academica
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: SizedBox(
              width: double.infinity,
              height: size.height * 0.35,
              child: Swiper(
                itemCount: imagenes.length,
                layout: SwiperLayout.STACK,
                itemWidth: size.width,
                itemHeight: size.height * 0.5,
                itemBuilder: (_, int index) {
                
                  return GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FadeInImage(
                        placeholder: const AssetImage('assets/img/no-image.jpg'),
                        image: AssetImage(imagenes[index])
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Text('<    Imagenes    >', style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
