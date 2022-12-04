import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/lsimage.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              width: double.infinity,
              padding:
                  const EdgeInsets.only(left: 0, top: 130, right: 0, bottom: 0),
              child: const Text(
                "TrueExplore",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(

              child: Container(

                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 35,
                    left: 35),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,

                  children: [

                    const Text("Enter you email", style:
                    TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(

                          iconColor: Colors.white,
                          filled: true,
                          fillColor: Colors.white10,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          prefixIconColor: Colors.white,
                          hintText: "Email",
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          border: OutlineInputBorder()),
                    ),

                    SizedBox(
                      height: 10,
                    ),


                    const Text("Password", style: TextStyle(color: Colors.white),),
                    TextFormField(
                      decoration: const InputDecoration(
                        helperText: AutofillHints.password,
                        iconColor: Colors.white,
                        filled: true,
                        fillColor: Colors.white10,
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        prefixIcon: Icon(Icons.fingerprint),

                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                        ),

                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(


                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),

                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          onPressed: () => Navigator.pushNamed(context, 'signup'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size(100, 40),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w900),
                          ),

                          child: const Text('Login'),
                          onPressed: () {
                            Navigator.pushNamed(context, 'homepage');
                          },

                        )
                      ],
                    ),

                    const SizedBox(height: 60 - 20),

                    // google button with sign in

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),

                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            height: 20.0,
                            width: 20.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/googleicon.png'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
