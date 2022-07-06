import 'package:flutter/material.dart';
import 'homepage_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HomePageController hpc = Get.put(HomePageController());

    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Hi',
                    style: Get.textTheme.headlineLarge,
                  ),
                  TextSpan(
                    text: " Suurya ",
                    style: Get.textTheme.headlineMedium,
                  ),
                  const TextSpan(
                    text: "👋",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            elevation: 0,
            automaticallyImplyLeading: false,
            actions: [
              Icon(Icons.translate, size: 30, color: Get.theme.primaryColor,),
              const SizedBox(width: 10),
              Icon(Icons.shopping_cart_outlined, size: 30, color: Get.theme.primaryColor,),
              const SizedBox(width: 10),
            ],
          ),
          backgroundColor: const Color(0xFFFAFAFA),
          body: SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
            child: Column(
              children: [
                // Container(
                //   width: Get.size.width,
                //   padding: const EdgeInsets.all(15),
                //   height: 90,
                //   child: Row(
                //     children: [
                //       RichText(
                //         text: TextSpan(
                //           children: <TextSpan>[
                //             TextSpan(
                //               text: 'Hi',
                //               style: Get.textTheme.headlineLarge,
                //             ),
                //             TextSpan(
                //               text: " Suurya ",
                //               style: Get.textTheme.headlineMedium,
                //             ),
                //             const TextSpan(
                //               text: "👋",
                //               style: TextStyle(fontSize: 25),
                //             ),
                //           ],
                //         ),
                //       ),
                //       const Spacer(),
                //       SizedBox(
                //         height: 30,
                //         child: Image.asset("assets/img/language.png", fit: BoxFit.fill),
                //       ),
                //       const SizedBox(width: 20,),
                //       SizedBox(
                //         height: 30,
                //         child: Icon(Icons.shopping_cart_outlined, size: 30, color: Get.theme.primaryColor,),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 20),
                Container(
                  width: Get.size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset("assets/img/gold.png", fit: BoxFit.fill),
                ),
                // const SizedBox(height: 25,),
                Container(
                  width: Get.size.width,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFFAF2),
                  ),
                  child: Column(
                    children: [
                      Text("Products At Your Fingertips", style: Get.textTheme.displayLarge,),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children:[
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Get.theme.primaryColor,
                                      ),
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          left: 10,
                                          top: 20,
                                          child: Image.asset("assets/img/coinStack.png"),
                                        ),
                                        const Positioned(
                                          left: 24,
                                          top: 23,
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Icon(Icons.call_split, size: 10,),
                                          ),
                                        ),
                                        Positioned(
                                          left: 35,
                                          top: 18,
                                          child: SizedBox(
                                            width: 12,
                                            child: Image.asset("assets/img/coin.png",fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(
                                          left: 35,
                                          top: 30,
                                          child: SizedBox(
                                            width: 12,
                                            child: Image.asset("assets/img/coin.png",fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(
                                          left: 36.5,
                                          top: 19.5,
                                          child: SizedBox(
                                            width: 8,
                                            child: Image.asset("assets/img/coinFilling.png",fit: BoxFit.fill,),
                                          ),
                                        ),
                                        Positioned(
                                          left: 36.5,
                                          top: 31.5,
                                          child: SizedBox(
                                            width: 8,
                                            child: Image.asset("assets/img/coinFilling.png",fit: BoxFit.fill,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Create Your Plan",
                                    softWrap: true,
                                    style: Get.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children:[
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          left: 30,
                                          top: 32,
                                          child: Image.asset("assets/img/brickFilling.png"),
                                        ),
                                        Positioned(
                                          left: 18,
                                          top: 15,
                                          child: Image.asset("assets/img/sellGold.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Buy Instant Gold",
                                    softWrap: true,
                                    style: Get.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children:[
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          left: 18,
                                          top: 15,
                                          child: Image.asset("assets/img/halfBag.png"),
                                        ),
                                        Positioned(
                                          left: 32,
                                          top: 30,
                                          child: Image.asset("assets/img/yellowDisk.png"),
                                        ),
                                        Positioned(
                                          left: 32,
                                          top: 30,
                                          child: Image.asset("assets/img/circle.png"),
                                        ),
                                        Positioned(
                                          left: 37,
                                          top: 35,
                                          child: Image.asset("assets/img/rupee.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Sell Instant Gold",
                                    softWrap: true,
                                    style: Get.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child:
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children:[
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset("assets/img/shopNow.png"),
                                  ),
                                  Text(
                                    "Shop\nNow",
                                    softWrap: true,
                                    style: Get.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                Container(
                  width: Get.size.width,
                  height: 110,
                  padding: const EdgeInsets.symmetric(vertical: 25,),
                  color: const Color(0xFFF8EFDA),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Live Buy Price", style: Get.textTheme.bodyMedium,),
                          const SizedBox(height: 5),

                          RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.currency_rupee, size: 16),
                                ),
                                TextSpan(
                                  text: "5265.97/gm",
                                  style: Get.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: SizedBox(
                                    height: 15,
                                    child: Image.asset("assets/img/graph.png", fit: BoxFit.fill),
                                  ),
                                ),
                                TextSpan(
                                  text: "Check History",
                                  style: Get.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Divider(
                          color: Get.theme.primaryColor,
                          height: 3,
                          thickness: 1,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Live Buy Price", style: Get.textTheme.bodyMedium,),
                          const SizedBox(height: 5),

                          RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(Icons.currency_rupee, size: 16),
                                ),
                                TextSpan(
                                  text: "5265.97/gm",
                                  style: Get.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: SizedBox(
                                    height: 15,
                                    child: Image.asset("assets/img/graph.png", fit: BoxFit.fill),
                                  ),
                                ),
                                TextSpan(
                                  text: "Check History",
                                  style: Get.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/img/100.png"),
                      )
                    ],
                  ),


                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.centerLeft,
                  child: Text("Buy and Save", style: Get.textTheme.displayLarge,),
                ),
                Wrap(
                  spacing: 30,
                  children: [
                    Container(
                      width: Get.size.width / 2 - 45,
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFf8efda),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Buy Gold 1Gram / Month for 12 Months", style: Get.textTheme.bodyLarge, softWrap: true,),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Save 14.6 GRAMS approx.", style: Get.textTheme.titleSmall, softWrap: true,),
                          const SizedBox(
                            height: 20,
                          ),
                          GetBuilder<HomePageController>(
                              builder: (_){
                                return
                                  hpc.callingBuySellAPI
                                      ?
                                  const CircularProgressIndicator()
                                      :
                                  ElevatedButton(
                                    onPressed: () async {
                                      await hpc.buySellRequest();
                                      alertDialog("BUY and SELL\n\nStatus Code: ${hpc.buySellReqStatus}", hpc.buySellData);
                                    },
                                    style: ButtonStyle(
                                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      backgroundColor: MaterialStateProperty.all(const Color(0xFF8B5704),),
                                      foregroundColor: MaterialStateProperty.all(Colors.white),
                                      textStyle: MaterialStateProperty.all(
                                        const TextStyle(fontSize: 12, color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 10),),
                                    ),
                                    child: const Text("Start Saving"),
                                  );
                              }
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.size.width / 2 - 45,
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFf8efda),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Buy Gold 1Gram / Month for 12 Months", style: Get.textTheme.bodyLarge, softWrap: true,),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Save 14.6 GRAMS approx.", style: Get.textTheme.titleSmall, softWrap: true,),
                          const SizedBox(
                            height: 20,
                          ),
                          GetBuilder<HomePageController>(
                              builder: (_){
                                return
                                  hpc.callingPlansAPI
                                      ?
                                  const CircularProgressIndicator()
                                      :
                                  ElevatedButton(
                                    onPressed: () async {
                                      await hpc.plansRequest();
                                      alertDialog("BUY GOLD\n\nStatus Code: ${hpc.plansReqStatus}", hpc.plansData);
                                    },
                                    style: ButtonStyle(
                                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      backgroundColor: MaterialStateProperty.all(const Color(0xFF8B5704)),
                                      foregroundColor: MaterialStateProperty.all(Colors.white),
                                      textStyle: MaterialStateProperty.all(
                                        const TextStyle(fontSize: 12, color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                      //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15, horizontal: 10),),
                                    ),
                                    child: const Text("Start Saving"),
                                  );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("Buy or Sell Instant Gold", style: Get.textTheme.displayLarge,),
                ),
                Row(
                  children: [
                    GetBuilder<HomePageController>(
                        builder: (_){
                          return Radio(
                            toggleable: true,
                            value: BT.x,
                            groupValue: hpc.r,
                            fillColor: MaterialStateProperty.all(const Color(0xFF8B5704)),
                            onChanged: (BT? value){
                              hpc.radio(value);
                            },
                          );
                        }
                    ),
                    Text("Buy Instant Gold", style: Get.textTheme.titleSmall),
                    const Spacer(),
                    GetBuilder<HomePageController>(
                        builder: (_){
                          return Radio(
                            toggleable: true,
                            value: BT.y,
                            groupValue: hpc.r,
                            fillColor: MaterialStateProperty.all(const Color(0xFF8B5704)),
                            onChanged: (BT? value){
                              hpc.radio(value);
                            },
                          );
                        }
                    ),
                    Text("Sell Instant Gold", style: Get.textTheme.titleSmall),
                    const Spacer(),



                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal : 30, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal : 30, vertical: 10),
                  width: Get.size.width - 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFddb070),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Buy Now", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none,)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("Refer and Earn", style: Get.textTheme.displayLarge,),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal : 20, vertical: 20),
                    margin: const EdgeInsets.symmetric(horizontal : 30,),
                    width: Get.size.width - 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFf8efda),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight:  Radius.circular(10),),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Icon(Icons.share, color: Get.theme.primaryColor, size: 30),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Referral Code", style: TextStyle(fontSize: 15, color: Get.theme.primaryColor, decoration: TextDecoration.none , fontWeight: FontWeight.w200), textAlign: TextAlign.left,),
                            const SizedBox(height: 10),
                            Text("AMOL0098", style: Get.textTheme.bodyLarge,textAlign: TextAlign.left,),
                          ],
                        ),
                        const Spacer(),
                        Icon(Icons.chevron_right, color: Get.theme.primaryColor, size: 40),

                      ],
                    )
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal : 30, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal : 30,),
                  width: Get.size.width - 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8b5704),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight:  Radius.circular(10),),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Share It With Your Friends", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none,)),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),

          bottomNavigationBar: GetBuilder<HomePageController>(
            builder: (_){
              return BottomNavigationBar(
                currentIndex: hpc.n,
                iconSize: 35,

                selectedItemColor: const Color(0xFF8b5704),
                unselectedItemColor: Colors.black.withOpacity(0.3),

                selectedFontSize: 12,
                unselectedFontSize: 10,

                selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
                unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),

                showUnselectedLabels: false,

                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                onTap: (i){
                  hpc.bottomNav(i);
                },

                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      label: "My Account"
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard),
                      label: "DashBoard"
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.more_horiz),
                      label: "More"
                  ),

                ],
              );
            },
          ),
        ),
      ),
    );
  }

  alertDialog( String title, String subtitle) {
    ScrollController scrollController = ScrollController();

    Get.defaultDialog(
      title: title,
      content: SizedBox(
        height: Get.height / 2,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Text(
            subtitle,
            style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold, decoration: TextDecoration.none,),
            softWrap: true,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFddb070),
      confirm: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
          backgroundColor: Colors.blueGrey[800],
        ),
        onPressed: () {
          scrollController.dispose();
          Get.back();
        },
        child: Text("OK", style: TextStyle(color: Colors.yellow[300]),),
      ),
    );
  }
}