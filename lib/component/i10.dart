import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';
import 'package:url_launcher/url_launcher.dart';


class i10 extends StatefulWidget {
  @override
  _i10State createState() => _i10State();
}

class _i10State extends State<i10> {

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

      body:
          SingleChildScrollView(
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
                        : Text("Pre-Caching images..."),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Spécification:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("Catégorie: Voiture"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("Etiquette du produit: U II 1.1 CRDi 5 vitesses manuelle FWD"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("Nom du modèle: Grand i10"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                      Text("Des places: 5"),
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


                /*RichText(
                  text: new TextSpan(
                    children: [
                      new TextSpan(
                        text: "Veuillez clicker sur le lien pour plus d'information",
                        style: new TextStyle(color: Colors.black),
                      ),
                      new TextSpan(
                        text: 'https://www.hyundai.tg',
                        style: new TextStyle(color: Colors.blue),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            UrlLauncher.launch(
                                "https://www.hyundai.tg/");
                          },
                      ),
                    ],
                  ),
                ),*/


                   /* Padding(
                      padding: const EdgeInsets.all(2.0),
                      child:
                      FlatButton(
                        onPressed: _launchLink,
                        child: Text("Veuillez clicker sur le lien pour plus d'information   https://www.hyundai.tg"),
                      ),
                    ),*/


                  ]
                ),
                ),
              ),
            ),
          );

  }
  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 35; i++) {
      imageList.add(AssetImage('assets/images/i10/$i.png'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('assets/images/i10/$i.png'), context);
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

/*void _launchURL() async {
  const url = "https://www.hyundai.tg";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Impossible de lancer le lien.";
  }
}*/

}



