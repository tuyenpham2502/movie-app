import 'package:fluro/fluro.dart';
import 'package:movie_app/components/routes/router_handler/bottom_bar_handler.dart';
import 'package:movie_app/components/routes/router_handler/change_language_handler.dart';
import 'package:movie_app/components/routes/router_handler/home_handler.dart';
import 'package:movie_app/components/routes/router_handler/information_handler.dart';
import 'package:movie_app/components/routes/router_handler/login_handler.dart';
import 'package:movie_app/components/routes/router_handler/my_ticket_handler.dart';
import 'package:movie_app/components/routes/router_handler/my_wallet_handler.dart';
import 'package:movie_app/components/routes/router_handler/profile_handler.dart';
import 'package:movie_app/components/routes/router_handler/root_handler.dart';
part 'application.dart';

class Routes {
  static const String root = '/';
  static const String bottomBar = '/bottomBar';
  static const String home = '/home';
  static const String information = '/information';
  static const String myWallet = '/myWallet';
  static const String myTicket = '/myTicket';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String changeLanguage = '/changeLanguage';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;
    router.define(root, handler: bottomBarHandler);
    router.define(bottomBar, handler: bottomBarHandler);
    router.define(home, handler: homeHandler, transitionType: TransitionType.native);
    router.define(myWallet, handler: myWalletHandler, transitionType: TransitionType.fadeIn);
    router.define(myTicket, handler: myTicketHandler, transitionType: TransitionType.native);
    router.define(information, handler: informationHandler);
    router.define(profile, handler: profileHandler);
    router.define(login, handler: loginHandler);
    router.define(changeLanguage, handler: changeLanguageHandler);


  }


}