import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 88, 169, 38),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 161, 48),
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.mail), hintText: "Informe seu E-mail"),
                    validator: (String? email) {
                      if (email == "" || email == null) {
                        return "O e-mail não pode ser vazio";
                      }
                      if (email.length < 6) {
                        return "O e-mail está muito curto";
                      }
                      if (!email.contains("@")) {
                        return "O e-mail é invalido";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: _showPassword == false ? true: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(child: Icon(
                          _showPassword == false ? Icons.visibility_off
                          : Icons.visibility,),
                        onTap: (){
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        ),
                        iconColor: Colors.blue,
                        hintText: "Informe sua senha"),
                    validator: (String? password) {
                      if (password == "" || password == null) {
                        return ("A senha não pode ser vazia");
                      }
                      if (password.length < 8) {
                        return ("A senha deve ter mais de 8 caracteres");
                      }
                      return null;
                    },
                    
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          buttonEnterclick();
                        },
                        child: Text("Entrar"),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 59),
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                        )),
                  ),
                  Divider(),
                  GestureDetector(
                    child: const Text(
                      "Me cadastrar",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/cadastro');
                    },
                  ),
                  const Text("Se não tiver cadastro clique no link a cima")
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
