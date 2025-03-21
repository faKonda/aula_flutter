import 'package:app_fluxo_livre/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover
        )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
              width: 150,
              child: Image(image: AssetImage('assets/images/et.png')),
            ),
            InputLoginWidget(
              icon: Icons.person_outline, 
              hint: 'Usuário', 
              obscure: false
            ),
            
            const SizedBox(height: 10,),

            InputLoginWidget(
              icon: Icons.password_outlined, 
              hint: 'Senha', 
              obscure: true
            ),

            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFAFAE24),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                )
              ),
              onPressed: (){}, 
              child: Text('Acessar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF031C5F),
                ),
              )
            ),
            ),

            const SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(195, 255, 255, 255),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: (){}, 
              child: Text('Cadastrar-se',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF031C5F),
                ),
              )
            ),
            ),

          ]
        ),
      ),
    );
  }
}