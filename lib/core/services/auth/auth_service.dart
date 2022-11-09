import 'dart:io';

import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/auth/auth_mock_service.dart';

abstract class AuthService {
  ChatUser? get currentUser;

  Stream<ChatUser?> get userChanges;

  Future<void> signup(
    String nome,
    String email,
    String password,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );
  
  Future<void> logout();

  // factory auxilia p/ instanciar subtipos da classe
  factory AuthService(){
    return AuthMockService();
    //return AuthFirebaseService();
  }
}