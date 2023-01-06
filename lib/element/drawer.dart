import 'package:flutter/material.dart';
import '../main.dart';
import '../provider/color.dart';
import '../provider/page_prov.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../provider/language.dart';

class Drawermobile extends StatelessWidget {
  const Drawermobile({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Pageprov>(context);
    final providercolor = Provider.of<colorthem>(context);
    final provider2 = Provider.of<L10nProvider>(context);

    return Drawer(
        backgroundColor: providercolor.secondColor,
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
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
                                  ? 22
                                  : 24,
                            ),
                          ),
                          onTap: () {
                            provider.pagehome();
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.face,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.sidep,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          onTap: () {
                            provider.pagepassengers();
                          },
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
                                  ? 22
                                  : 24,
                            ),
                          ),
                          onTap: () {
                            provider.flightinfo();
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.airline_seat_recline_extra,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.sider,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.sides,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          onTap: () {
                            provider.settingpage();
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.boarding,
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          onTap: () {
                            provider.boardinpage();
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 30,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: providercolor.mainColor,
                      child: Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}

class Draweribadanddesktop extends StatelessWidget {
  const Draweribadanddesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Pageprov>(context);
    final providercolor = Provider.of<colorthem>(context);

    return Drawer(
        backgroundColor: Colors.white,
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: providercolor.mainColor,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.sides,
                            style: TextStyle(
                                color: providercolor.mainColor, fontSize: 24),
                          ),
                          onTap: () {
                            provider.settingpage();
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.qr_code,
                            color: providercolor.mainColor,
                          ),
                          title: Text(
                            AppLocalizations.of(context)!.boarding,
                            style: TextStyle(
                                color: providercolor.mainColor, fontSize: 24),
                          ),
                          onTap: () {
                            provider.boardinpage();
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 30,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: providercolor.secondColor,
                      child: Icon(
                        Icons.flight_takeoff,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
