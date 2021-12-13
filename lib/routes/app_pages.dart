import 'package:algoritmos/screens/home/home_bindings.dart';
import 'package:algoritmos/screens/home/home_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/area/area_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/area/area_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/bhaskara/bhaskara_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/bhaskara/bhaskara_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/desconto/desconto_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/desconto/desconto_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/division/division_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/division/division_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/dolar/dolar_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/dolar/dolar_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/double_and_terca/double_and_terca_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/double_and_terca/double_and_terca_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/math_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/math_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/medidas/medidas_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/medidas/medidas_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/multiplication/multiplication_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/multiplication/multiplication_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/subtraction/subtraction_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/subtraction/subtraction_page.dart';
import 'package:algoritmos/screens/module_one/exercises/math/sum/sum_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/math/sum/sum_page.dart';
import 'package:algoritmos/screens/module_one/exercises/media/media_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/media/media_page.dart';
import 'package:algoritmos/screens/module_one/exercises/name/name_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/name/name_page.dart';
import 'package:algoritmos/screens/module_one/exercises/nex_and_previously/nex_and_previously_bindings.dart';
import 'package:algoritmos/screens/module_one/exercises/nex_and_previously/nex_and_previously_page.dart';
import 'package:algoritmos/screens/module_one/module_one_bindings.dart';
import 'package:algoritmos/screens/module_one/module_one_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.math,
      page: () => const MathPage(),
      binding: MathBindings(),
    ),
    GetPage(
      name: _Paths.area,
      page: () => const AreaPage(),
      binding: AreaBindings(),
    ),
    GetPage(
      name: _Paths.desconto,
      page: () => const DescontoPage(),
      binding: DescontoBindings(),
    ),
    GetPage(
      name: _Paths.div,
      page: () => const DivisionPage(),
      binding: DivisionBindings(),
    ),
    GetPage(
      name: _Paths.dolar,
      page: () => const DolarPage(),
      binding: DolarBindings(),
    ),
    GetPage(
      name: _Paths.doubleT,
      page: () => const DoubleAndTercaPage(),
      binding: DoubleAndTercaBindings(),
    ),
    GetPage(
      name: _Paths.mult,
      page: () => const MultiplicationPage(),
      binding: MultiplicationBindings(),
    ),
    GetPage(
      name: _Paths.sub,
      page: () => const SubtractionPage(),
      binding: SubtractionBindings(),
    ),
    GetPage(
      name: _Paths.sum,
      page: () => const SumPage(),
      binding: SumBindings(),
    ),
    GetPage(
      name: _Paths.media,
      page: () => const MediaPage(),
      binding: MediaBindings(),
    ),
    GetPage(
      name: _Paths.medidas,
      page: () => const MedidasPage(),
      binding: MedidasBindings(),
    ),
    GetPage(
      name: _Paths.nextP,
      page: () => const NexAndPreviouslyPage(),
      binding: NexAndPreviouslyBindings(),
    ),
    GetPage(
      name: _Paths.modOne,
      page: () => const ModuleOnePage(),
      binding: ModuleOneBindings(),
    ),
    GetPage(
      name: _Paths.bhask,
      page: () => const BhaskaraPage(),
      binding: BhaskaraBindings(),
    ),
    GetPage(
      name: _Paths.name,
      page: () => const NamePage(),
      binding: NameBindings(),
    ),
  ];
}
