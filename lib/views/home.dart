import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({super.key});

  @override
  State<HomeAtm> createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {
  void _abriEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmpresaAtm()));
  }
  void _abriServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ServicoAtm()));
  }
  void _abriCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ClienteAtm()));
  }
  void _abriContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContatoAtm()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(76, 175, 80, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  const Text(
                  "ATM Consultoria",
                  style: TextStyle(
                    color: Colors.black,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.account_balance, 
                  color: Colors.black, 
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white,
                    )
                  ],
                )
              ]
          )),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("imagens/logo.png"),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Empresa");
                    _abriEmpresa();
                  },
                  child: Image.asset(
                    "imagens/menu_empresa.png",
                  ),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    print("Serviço");
                    _abriServico();
                  },
                  child: Image.asset("imagens/menu_servico.png"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Cliente");
                    _abriCliente();
                  },
                  child: Image.asset("imagens/menu_cliente.png"),
                ),
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    print("Contato");
                    _abriContato();
                  },
                  child: Image.asset("imagens/menu_contato.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
