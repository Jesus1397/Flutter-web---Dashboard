import 'package:flutter_web_dashboard/providers/sidemenu_provider.dart';
import 'package:flutter_web_dashboard/ui/views/no_page_found_view.dart';
import 'package:provider/provider.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    Provider.of<SideMenuProvider>(context!, listen: false)
        .setCurrentPageUrl('/404');

    return const NoPageFoundView();
  });
}
