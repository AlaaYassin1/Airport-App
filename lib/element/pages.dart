import 'package:flutter/material.dart';
import '../main.dart';
import '../passengers.dart';
import '../provider/color.dart';
import '../provider/language.dart';
import '../provider/page_prov.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:math' as math;

class Tabletpage extends StatelessWidget {
  const Tabletpage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Pageprov>(context);
    final providercolor = Provider.of<colorthem>(context);

    return Row(
      children: [
        LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                width: 50,
                color: providercolor.secondColor,
                child: Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      IconButton(
                          onPressed: () => provider.pagehome(),
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      IconButton(
                          onPressed: () => provider.pagepassengers(),
                          icon: const Icon(
                            Icons.face,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      IconButton(
                          onPressed: () => provider.flightinfo(),
                          icon: const Icon(
                            Icons.airplane_ticket,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      IconButton(
                          onPressed: () => provider.pagehome(),
                          icon: const Icon(
                            Icons.airline_seat_recline_extra,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        Expanded(
          child: provider.p(),
        )
      ],
    );
  }
}

class Desktoppage extends StatelessWidget {
  const Desktoppage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Pageprov>(context);
    final providercolor = Provider.of<colorthem>(context);
    final provider2 = Provider.of<L10nProvider>(context);

    return Row(
      children: [
        LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                width: 200,
                color: providercolor.secondColor,
                child: Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.sideh,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: provider2.currentLocal == Locale('ar')
                                ? 17
                                : 18,
                          ),
                        ),
                        onTap: () {
                          provider.pagehome();
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.face,
                          color: Colors.white,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.sidep,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          provider.pagepassengers();
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.airplane_ticket,
                          color: Colors.white,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.sidef,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: provider2.currentLocal == Locale('ar')
                                ? 17
                                : 18,
                          ),
                        ),
                        onTap: () {
                          provider.flightinfo();
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.airline_seat_recline_extra,
                          color: Colors.white,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.sider,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        Expanded(flex: 3, child: provider.p()),
        LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Visibility(
                  visible: provider.page == 0 &&
                      MediaQuery.of(context).size.width > 900,
                  child: Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 75,
                            ),
                            Text(
                              AppLocalizations.of(context)!.flights,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Text(
                              '785',
                              style: TextStyle(
                                  color: providercolor.mainColor, fontSize: 35),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 380,
                        ),
                        Container(
                          width: 160,
                          height: 80,
                          decoration: BoxDecoration(
                            color: providercolor.secondColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.airline_seat_recline_normal,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.a,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                )
                              ]),
                        )
                      ]),
                    ),
                  ),
                )),
          );
        }),
      ],
    );
  }
}

