import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI controls')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

enum Preference { desayuno, almuerzo, cena }

final preferences = <Preference, bool>{
  Preference.desayuno: false,
  Preference.almuerzo: false,
  Preference.cena: false,
};

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('More actions'),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),
        ExpansionTile(
          title: const Text('Transport vehicles'),
          subtitle: Text(selectedTransportation.name),
          children: [
            customRadioListTile(Transportation.car),
            customRadioListTile(Transportation.plane),
            customRadioListTile(Transportation.boat),
            customRadioListTile(Transportation.submarine),
          ],
        ),
        customCheckboxListTile(Preference.desayuno),
        customCheckboxListTile(Preference.almuerzo),
        customCheckboxListTile(Preference.cena),
      ],
    );
  }

  RadioListTile<Transportation> customRadioListTile(
    Transportation transportation,
  ) {
    final String transport = toLegibleText(transportation.name);

    return RadioListTile(
      title: Text('By $transport'),
      subtitle: Text('Travel by ${transportation.name}'),
      value: transportation,
      groupValue: selectedTransportation,
      onChanged:
          (value) => setState(() {
            selectedTransportation = value!;
          }),
    );
  }

  String toLegibleText(String text) =>
      text[0].toUpperCase() + text.substring(1);

  CheckboxListTile customCheckboxListTile(Preference preference) {
    return CheckboxListTile(
      title: Text('¿${toLegibleText(preference.name)}?'),
      value: preferences[preference],
      onChanged:
          (value) => setState(() {
            preferences[preference] = value ?? false;
          }),
    );
  }
}
