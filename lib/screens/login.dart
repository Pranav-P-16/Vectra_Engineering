import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vectraengineering/screens/homescreen.dart';
import '../../main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/dialogues.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate=false;
  bool agree=false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 500), (){
      setState(() {
        _isAnimate=true;
      });
    });
  }
  // _handleGoogleBtnClick() {
  //   Dialogues.showProgressBar(context);
  //   _signInWithGoogle().then((user) async {
  //     Navigator.pop(context);
  //     if (user!=null) {
  //       if ((await APIs.userExists())){
  //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>  HomePage()));
  //       } else {
  //         await APIs.createUser().then((value) {
  //           Navigator.pushReplacement(context,
  //               MaterialPageRoute(builder: (_)=> HomePage()));
  //         });
  //       }
  //     }
  //   });
  // }
  //
  // Future<UserCredential?> _signInWithGoogle() async {
  //   try {
  //
  //     await InternetAddress.lookup('google.com');
  //     // Trigger the authentication flow
  //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //     // Obtain the auth details from the request
  //     final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //     // Create a new credential
  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //
  //     // Once signed in, return the UserCredential
  //     return await APIs.auth.signInWithCredential(credential);
  //   } catch(e) {
  //     log('\n _signInWithGoogle: $e');
  //     Dialogues.showSnackBar(context, "Something went wrong!!!",Colors.red);
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;

    return Scaffold(
      body:
      Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: -mq.height*.156,
              right: -mq.width*.33,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
              )),
          Positioned(
              bottom: -mq.height*.186,
              left: -mq.width*.42,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                ),
              )),
          Positioned(
              top: mq.height*.15,
              left: mq.width*.1,
              child: AnimatedOpacity(
                opacity: _isAnimate?1:0,
                duration: Duration(milliseconds: 1500),
                child: RichText(
                    text: TextSpan(
                        style: GoogleFonts.oswald(),
                        children: [
                          TextSpan(
                              text:'Vectra Engineering...',
                              style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black,fontSize: 45)),
                          TextSpan(
                              text:'\n'+'\t'*10+'Undertaking contracts....',
                              style: TextStyle(fontWeight: FontWeight.w300,color: Colors.red,fontSize: 30)),
                          TextSpan(
                              text:'\n'+'\t'*19+'and consultancies...',
                              style: TextStyle(fontWeight: FontWeight.w300,color: Colors.red,fontSize: 30))])),
              )),
          AnimatedPositioned(
              top: _isAnimate?mq.height*.35:mq.height*.30,
              right: mq.width*.15,
              width: mq.width*.7,
              duration: const Duration(milliseconds: 1000),
              child: AnimatedOpacity(
                  opacity: _isAnimate?1:0,
                  duration: Duration(milliseconds: 1500),
                  child: Image.asset('assets/images/logo2.jpg',height: 250,))),
          Positioned(
              top: mq.height*.74,
              height: mq.height*.05,
              child: AnimatedOpacity(
                opacity: _isAnimate?1:0,
                duration: Duration(milliseconds: 1500),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          focusColor: Colors.lightBlue,
                          activeColor: Colors.red,
                          value: agree,
                          onChanged: (newValue) {
                            setState(() {
                              agree=!agree;
                            });
                          }
                      ),
                      Text('I Accept the ',style: GoogleFonts.oswald(fontSize: 15,fontWeight: FontWeight.w400),),
                      InkWell(
                        onTap: () => launchUrl(Uri.parse('https://doc-hosting.flycricket.io/twinkleoii-privacy-policy/ab73f448-53b5-4c4a-9bea-46692ecab34b/privacy')),
                        child: Text('Privacy Policy',style: GoogleFonts.oswald(
                          fontSize: 15,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,
                        ),),
                      ),
                      Text(' & ',style: GoogleFonts.oswald(
                          fontSize: 15,fontWeight: FontWeight.w400
                      ),),
                      InkWell(
                        onTap: () => launchUrl(Uri.parse('https://doc-hosting.flycricket.io/twinkleoii-terms/a179d15e-7d93-49eb-884f-7e3c504ec347/terms')),
                        child: Text('Terms',style: GoogleFonts.oswald(
                          fontSize: 15,fontWeight: FontWeight.w400,decoration: TextDecoration.underline,
                        ),),
                      ),
                      SizedBox(width: 20.0),

                    ]),
              )),
          Positioned(
              top: mq.height*.82,
              width: mq.width*.9,
              height: mq.height*.065,
              child: AnimatedOpacity(
                opacity: _isAnimate?1:0,
                duration: Duration(milliseconds: 1500),
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                    onPressed: (){
                      Dialogues.showSnackBar(context, "✅ Signed in successfully", Colors.black54);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                      // if (agree==true) {
                      //   //_handleGoogleBtnClick();
                      //   Dialogues.showSnackBar(context, "On Progress...", Colors.black54);
                      // } else {
                      //   Dialogues.showSnackBar(context, "Accept policy & terms to continue!!!",Colors.red.shade400);
                      // }
                    }, icon: Image.asset('assets/images/google.png',height: 30,),
                    label: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 25),
                          children: [
                            TextSpan(text: ' Log in with ',style: GoogleFonts.oswald(color: Colors.white)),
                            TextSpan(
                                text:'Google',
                                style: GoogleFonts.oswald(fontWeight: FontWeight.w500,color: Colors.white)),

                          ]),
                    )),
              )),
          Positioned(
              top: mq.height*.895,
              child: Text("New Employee?",style: GoogleFonts.oswald(
                color: Colors.red,decoration: TextDecoration.underline,fontSize: 16
              ),)),
          Positioned(
              top: mq.height*.965,
              child:  AnimatedOpacity(
                opacity: _isAnimate?1:0,
                duration: Duration(milliseconds: 1500),
                child: InkWell(
                  onTap: () => launchUrl(Uri.parse('https://github.com/Pranav-P-16')),
                  child: Text(
                    'Made with love ❤',
                    style: GoogleFonts.oswald(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
              )
          )],),
    );
  }
}
