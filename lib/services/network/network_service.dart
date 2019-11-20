// Base class used by all network services
import 'package:flutter/material.dart';

class NetworkService {
  NetworkService({@required this.url});

  final String url; // url of the remote endpoint
}
