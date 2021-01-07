import 'package:mobile/redux/actions.dart';
import 'package:mobile/Models/Login/app_state.dart';



AppState reducer (AppState prevState, dynamic action){

    //App newState to prevent mutation 

    AppState newState = AppState.fromAppState(prevState); 
}
