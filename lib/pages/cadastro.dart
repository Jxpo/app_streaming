import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 48, 107, 52),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 47, 54),
        title: Text(
          'Cadastro',
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color.fromARGB(226, 30, 25, 25),
              borderRadius: BorderRadius.circular(8)),
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    key: _formkey,
                    autofocus: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.create,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      hintText: "Nome",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 48, 107, 52)),
                      ),
                    ),
                    validator: (String? Name) {
                      if (Name == "" || Name == null) {
                        return ("Este campo não deve estar vazio");
                      }
                      if (Name == "1234567890") {
                        return ("Este campo não deve conter números");
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.receipt,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "Cpf",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 48, 107, 52)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        )),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "Celular",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 48, 107, 52)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        )),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "Digite seu email",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 48, 107, 52)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        )),
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: _showPassword == false ? true : false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                        hintText: "Crie sua senha",
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 48, 107, 52)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        )),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        hintText: "Repita sua senha",
                        
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 48, 107, 52)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Entrar"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 59),
                          backgroundColor: Color.fromARGB(255, 56, 64, 71),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        )),
                  ),
                  Divider(),
                  const Text(
                    "Criar conta",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  buttonEnterclick() {
    if (_formkey.currentState!.validate()) {
      print("form ok");
    } else {
      print("form erro");
    }
  }
}
