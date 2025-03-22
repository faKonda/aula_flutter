import 'package:app_fluxo_livre/src/pages/home_page.dart';
import 'package:app_fluxo_livre/src/pages/login_page.dart';
import 'package:app_fluxo_livre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
  }

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover
          ),
        ),

    child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/et.png', width: 150, height: 150,),
                InputLoginWidget(icon: Icons.person_outline, hint: 'Nome', obscure: false),
                InputLoginWidget(icon: Icons.email_outlined, hint: 'E-mail', obscure: false),
                InputLoginWidget(icon: Icons.document_scanner_outlined, hint: 'CPF', obscure: false),
                InputLoginWidget(icon: Icons.password_outlined, hint: 'Senha', obscure: true),
                InputLoginWidget(icon: Icons.password_outlined, hint: 'Confirmar senha', obscure: false),

            const SizedBox(height: 20,),

            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFAFAE24),
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage())
                );
              }, 
              child: Text('Cadastrar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF031C5F),
                ),
              )
            ),
            ),

            const SizedBox(height: 10,),

            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(195, 255, 255, 255),
                minimumSize: Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage())
                );
              }, 
              child: Text('Cancelar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF031C5F),
                ),
              )
            ),
            ),

            ],
            ),
          ),
        ),
      ),
    );
  }
}