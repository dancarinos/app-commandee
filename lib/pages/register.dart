import 'package:flutter/material.dart';
import 'package:teste/components/button.dart';
import 'package:teste/components/form_textfield.dart';
import 'package:teste/constants.dart';
import 'package:teste/pages/home.dart';
import 'package:teste/pages/login.dart';
import 'package:teste/pages/welcome.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final namecontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void cadastrarUsuario() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyHomePage();
      }));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: textoLight,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: fundoLight,
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
               
                const Text(
                  "Criar uma conta",
                  style: TextStyle(
                    color: textoLight,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "para começar, insira seus dados abaixo:",
                  style: TextStyle(
                    color: textoComplementar,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                MyTextfield(
                    icone: Icons.person,
                    controller: namecontroller,
                    hintText: "Nome",
                    obscureText: false,
                    tipoDoTeclado : TextInputType.name
                    ),
                const SizedBox(
                  height: 16,
                ),
                MyTextfield(
                    icone: Icons.person_outline_outlined,
                    controller: usernamecontroller,
                    hintText: "Nome de Usuário",
                    obscureText: false,
                    tipoDoTeclado: TextInputType.name),
                   
                const SizedBox(
                  height: 16,
                ),
                MyTextfield(
                    icone: Icons.email_outlined,
                    controller: emailcontroller,
                    hintText: "Email",
                    obscureText: false,
                    tipoDoTeclado: TextInputType.emailAddress,
                    ),
                const SizedBox(
                  height: 16,
                ),
                MyTextfield(
                    icone: Icons.fingerprint_outlined,
                    controller: passwordcontroller,
                    hintText: "Senha",
                    obscureText: true,
                    tipoDoTeclado: TextInputType.visiblePassword,
                    ),
                const SizedBox(
                  height: 112,
                ),
                SubmitButton(
                    onTap: cadastrarUsuario,
                    text: "Cadastrar",
                    cortexto: Colors.white,
                    corFundo: accentLight,
                    fontWeight: FontWeight.bold
                    ),
                const SizedBox(
                  height: 8,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("Já tem uma conta?",
                      style: TextStyle(color: textoComplementar, fontSize: 12)),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                      child: const Text("Faça login aqui",
                          style: TextStyle(
                              color: primary, fontWeight: FontWeight.bold, fontSize: 12)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      })
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
