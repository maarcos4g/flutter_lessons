import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Formulário'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Digite seu email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você precisa digitar um e-mail';
                  }
                  return null;
                },
                onSaved: (email) {
                  setState(() {
                    email = email;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextFormField(
                decoration: InputDecoration(hintText: 'Digite sua senha'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Você precisa digitar uma senha';
                  }

                  if (value.length < 4) {
                    return 'Senha muito curta';
                  }
                  return null;
                },
                onSaved: (password) {
                  setState(() {
                  password = password;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: Text('Entrar'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Email: $email'),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Text('Senha: $password'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
