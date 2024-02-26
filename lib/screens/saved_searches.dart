import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental/components/location_icon.dart';
import 'package:rental/components/notification_icon.dart';
import 'package:rental/models/saved_searches_model.dart';

class SavedSearches extends StatefulWidget {
  const SavedSearches({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SavedSearchesState createState() => _SavedSearchesState();
}

class _SavedSearchesState extends State<SavedSearches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: const Text(
            'Saved Searches',
            style: TextStyle(color: Colors.black),
          ),
          actions: [locationIcon(context), notificationIcon(context)], systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: listOfSavedSearches());
  }

  listOfSavedSearches() {
    List<SavedSearchesModel> savedSearchesData = [
      SavedSearchesModel(
          title: 'Plot 165,Street no 05, New York',
          location: 'New York',
          purpose: 'Sell',
          propertyType: 'Commercial'),
      SavedSearchesModel(
          title: 'Plot 005,Street no 67, LA',
          location: 'Los Angeles',
          purpose: 'Sell',
          propertyType: 'Residential'),
      SavedSearchesModel(
          title: 'Plot 12,Street no 23, Chicago',
          location: 'Chicago',
          purpose: 'Sell',
          propertyType: 'Commercial'),
      SavedSearchesModel(
          title: 'Plot 165,Street no 05, New York',
          location: 'New York',
          purpose: 'Sell',
          propertyType: 'Commercial'),
      SavedSearchesModel(
          title: 'Plot 002,Street no 70, Californiaaa',
          location: 'California',
          purpose: 'Sell',
          propertyType: 'Residential'),
      SavedSearchesModel(
          title: 'Plot 052,Street no 56, Michigan',
          location: 'Michigan',
          purpose: 'Sell',
          propertyType: 'Commercial')
    ];

    return ListView.builder(
        itemCount: savedSearchesData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        savedSearchesData[index].title!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Text('PURPOSE: ', style: TextStyle(fontSize: 13)),
                              Text(savedSearchesData[index].purpose!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              const Text(
                                'TYPE: ',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                savedSearchesData[index].propertyType!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Text('LOCATION: ',
                                  style: TextStyle(fontSize: 13)),
                              Text(savedSearchesData[index].location!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.delete,
                            color: Colors.grey[500],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
