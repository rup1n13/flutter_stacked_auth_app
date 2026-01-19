
import '../../../commons/app_ui_helpers.dart';
import '../../../ui/components/widget/app_toast.dart';

class Handle {

  Handle.message(message){
    switch(message){
        /// [Login]
      case "Invalid Phone or Password":
        AppErrorMessage.show(l10n.tomdpi);
        break;

        /// [Register]
      case "User with phone already registered":
        AppErrorMessage.show(l10n.uuacndtede);
        break;

      default:
        AppErrorMessage.show(l10n.ueesvrToast);
      break;
    }
  }

  Handle.error(data,Function(String) resume){
    switch(data["status"]){
    /// [Vérification code]
      case 401:
        /**if(!(data["path"].toString().endsWith("/refresh-access-token"))){
          debugPrint("refreshToken ${locator<AppService>().userSession?.refreshToken}");
          Map<String, dynamic> data = {
            "refreshToken": locator<AppService>().userSession?.refreshToken,
          };
          AuthRepository.refreshToken(data, (responseData){
            if(responseData!= null){
              AuthResponse authResponse = locator<AppService>().userSession!;
              authResponse.accessToken = responseData.accessToken;
              authResponse.refreshToken = responseData.refreshToken;

              /// Save session on localStorage
              LocalStorage.saveData(DBKey.userSession,
                  const JsonEncoder().convert(authResponse.toJson()));
              /// Save session on app Service
              locator<AppService>().updateUserSession(authResponse);
              resume("401");
            }
            else{
              navigationService().clearStackAndShowView( const LoginView() );
            }
          });
        }
        else{
          navigationService().clearStackAndShowView( const LoginView() );
        }**/
        break;

      default:
        resume('');
        break;
    }
  }

}