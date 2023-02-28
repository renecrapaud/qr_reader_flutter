import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader/pages/address_page.dart';
import 'package:qrreader/pages/maps_hist.dart';
import 'package:qrreader/providers/ui_provider.dart';
import '../widgets/custom_navigatorbar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // get selected menu opt from state
    final uiProvider = Provider.of<UiProvider>(context);
    final currIndex = uiProvider.selectedMenuOpt;
    switch (currIndex) {
      case 0:
        return MapsHist();
      case 1:
        return AddressPage();
      default:
        return MapsHist();
    }
  }
}
