import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: SizedBox(
          height: 67.5,
          child: Image.asset("assets/images/PaytmLogo.png"),
        ),
        leading: Row(
          children: [
            const SizedBox(
              width: 14,
            ),
            Container(
              width: 42,
              height: 42,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 37,
                    width: 37,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/images/DP.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(222, 242, 253, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                      child: const Icon(
                        Icons.whatshot,
                        size: 14,
                        color: Color(0xff002e6e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            width: 35,
            child: SvgPicture.asset("assets/images/Search.svg"),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromRGBO(186, 229, 250, 1.0),
                Color.fromRGBO(141, 213, 248, 1.0),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          SlidingUpPanel(
            minHeight: size.height * 0.6,
            maxHeight: size.height * 1.0,
            body: Container(
              height: size.height,
              width: size.width,
              color: const Color.fromRGBO(141, 213, 248, 1.0),
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
              ),
            ],
            panel: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    width: 30,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(14),
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0x80002e6e),
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'UPI & Wallet Payment',
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              )
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    'Recent ',
                                    style: GoogleFonts.roboto(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    )
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black26,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
