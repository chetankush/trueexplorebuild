import 'package:flutter/material.dart';
class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  State<MySignup> createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/lsimage.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding:
              const EdgeInsets.only(left: 0, top: 42, right: 0, bottom: 0),
              child: const Text(
                "TrueExplore",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RaleWay',
                  fontSize: 33,
                ),
              ),
            ),
            SingleChildScrollView(

              child: Container(

                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    right: 35,
                    left: 35),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    const Text("Full name", style:
                    TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          helperText: AutofillHints.email,
                          iconColor: Colors.white,
                          focusColor: Colors.white,
                          filled: true,
                          fillColor: Colors.white10,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person_outline_outlined),

                          hintText: "full-name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder()),
                    ),



                    const SizedBox(
                      height: 5,
                    ),


                    const Text("Enter your email", style:
                    TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                          helperText: AutofillHints.email,
                          iconColor: Colors.white,
                          focusColor: Colors.white,
                          filled: true,
                          fillColor: Colors.white10,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Colors.white),
                          ),
                          prefixIcon: Icon(Icons.person_outline_outlined),

                          hintText: "email",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder()),
                    ),


                    const SizedBox(
                      height: 5,
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

                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },

                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size(100, 40),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w900),
                          ),
                          child: const Text('Sign up'),
                          onPressed: () {},
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
                            'Sign up with Google',
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
