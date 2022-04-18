import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight_schedule/data/mappers/flights.dart';
import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';

class FlightsRepoFirebase implements FlightsRepo {
  final FirebaseFirestore store = FirebaseFirestore.instance;

  @override
  Future<List<Flight>> get() async {
    final snap = await store.collection("flights").get();
    return snap.docs.map((doc) => extractFlight(doc)).toList();
  }
}
