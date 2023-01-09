import 'package:flutter/material.dart';
import 'package:pfinal_ud04/application/use_cases/frmMenuPrincipal.dart';

class regMatricula extends StatefulWidget {
  const regMatricula({super.key});
  @override
  State<regMatricula> createState() => _frmRegMatriculaState();
}

class _frmRegMatriculaState extends State<regMatricula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de producto'),
        centerTitle: true,
        elevation: 20,
        shadowColor: Colors.blue[400],
        backgroundColor: Colors.deepPurple[700],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(15),
        )),
      ),
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   title: Text('Registro de producto'),
          // ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Text(""),
                  TextField(
                    // controller: codReg,
                    decoration: InputDecoration(
                      hintText: 'Codigo',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    // controller: nomReg,
                    decoration: InputDecoration(
                      hintText: 'Nombre',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    // controller: imgReg,
                    decoration: InputDecoration(
                      hintText: 'Descripcion',
                      prefixIcon: Icon(
                        Icons.description,
                        color: Colors.black,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => frmenuprincipal(),
                                ));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.orange,
                              backgroundColor: Colors.orange[100]),
                          child: Text('Menú Principal')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // ignore: unnecessary_new
                              // pr = new producto(
                              //   int.parse(codReg.text),
                              //   nomReg.text,
                              //   imgReg.text,
                              // );
                              // p.add(pr);
                            });
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.deepPurple,
                              backgroundColor: Colors.deepPurple[100]),
                          child: Text('Guardar')),
                      ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ()),
                            // );
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.blue,
                              backgroundColor: Colors.blue[100]),
                          child: Text('Enviar')),
                    ],
                  )
                ],
              )
            ]),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisSpacing: 50,
              crossAxisSpacing: 300,
            ),
          ),
        ],
      ),
    );
  }
}
