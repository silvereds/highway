import 'package:flutter/material.dart';
import 'package:mobile/dao/db_connect.dart';
import 'package:mobile/dao/session_dao.dart';
import 'package:mobile/entities/session.dart';
import 'package:mobile/shared/routes.dart';

class SplashScreenController {
  SessionDao sessionDao;

  SplashScreenController() {
    final DBConnect dbConnect = DBConnect.db;
    sessionDao = new SessionDao(dbConnect);
  }

  Future<bool> isUserLoggedIn() async {
    Session session = await sessionDao.getSession();
    if (session != null) {
      return true;
    } else {
      return false;
    }
  }

  navigateToNextPage(context, bool sessionExists) {
    if (sessionExists) {
      Navigator.pushNamed(context, AppRoutes.dashboard);
    } else {
      Navigator.pushNamed(context, AppRoutes.registerPage);
    }
  }
}
