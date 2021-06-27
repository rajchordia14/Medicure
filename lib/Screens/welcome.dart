import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:medicure/constants.dart';

const Color kDark = Color(0xFF092C37), kBrand = Color(0xFF04BFBF);

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  WelcomeContainer(
                    bgExists: true,
                    imgURL: 'img_welcome1',
                    textHead: 'DON’T FORGET\nYOUR MEDICINES.',
                    textInfo:
                        'Remember what to take. Remember when to take. Remember when to refill. All on your fingertips.',
                  ),
                  WelcomeContainer(
                    bgExists: false,
                    imgURL: 'img_welcome2',
                    textHead: 'DON’T FORGET\nYOUR APPOINTMENTS.',
                    textInfo:
                        'Remember what to go. Remember where to go. Remember what to go for. All on your fingertips.',
                  ),
                  WelcomeContainer(
                    bgExists: false,
                    imgURL: 'img_welcome3',
                    textHead: 'FIND THE BEST\nAND NEAREST SERVICES',
                    textInfo:
                        'Find the nearest helpline with ease. Find the nearest hospital. Find the best doctors. All on your fingertips.',
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: kBrand,
                dotColor: kDark.withOpacity(0.3),
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LSButton(
                  bgColor: kBrand,
                  text: 'SIGN UP',
                  textColor: kBackgroundColor,
                ),
                LSButton(
                  text: 'SIGN IN',
                  bgColor: kBackgroundColor,
                  textColor: kBrand,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LSButton extends StatelessWidget {
  LSButton(
      {required this.text, required this.bgColor, required this.textColor});
  final String text;
  final Color bgColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: bgColor,
            border: Border.all(
              color: kBrand,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: kBrand.withOpacity(0.15),
                offset: Offset(6, 6),
                blurRadius: 24,
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: kheadingTextStyle.copyWith(
                  fontSize: 18, color: textColor, letterSpacing: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeContainer extends StatelessWidget {
  WelcomeContainer(
      {required this.bgExists,
      required this.imgURL,
      required this.textHead,
      required this.textInfo});
  final String textHead, textInfo, imgURL;
  final bool bgExists;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (bgExists == true)
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg_welcome1.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.3),
                  BlendMode.srcOver,
                ),
              ),
            )
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            image: AssetImage('images/$imgURL.png'),
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    textHead,
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: -0.2,
                      color: kDark,
                      height: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    textInfo,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.375,
                      letterSpacing: 0,
                      color: kDark.withOpacity(0.8),
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
