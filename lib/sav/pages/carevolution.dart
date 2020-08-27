import 'package:flutter/material.dart';

class CarEvolution extends StatefulWidget {
	@override
	_CarEvolutionState createState() => _CarEvolutionState();
}

class _CarEvolutionState extends State<CarEvolution> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: const Color(0xFFE9E9E9),
			appBar: new AppBar(
				elevation: 0.1,
				backgroundColor: Colors.white54,
				title: Image.asset("assets/g.png", fit: BoxFit.cover),

			),
		);
	}
}
