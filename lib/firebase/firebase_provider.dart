import 'dart:js_interop';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseProvider {

  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static const String SHAYARI_COLLECTION = "shayari";

  static const String AUTHOR_COLLECTION = "authors";

  static const String CHAT_TAB_COLLECTION = "chat";

  static const String MORNING_TAB_COLLECTION = "good_morning";

  static const String GOOD_NIGHT_TAB_COLLECTION = "good_night";

  static const String LATEST_TAB_COLLECTION = "latest";

  static const String MOTIVATION_TAB_COLLECTION = "motivation";

  static const String WHATSAPP_TAB_COLLECTION = "whatsApp";



}