class Desktopcontent extends StatelessWidget {
  const Desktopcontent({super.key});

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context);
    final provider = Provider.of<L10nProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width <= 900 ? 50 : 75,
          ),
          Visibility(
            visible: MediaQuery.of(context).size.width <= 900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.flights,
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    Text(
                      '785',
                      style: TextStyle(
                          color: providercolor.mainColor, fontSize: 35),
                    )
                  ],
                ),
                Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    color: providercolor.secondColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.airline_seat_recline_normal,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          AppLocalizations.of(context)!.a,
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        )
                      ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width <= 900 ? 50 : 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.origin,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
              Text(
                AppLocalizations.of(context)!.destiation,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.bos,
                style: TextStyle(
                  fontSize: provider.currentLocal == Locale('ar') ? 40 : 75,
                  color: Color.fromRGBO(0, 0, 0, 0.541),
                ),
              ),
              Expanded(
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                          left: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 4,
                                color: const Color.fromARGB(255, 237, 228, 253),
                              ),
                            ),
                          )),
                      Positioned(
                          right: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 4,
                                color: const Color.fromARGB(255, 237, 228, 253),
                              ),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 27,
                        ),
                        height: 5,
                        color: const Color.fromARGB(255, 237, 228, 253),
                      ),
                      Transform.rotate(
                        origin: Offset.zero,
                        angle: math.pi / 2,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 250, 250, 250),
                          child: Icon(
                            Icons.flight,
                            size: 70,
                            color: providercolor.mainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.sti,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: provider.currentLocal == Locale('ar') ? 40 : 75,

                  // MediaQuery.of(context).size.width > Constants.tabletMaxWidth
                  //     ? 75
                  //     : 50,
                  color: Color.fromRGBO(0, 0, 0, 0.541),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width <= 900 ? 50 : 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.gate,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
              Text(
                AppLocalizations.of(context)!.baggage,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.door_sliding,
                    color: providercolor.secondColor,
                    size: 30,
                  ),
                  Text(
                    AppLocalizations.of(context)!.g,
                    style: TextStyle(
                        fontSize: 65, color: providercolor.secondColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.work,
                    color: providercolor.secondColor,
                    size: 30,
                  ),
                  Text(
                    AppLocalizations.of(context)!.b,
                    style: TextStyle(
                        fontSize: 65, color: providercolor.secondColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width <= 900 ? 50 : 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.departure,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
              Text(
                AppLocalizations.of(context)!.arrival,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.am,
                style: TextStyle(color: providercolor.mainColor, fontSize: 30),
              ),
              Text(
                AppLocalizations.of(context)!.amm,
                textAlign: TextAlign.end,
                style: TextStyle(color: providercolor.mainColor, fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Mobileandtabletcontent extends StatelessWidget {
  const Mobileandtabletcontent({super.key});

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context);
    final provider = Provider.of<L10nProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    AppLocalizations.of(context)!.flights,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    '785',
                    style:
                        TextStyle(color: providercolor.mainColor, fontSize: 35),
                  )
                ],
              ),
              Container(
                width:
                    MediaQuery.of(context).size.width < mobileWidth ? 100 : 120,
                height:
                    MediaQuery.of(context).size.width < mobileWidth ? 50 : 60,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: providercolor.secondColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.airline_seat_recline_normal,
                    color: Colors.white,
                  ),
                  Text(
                    AppLocalizations.of(context)!.a,
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )
                ]),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.origin,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                AppLocalizations.of(context)!.destiation,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.bos,
                style: TextStyle(
                  fontSize: provider.currentLocal == Locale('ar') ? 26 : 51,
                  // MediaQuery.of(context).size.width > Constants.tabletMaxWidth
                  //     ? 75
                  //     : 50,
                  color: Colors.black54,
                ),
              ),
              Expanded(
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                          left: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 4,
                                color: const Color.fromARGB(255, 237, 228, 253),
                              ),
                            ),
                          )),
                      Positioned(
                          right: 0,
                          child: Container(
                            width: 15,
                            height: 15,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 4,
                                color: const Color.fromARGB(255, 237, 228, 253),
                              ),
                            ),
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 27,
                        ),
                        height: 5,
                        color: const Color.fromARGB(255, 237, 228, 253),
                      ),
                      Transform.rotate(
                        origin: Offset.zero,
                        angle: math.pi / 2,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(255, 250, 250, 250),
                          child: Icon(
                            Icons.flight,
                            size: 70,
                            color: providercolor.mainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.sti,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: provider.currentLocal == Locale('ar') ? 26 : 51,

                  // MediaQuery.of(context).size.width > Constants.tabletMaxWidth
                  //     ? 75
                  //     : 50,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.gate,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                AppLocalizations.of(context)!.baggage,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.door_sliding,
                    color: providercolor.secondColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppLocalizations.of(context)!.g,
                    style: TextStyle(
                        fontSize: 35, color: providercolor.secondColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.work,
                    color: providercolor.secondColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    AppLocalizations.of(context)!.b,
                    style: TextStyle(
                        fontSize: 35, color: providercolor.secondColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.departure,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                AppLocalizations.of(context)!.arrival,
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.am,
                style: TextStyle(color: providercolor.mainColor, fontSize: 35),
              ),
              Text(
                AppLocalizations.of(context)!.amm,
                textAlign: TextAlign.end,
                style: TextStyle(color: providercolor.mainColor, fontSize: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Contentpage extends StatelessWidget {
  const Contentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: MediaQuery.of(context).size.width > tabletWidth
                ? const Desktopcontent()
                : const Mobileandtabletcontent()),
      );
    });
  }
}

