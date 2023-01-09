import 'package:flutter/material.dart';
import 'package:pfinal_ud04/application/use_cases/frmRegMatricula.dart';

class frmenuprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text(
            'Menú principal',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: Card(
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => regMatricula(),
                              ));
                        },
                        style: TextButton.styleFrom(
                            primary: Colors.blue,
                            backgroundColor: Colors.blue[100]),
                        child: Text(
                          'Agregar Estudiante',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ))
                  ],
                )),
              ),
            ),
            Card(
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => (),
                        //     ));
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.blue,
                          backgroundColor: Colors.blue[100]),
                      child: Text(
                        'Lista de Estudiantes',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ))
                ],
              )),
            ),
            Card(
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => (),
                        //     ));
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.blue,
                          backgroundColor: Colors.blue[100]),
                      child: Text(
                        'Usuarios',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ))
                ],
              )),
            ),
            Card(
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => (),
                      //     ));
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.blue,
                        backgroundColor: Colors.blue[100]),
                    child: Text(
                      'Perfil de Usuario',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              )),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => (),
                        //     ));
                      },
                      style: TextButton.styleFrom(
                          primary: Colors.blue,
                          backgroundColor: Colors.blue[100]),
                      child: Text(
                        'Cerrar Sesion',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
