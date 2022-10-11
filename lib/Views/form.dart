part of 'pages.dart';

class form extends StatefulWidget {
  const form({super.key, required this.title});

  final String title;

  static const String routeName = "/form";

  @override
  State<form> createState() => _form();
}

class _form extends State<form> {
  final _bookingForm = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Form(
            key: _bookingForm,
            child: Column(
              children: [
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.account_circle),
                  ),
                  controller: ctrlName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 5
                        ? 'Full name at least 5 character!'
                        : null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid!'
                        : null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                  controller: ctrlPhone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 8
                        ? 'Phone number at least 8 character!'
                        : null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "City",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.location_city),
                  ),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 4
                        ? 'City at least 4 character!'
                        : null;
                  },
                ),
                SizedBox(height: 32),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.save),
                      label: Text(
                        "Booking Now",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Yantramanav',
                        ),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blueAccent),
                      onPressed: () {
                        if (_bookingForm.currentState!.validate()) {
                          Widget bookingConfirmedWidget = Text(
                            'Name: ' +
                                ctrlName.text.toString() +
                                '\nEmail: ' +
                                ctrlEmail.text.toString() +
                                '\nPhone: ' +
                                ctrlPhone.text.toString() +
                                '\nCity: ' +
                                ctrlCity.text.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'YantramanavRegular',
                            ),
                          );
                          showAlertDialog(context, "Booking Confirmation",
                              bookingConfirmedWidget, true);
                        } else {
                          Widget textContent = Text(
                            "Please fill all form field!",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'YantramanavRegular',
                            ),
                          );
                          showAlertDialog(
                              context, "Booking Failed", textContent, false);
                        }
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}

showAlertDialog(
    BuildContext context, String title, Widget content, bool confirmed) {
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Yantramanav',
      ),
    ),
    onPressed: () {
      if (confirmed) {
        Navigator.of(context).pop();
        Navigator.pop(context);
      } else {
        Navigator.of(context).pop();
      }
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Yantramanav',
      ),
    ),
    content: content,
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
