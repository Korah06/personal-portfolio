import 'package:flutter/material.dart';
import 'package:my_portfolio/data/model/send_email_service.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor, ingrese un nombre";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Nombre",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: emailController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor, ingrese un correo";
              }
              if (!value.contains("@")) {
                return "Por favor, ingrese un correo válido";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Correo",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: subjectController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor, ingrese un asunto";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Asunto",
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: messageController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "Por favor, ingrese un mensaje";
              }
              return null;
            },
            maxLines: 3,
            decoration: const InputDecoration(
              labelText: "Mensaje",
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () async {
                  bool res = await SendEmailService.sendEmail(
                    name: nameController.text,
                    email: emailController.text,
                    subject: subjectController.text,
                    message: messageController.text,
                  );

                  if (res) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Mensaje enviado correctamente"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Error al enviar el mensaje"),
                      ),
                    );
                  }
                },
                child: Text("Enviar",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