class Passenger extends StatelessWidget {
  const Passenger({super.key});

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context);

    return GridView.builder(
      itemCount: data.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 160,
        crossAxisSpacing: 30,
        mainAxisSpacing: 40,
      ),
      itemBuilder: ((context, index) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: ClipOval(
                      child: Image.network(
                    data[index].image,
                    fit: BoxFit.fill,
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    data[index].name.first + ' ' + data[index].name.last,
                    style:
                        TextStyle(fontSize: 16, color: providercolor.mainColor),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final providercolor = Provider.of<colorthem>(context, listen: false);

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.sides,
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:
                                  Text(AppLocalizations.of(context)!.language),
                              actions: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.arabic,
                                  ),
                                  onPressed: () {
                                    Provider.of<L10nProvider>(context,
                                            listen: false)
                                        .switchLoc("ar");
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.english,
                                  ),
                                  onPressed: () {
                                    Provider.of<L10nProvider>(context,
                                            listen: false)
                                        .switchLoc("en");
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.cancle,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Icon(Icons.g_translate, color: Colors.grey),
                          const SizedBox(width: 20),
                          Text(
                            AppLocalizations.of(context)!.language,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.grey)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                AppLocalizations.of(context)!.colors,
                              ),
                              content: SizedBox(
                                child: Row(children: [
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFF2196f3, 0xFF69b9f8);
                                      Navigator.of(context).pop();
                                    },
                                    child: const SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(color: Color(0xFF2196f3)),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFF5C1896, 0xFFA677FF);

                                      Navigator.of(context).pop();
                                    },
                                    child: const SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFF5C1896),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFF009688, 0xFF2cd6c6);
                                    },
                                    child: const SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFF009688),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFFffc107, 0xFFfed456);
                                    },
                                    child: SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFFffc107),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFFff9800, 0xFFe9c288);
                                    },
                                    child: SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFFff9800),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFFf44336, 0xFFf38880);
                                    },
                                    child: SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFFf44336),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFFe91e63, 0xFFee739d);
                                    },
                                    child: SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFFe91e63),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      providercolor.getColor(
                                          0xFF4caf50, 0xFF67b06a);
                                    },
                                    child: SizedBox(
                                      width: 30,
                                      height: 100,
                                      child: Material(
                                        color: Color(0xFF4caf50),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.cancle,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Icon(Icons.design_services, color: Colors.grey),
                          const SizedBox(width: 20),
                          Text(
                            AppLocalizations.of(context)!.colors,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.grey),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.grey)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
            ),
      );
    });
  }
}

class Boardingpage extends StatelessWidget {
  const Boardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context, listen: false);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Scan the qr code',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: providercolor.mainColor)),
          SizedBox(
            height: 150,
          ),
          Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: providercolor.mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Image.network(
                    'https://media.istockphoto.com/id/518484289/photo/close-up-of-qr-code-example.jpg?b=1&s=612x612&w=0&k=20&c=PucHVCfxdsoUe1wC-OBsHLEZkcG45VqMMTEVxEnJEIo='),
              )),
        ],
      ),
    );
  }
}

class Flightinfo extends StatelessWidget {
  const Flightinfo({super.key});

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context, listen: false);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Flight Info',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: providercolor.mainColor)),
          SizedBox(
            height: 150,
          ),
          Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: providercolor.mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Image.network(
                    'data:image/jpeg;base64,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'),
              )),
        ],
      ),
    );
  }
}
