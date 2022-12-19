import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:your_pg_dost/controllers/firestore_controller.dart';

class DataController {
  Future<String> getNewDocId() async {
    String docId = "";

    docId = await FirestoreController().firestore.collection("Temp").add({"name" : "dfghm"}).then((DocumentReference reference) async {
      await reference.delete();

      return reference.id;
    });

    print("DocId:" + docId);
    return docId;
  }
}