import 'package:flutter/material.dart';
import 'package:pfinal_ud04/application/use_cases/frmMenuPrincipal.dart';
import 'package:pfinal_ud04/application/use_cases/frmSegTipo_Usuario.dart';

//import 'package:pfinal_ud04/application/use_cases/frmSegTipo_Usuario.dart';
class frmSegLogin extends StatefulWidget {
  @override
  State<frmSegLogin> createState() => _frmSegLogin();
}

class _frmSegLogin extends State<frmSegLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Login'),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Container(
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(300.0),
                        child: Image.network(
                            'https://img2.freepng.es/20190702/tl/kisspng-computer-icons-portable-network-graphics-avatar-tr-clip-directory-professional-transparent-amp-png-5d1bfa95e508d4.2980489715621147099381.jpg')),
                  ),
                  TextField(
                    //controller: ,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_outlined,
                        size: 30,
                      ),
                      hintText: 'Usuario',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
                    ),
                  ),
                  TextField(
                    //controller: ,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.blue,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => frmenuprincipal()));
                    },
                    child: Text('Iniciar'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      '\n¿Registrar Usuario?\n', //textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ]),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
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
