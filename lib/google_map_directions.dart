// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_map_directions`.
library core_elements.google_map_directions;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'package:custom_element_apigen/src/common.dart' show DomProxyMixin;

/// Provides the Google Maps API Directions Service to provide directions
/// between a `startAddress` and `endAddress`.
///
/// See https://developers.google.com/maps/documentation/javascript/directions for more
/// information on the API.
///
/// #### Example:
///
///     <template is="auto-binding">
///       <google-map-directions map="{{map}}"
///           startAddress="San Francisco"
///           endAddress="Mountain View"
///           travelMode="TRANSIT"></google-map-directions>
///       <google-map map="{{map}}" latitude="37.779"
///                   longitude="-122.3892"></google-map>
///     </template>
class GoogleMapDirections extends HtmlElement with DomProxyMixin {
  GoogleMapDirections.created() : super.created();
  factory GoogleMapDirections() => new Element.tag('google-map-directions');

  /// The Google map object.
  get map => jsElement['map'];
  set map(value) { jsElement['map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Start address or latlng to get directions from.
  get startAddress => jsElement['startAddress'];
  set startAddress(value) { jsElement['startAddress'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// End address or latlng for directions to end.
  get endAddress => jsElement['endAddress'];
  set endAddress(value) { jsElement['endAddress'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Travel mode to use.  One of 'DRIVING', 'WALKING', 'BICYCLING', 'TRANSIT'.
  String get travelMode => jsElement['travelMode'];
  set travelMode(String value) { jsElement['travelMode'] = value; }

  /// The response from the directions service.
  get response => jsElement['response'];
  set response(value) { jsElement['response'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}
}
@initMethod
upgradeGoogleMapDirections() => registerDartType('google-map-directions', GoogleMapDirections);
