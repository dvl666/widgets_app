import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  static const name = 'ui_screen';

  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  ExpansionTile(
                    title: const Text('Veiculo de transporte'),
                    subtitle: Text('$selectedTransportation'),
                    children: [
                      RadioListTile(
                        title: const Text('By Car'),
                        subtitle: const Text('Viajar por carro'),
                        value: Transportation.car,
                        groupValue: selectedTransportation,
                        onChanged: (value) => setState(() {
                          selectedTransportation = Transportation.car;
                        }),
                      ),
                      RadioListTile(
                        title: const Text('By Boat'),
                        subtitle: const Text('Viajar por bote'),
                        value: Transportation.plane,
                        groupValue: selectedTransportation,
                        onChanged: (value) => setState(() {
                          selectedTransportation = Transportation.plane;
                        }),
                      ),
                      RadioListTile(
                        title: const Text('By Plane'),
                        subtitle: const Text('Viajar por avion'),
                        value: Transportation.boat,
                        groupValue: selectedTransportation,
                        onChanged: (value) => setState(() {
                          selectedTransportation = Transportation.boat;
                        }),
                      ),
                      RadioListTile(
                        title: const Text('By Submarine'),
                        subtitle: const Text('Viajar por submarino'),
                        value: Transportation.submarine,
                        groupValue: selectedTransportation,
                        onChanged: (value) => setState(() {
                          selectedTransportation = Transportation.submarine;
                        }),
                      ),
                    ],
                  ),
                  CheckboxListTile(
                    title: const Text('Quiere Desayuno?'),
                    value: wantsBreakfast,
                    onChanged: (value) => setState(() {
                      wantsBreakfast = !wantsBreakfast;
                    }),
                  ),
                  CheckboxListTile(
                    title: const Text('Quiere Almuerzo?'),
                    value: wantsLunch,
                    onChanged: (value) => setState(() {
                      wantsLunch = !wantsLunch;
                    }),
                  ),
                  CheckboxListTile(
                    title: const Text('Quiere Cena?'),
                    value: wantsDinner,
                    onChanged: (value) => setState(() {
                      wantsDinner = !wantsDinner;
                    }),
                  )
                ],
              )),
        )
      ],
    );
  }
}
