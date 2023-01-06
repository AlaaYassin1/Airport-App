import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pro2_2/l10n/L10n.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'element/drawer.dart';
import 'element/pages.dart';
import 'passengers.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';
import 'provider/page_prov.dart';
import 'provider/color.dart';
import 'provider/language.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const int mobileWidth = 480;
const int tabletWidth = 768;
const int laptopWidth = 1024;
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<L10nProvider>(
          create: (context) => L10nProvider(),
        ),
        ChangeNotifierProvider<Pageprov>(
          create: (context) => Pageprov(),
        ),
        ChangeNotifierProvider<colorthem>(
          create: (context) => colorthem(),
        ),
      ],
      child: const Homepage(),
    ),
  );
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Provider.of<L10nProvider>(context).currentLocal,
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providercolor = Provider.of<colorthem>(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: MediaQuery.of(context).size.width <= mobileWidth
              ? Colors.transparent
              : providercolor.mainColor,
          elevation: 0,
          iconTheme: IconThemeData(
              color: MediaQuery.of(context).size.width <= mobileWidth
                  ? providercolor.mainColor
                  : Colors.white),
          title: Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: providercolor.secondColor,
                  child: Icon(
                    Icons.flight_takeoff,
                    color: MediaQuery.of(context).size.width <= mobileWidth
                        ? Colors.white
                        : providercolor.mainColor,
                  )),
              const SizedBox(
                width: 10,
              ),
              Text('eAir',
                  style: TextStyle(
                    color: MediaQuery.of(context).size.width <= mobileWidth
                        ? providercolor.mainColor
                        : Colors.white,
                  ))
            ],
          )),
      drawer: MediaQuery.of(context).size.width >= mobileWidth
          ? const Draweribadanddesktop()
          : const Drawermobile(),
      body: MediaQuery.of(context).size.width <= mobileWidth
          ? Provider.of<Pageprov>(context).p()
          : MediaQuery.of(context).size.width <= tabletWidth &&
                  MediaQuery.of(context).size.width >= mobileWidth // and -- not needed
              ? Tabletpage()
              : Desktoppage(),
    );
  }
}
