import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Excelerate Learning Hub'),
      // ),
      body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: IntrinsicHeight(
									child: Container(
										color: Color(0xFFECF2FF),
										width: double.infinity,
										height: double.infinity,
										child: SingleChildScrollView(
											padding: const EdgeInsets.only( top: 78, right: 31),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: [
													Container(
														margin: const EdgeInsets.only( bottom: 24, left: 38),
														width: 158,
														child: Text(
															"Welcome Back \nAlex!",
															style: TextStyle(
																color: Color(0xFF000000),
																fontSize: 24,
															),
														),
													),
													Container(
														margin: const EdgeInsets.only( bottom: 26, left: 37),
														height: 1,
														width: double.infinity,
														child: Image.network(
															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/MI8foDNPol/sfqzz3cc_expires_30_days.png",
															fit: BoxFit.fill,
														)
													),
													IntrinsicHeight(
														child: Container(
															alignment: Alignment.center,
															decoration: BoxDecoration(
																borderRadius: BorderRadius.circular(33),
																color: Color(0xFFD9D9D9),
															),
															margin: const EdgeInsets.only( bottom: 40, left: 31),
															width: double.infinity,
															child: TextField(
																style: TextStyle(
																	color: Color(0xFF000000),
																	fontSize: 14,
																),
																onChanged: (value) { 
																	// setState(() { textField1 = value; });
																},
																decoration: InputDecoration(
																	hintText: "Search Course",
																	isDense: true,
																	contentPadding: const EdgeInsets.only( top: 15, bottom: 15, left: 25, right: 25),
																	border: InputBorder.none,
																	focusedBorder: InputBorder.none,
																	filled: false,
																),
															),
														),
													),
													Container(
														margin: const EdgeInsets.only( bottom: 24, left: 39),
														child: Text(
															"Recommended Courses",
															style: TextStyle(
																color: Color(0xFF000000),
																fontSize: 15,
															),
														),
													),
													IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( left: 35),
															width: double.infinity,
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( bottom: 5),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						color: Color(0xFFD9D9D9),
																						height: 157,
																						width: double.infinity,
																						child: SizedBox(),
																					),
																					IntrinsicHeight(
																						child: Container(
																							color: Color(0xFFEAE9E9),
																							padding: const EdgeInsets.only( top: 20, bottom: 20, left: 14, right: 14),
																							width: double.infinity,
																							child: Row(
																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																								children: [
																									Text(
																										"Wireframing Basics\nDr. Smith",
																										style: TextStyle(
																											color: Color(0xFF000000),
																										),
																									),
																									Container(
																										width: 55,
																										child: Text(
																											"Duration: 1 Hr\nPaid",
																											style: TextStyle(
																												color: Color(0xFF000000),
																												fontSize: 9,
																											),
																											textAlign: TextAlign.right,
																										),
																									),
																								]
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																	IntrinsicHeight(
																		child: Container(
																			margin: const EdgeInsets.only( bottom: 5),
																			width: double.infinity,
																			child: Column(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					Container(
																						color: Color(0xFFD9D9D9),
																						height: 157,
																						width: double.infinity,
																						child: SizedBox(),
																					),
																					IntrinsicHeight(
																						child: Container(
																							color: Color(0xFFEAE9E9),
																							padding: const EdgeInsets.only( top: 22, bottom: 22, left: 14, right: 14),
																							width: double.infinity,
																							child: Row(
																								mainAxisAlignment: MainAxisAlignment.spaceBetween,
																								children: [
																									Text(
																										"Wireframing Basics\nDr. Smith",
																										style: TextStyle(
																											color: Color(0xFF000000),
																										),
																									),
																									Container(
																										width: 55,
																										child: Text(
																											"Duration: 1 Hr\nPaid",
																											style: TextStyle(
																												color: Color(0xFF000000),
																												fontSize: 9,
																											),
																											textAlign: TextAlign.right,
																										),
																									),
																								]
																							),
																						),
																					),
																				]
																			),
																		),
																	),
																	Container(
																		height: 49,
																		width: double.infinity,
																		child: SizedBox(),
																	),
																]
															),
														),
													),
												],
											)
										),
									),
								),
							),
						],
					),
				),
			),
    );
  }
}