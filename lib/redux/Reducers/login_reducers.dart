import 'package:mobile/redux/Actions/login_actions.dart';
import 'package:mobile/Models/app_state.dart';



AppState reducer (AppState prevState, dynamic action){

    //App newState to prevent mutation 

    AppState newState = AppState.fromAppState(prevState); 
}
