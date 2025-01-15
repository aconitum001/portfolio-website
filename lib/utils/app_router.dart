import 'package:get/get.dart';
import 'package:portfolio/views/portfolio_view.dart';

abstract class AppRouter {
  static String portfolioView = '/';

  static List<GetPage<dynamic>> pages() {
    return [
      GetPage(
        name: portfolioView,
        page: () => const PortfolioView(),
      )
    ];
  }
}
