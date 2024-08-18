import 'package:plant_disease_detection/provider/language_provider.dart';
import 'package:provider/provider.dart';

class Plant {
  final String plantName;
  final String imageURL;
  
  final String description;


  final String disease;
  final String cure;
  final String Pesticides ;

  


  Plant( {
      required this.plantName,
      required this.imageURL,
     required this.description, 
     // ignore: non_constant_identifier_names
     required this.disease, required this.cure, required this.Pesticides, 
     
      });




}
