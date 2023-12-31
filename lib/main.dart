import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '1_pirminiai_psl/informacija.dart';
import '1_pirminiai_psl/nustatymai.dart';
import '1_pirminiai_psl/pagrindinis.dart';
import '2_garsas_tipas/garso_pasirinkimas.dart';
import '2_garsas_tipas/tema_delione.dart';
import '2_garsas_tipas/tipo_pasirinkimas.dart';
import '3_sudetingumas/g_sudetingumas.dart';
import '3_sudetingumas/sak_sudetingumas.dart';
import '4_uzduotys/garsas/l_g_uzduotis.dart';
import '4_uzduotys/garsas/s_g_uzduotis.dart';
import '4_uzduotys/sakinys/1_l_sak_uzduotis.dart';
import '4_uzduotys/sakinys/2_l_sak_uzduotis.dart';
import '4_uzduotys/sakinys/3_l_sak_uzduotis.dart';
import '4_uzduotys/sakinys/s_sak_uzduotis.dart';
import '4_uzduotys/l_skiem_uzduotis.dart';
import '4_uzduotys/l_z_uzduotis.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagrPsl(),
      routes: {
        '/pagr_psl':(context) => PagrPsl(),
        '/settings':(context) => Nustatymai(),
        '/info':(context) => Informacija(),
        '/garso_pas':(context) => GarsoPasirinkimoPsl(),
        '/tema':(context) => ChangeNotifierProvider(
            create: (_) => DelionesManager(),
            child: const TeminisPsl()),
        '/tipo_pas':(context) => TipoPasirinkimas(),
        '/garso_sud':(context) => GarsoSudPsl(),
        '/sak_sud':(context) => SakinioSudPsl(),
        '/l_garso_u':(context) => ChangeNotifierProvider(
            create: (_) => MLangeliuManager(),
            child: GarsoLengva()),
        '/s_garso_u':(context) => ChangeNotifierProvider(
            create: (_) => LangeliuManager(),
            child: GarsoSunki()),
        '/1_l_sakinio_u':(context) => SakinioLengva1(),
        '/2_l_sakinio_u':(context) => SakinioLengva2(),
        '/3_l_sakinio_u':(context) => SakinioLengva3(),
        '/s_sakinio_u':(context) => SakinioSunki(),
        '/l_skiemenu_u':(context) => Skiemenys(),
        '/l_zodiu_u':(context) => Zodziai(),
      }
    );
  }
}
