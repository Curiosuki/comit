import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:hijackupgrade/Services/api_path.dart';
import 'package:hijackupgrade/Services/job.dart';

abstract class Database {
  Future<void> createToDo(Job job);
}

class FirebaseDatabase implements Database {
  final String uid;

  FirebaseDatabase({@required this.uid}) : assert(uid != null);

  Future<void> createToDo(Job job) async {
    final path = APIPath.job(uid, 'job_abc');
    final documentReference = Firestore.instance.document(path);
    await documentReference.setData(job.toMap());
  }
}
