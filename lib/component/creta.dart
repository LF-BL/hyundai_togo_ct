import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';
import 'package:url_launcher/url_launcher.dart';


class Creta extends StatefulWidget {
  @override
  _CretaState createState() => _CretaState();
}

class _CretaState extends State<Creta> {

  List<AssetImage> imageList = List<AssetImage>();
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(milliseconds: 50);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 72.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/360.png" ,
                  fit: BoxFit.contain,
                  height: 50,
                ),
                (imagePrecached == true)
                    ? ImageView360(
                  key: UniqueKey(),
                  imageList: imageList,
                  autoRotate: autoRotate,
                  rotationCount: rotationCount,
                  rotationDirection: RotationDirection.anticlockwise,
                  frameChangeDuration: Duration(milliseconds: 30),
                  swipeSensitivity: swipeSensitivity,
                  allowSwipeToRotate: allowSwipeToRotate,
                  onImageIndexChanged: (currentImageIndex) {
                    print("currentImageIndex: $currentImageIndex");
                  },
                )
                    : Text("Pré-cache images..."),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Fonctiont Optionnelle:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Rotation automatique: $autoRotate"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Compte de rotation : $rotationCount"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Sens de rotation: $rotationDirection"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                      "Durée de changement de cadre: ${frameChangeDuration.inMilliseconds} milliseconds"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child:
                  Text("Autoriser le balayage pour faire pivoter l'image: $allowSwipeToRotate"),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Sensibilité de balayage: $swipeSensitivity"),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                      Text("Voir les caracteristique technique"),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                      FlatButton(
                        onPressed: _launchLink,
                        child: Text("Ici",style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 35; i++) {
      imageList.add(AssetImage('assets/images/creta/$i.png'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('assets/images/creta/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }

  void _launchLink() async {
    const url = "https://www.hyundai.tg";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Impossible de lancer le lien.";
    }
  }
}

