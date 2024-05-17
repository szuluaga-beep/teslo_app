import 'package:flutter/material.dart';
import 'package:teslo_app/features/shared/shared.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    final textStyles = Theme.of(context).textTheme;

    return NavigationDrawer(
      elevation: 1,
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, hasNotch ? 0 : 20, 16, 0),
          child: Text(
            'Saludos',
            style: textStyles.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 16, 10),
          child: Text(
            'Tony Stark',
            style: textStyles.titleSmall,
          ),
        ),
        const NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined), label: Text('Productos')),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 16, 5),
          child: Text('Otras opciones'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomFilledButton(
            text: 'Cerrar sesión',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
