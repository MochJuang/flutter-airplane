import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_airplane/models/destination_model.dart';

class DestinationService {
  CollectionReference destinationRef =
      FirebaseFirestore.instance.collection("destinations");

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot snapshot = await destinationRef.get();

      List<DestinationModel> destinations = snapshot.docs.map((e) {
        return DestinationModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      rethrow;
    }
  }
}
