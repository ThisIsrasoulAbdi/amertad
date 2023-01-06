import 'package:amertad/data/dio_client.dart';
import 'package:amertad/view/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controllerId = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  bool isHide = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 32, 22, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: themeData.textTheme.headline6,
              ),
              const SizedBox(
                height: 84,
              ),
              TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    label: const Text('Email Or Phone'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 22,
              ),
              TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.visiblePassword,
                autocorrect: isHide,
                obscureText: isHide,
                decoration: InputDecoration(
                    prefixIcon:
                        const Icon(CupertinoIcons.person, color: Colors.grey),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                        icon: Icon(
                          isHide
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_solid,
                          size: 22,
                        )),
                    label: const Text('Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password ?',
                        style: themeData.textTheme.headline6!.copyWith(
                            color: Colors.blue.shade700, fontSize: 15),
                      )),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.blue.shade700,
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        content:
                            const Text('Please Click To Create New Account')));
                    try {
                      login(_controllerId.text, _controllerPass.text);
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Continue'),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(CupertinoIcons.arrow_right)
                    ],
                  )),
              const SizedBox(
                height: 22,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                      children: <TextSpan>[
                        const TextSpan(text: 'New Here? '),
                        TextSpan(
                            text: 'Create an Account',
                            style: TextStyle(
                                fontFamily: ' roboto',
                                color: Colors.blue.shade700))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
