import 'package:flutter/material.dart';
import 'package:nabi/app/app.router.dart';
import 'package:nabi/ui/components/widget/app_icon.dart';
import 'package:stacked/stacked.dart';

import '../../../../../app/app.locator.dart';
import '../../../commons/app_colors.dart';
import '../../../commons/app_ui_helpers.dart';
import '../../../domain/local/app_service.dart';

class AppBarView extends StatelessWidget {

  const AppBarView({super.key, });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppBarViewModel>.reactive(
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            const AppIcon(size: 130,),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(w(100))),
              child: InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(w(100))),
                  onTap: (){},
                  child: ClipOval(
                      child: Container(
                        color: accentColor,
                        height: w(44),
                        width: w(44),
                        child:  ClipOval(
                          child: Container(
                              decoration:
                              const BoxDecoration(
                                shape: BoxShape
                                    .circle,
                                color: Color(
                                    0x33ECECFF),
                              ),
                              child: Center(
                                child: Text(
                                  model.appService.user!.firstName.substring(0,1).toUpperCase()+model.appService.user!.lastName.substring(0,1).toUpperCase(),
                                    maxLines: 1,
                                    overflow:
                                    TextOverflow
                                        .ellipsis,
                                    style: TextStyle(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: h(18))),
                              )),
                        ),
                      )
                  )),
            ),
          ],
        ),
      ),
      disposeViewModel: false,
      viewModelBuilder: () => locator<AppBarViewModel>(),
    );
  }

}


class AppBarViewModel extends ReactiveViewModel {
  final appService = locator<AppService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [appService];

}