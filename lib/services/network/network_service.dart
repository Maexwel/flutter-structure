// Base class used by all network services
import 'package:flutter/material.dart';

// Base network service class.
// All network services should extends this class
class NetworkService {
  final String url; // url of the remote endpoint
  final String authToken; // token used for secured service

  NetworkService({@required this.url, this.authToken});
}