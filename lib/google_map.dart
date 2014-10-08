// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_map`.
library google_map_dart.google_map;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'package:custom_element_apigen/src/common.dart' show DomProxyMixin;

/// The `google-map-marker` element represents a map marker. It is used as a
/// child of `google-map`.
///
/// <b>Example</b>:
///
///     <google-map latitude="37.77493" longitude="-122.41942">
///       <google-map-marker latitude="37.779" longitude="-122.3892"
///           title="Go Giants!"></google-map-marker>
///     </google-map>
///
/// <b>Example</b> - marker with info window (children create the window content):
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942">
///       <img src="image.png">
///     </google-map-marker>
///
/// <b>Example</b> - a draggable marker:
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942"
///          draggable="true"></google-map-marker>
///
/// <b>Example</b> - hide a marker:
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942"
///         hidden></google-map-marker>
class GoogleMapMarker extends HtmlElement with DomProxyMixin {
  GoogleMapMarker.created() : super.created();
  factory GoogleMapMarker() => new Element.tag('google-map-marker');

  /// Image URL for the marker icon.
  String get icon => jsElement['icon'];
  set icon(String value) { jsElement['icon'] = value; }

  /// A Google Maps marker object.
  get marker => jsElement['marker'];
  set marker(value) { jsElement['marker'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// The Google map object.
  get map => jsElement['map'];
  set map(value) { jsElement['map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// A Google Map Infowindow object.
  get info => jsElement['info'];
  set info(value) { jsElement['info'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// The marker's longitude coordinate.
  num get longitude => jsElement['longitude'];
  set longitude(num value) { jsElement['longitude'] = value; }

  /// The marker's latitude coordinate.
  num get latitude => jsElement['latitude'];
  set latitude(num value) { jsElement['latitude'] = value; }
}
@initMethod
upgradeGoogleMapMarker() => registerDartType('google-map-marker', GoogleMapMarker);



/// The `google-map` element renders a Google Map.
///
/// <b>Example</b>:
///
///     <style>
///       google-map {
///         display: block;
///         height: 600px;
///       }
///     </style>
///     <google-map latitude="37.77493" longitude="-122.41942"></google-map>
///
/// <b>Example</b> - add markers to the map and ensure they're in view:
///
///     <google-map latitude="37.77493" longitude="-122.41942" fitToMarkers>
///       <google-map-marker latitude="37.779" longitude="-122.3892"
///           draggable="true" title="Go Giants!"></google-map-marker>
///       <google-map-marker latitude="37.777" longitude="-122.38911"></google-map-marker>
///     </google-map>
///
/// <b>Example</b>:
///
///     <google-map disableDefaultUI showCenterMarker zoom="15"></google-map>
///     <script>
///       var map = document.querySelector('google-map');
///       map.latitude = 37.77493;
///       map.longitude = -122.41942;
///       map.addEventListener('google-map-ready', function(e) {
///         alert('Map loaded!');
///       });
///     </script>
///
/// <b>Example</b> - with Google directions, using data-binding inside another Polymer element
///
///     <google-map map="{{map}}"></google-map>
///     <google-map-directions map="{{map}}"
///         startAddress="San Francisco" endAddress="Mountain View">
///     </google-map-directions>
///
/// <b>Example</b> - not all map options are included as attributes out of the box.
/// To add custom map options, you can extend this element:
///
///     <polymer-element name="my-google-map" extends="google-map">
///       <script>
///         Polymer('my-google-map', {
///
///           getMapOptions: function() {
///             var mapOptions = this.super();
///             mapOptions["streetViewControl"] = false;
///             return mapOptions;
///           }
///
///         });
///       </script>
///     </polymer-element>
class GoogleMap extends HtmlElement with DomProxyMixin {
  GoogleMap.created() : super.created();
  factory GoogleMap() => new Element.tag('google-map');

  /// A Maps API key. To obtain an API key, see developers.google.com/maps/documentation/javascript/tutorial#api_key.
  String get apiKey => jsElement['apiKey'];
  set apiKey(String value) { jsElement['apiKey'] = value; }

  /// A latitude to center the map on.
  num get latitude => jsElement['latitude'];
  set latitude(num value) { jsElement['latitude'] = value; }

  /// A longitude to center the map on.
  num get longitude => jsElement['longitude'];
  set longitude(num value) { jsElement['longitude'] = value; }

  /// A zoom level to set the map to.
  num get zoom => jsElement['zoom'];
  set zoom(num value) { jsElement['zoom'] = value; }

  /// When set, displays a map marker at the center point.
  bool get showCenterMarker => jsElement['showCenterMarker'];
  set showCenterMarker(bool value) { jsElement['showCenterMarker'] = value; }

  /// Version of the Google Maps API to use.
  String get version => jsElement['version'];
  set version(String value) { jsElement['version'] = value; }

  get map => jsElement['map'];
  set map(value) { jsElement['map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Map type to display. One of 'roadmap', 'satellite', 'hybrid', 'terrain'.
  String get mapType => jsElement['mapType'];
  set mapType(String value) { jsElement['mapType'] = value; }

  /// If set, removes the map's default UI controls.
  bool get disableDefaultUI => jsElement['disableDefaultUI'];
  set disableDefaultUI(bool value) { jsElement['disableDefaultUI'] = value; }

  /// If set, the zoom level is set such that all markers (google-map-marker children) are brought into view.
  bool get fitToMarkers => jsElement['fitToMarkers'];
  set fitToMarkers(bool value) { jsElement['fitToMarkers'] = value; }

  /// If false, prevent the user from zooming the map interactively.
  bool get zoomable => jsElement['zoomable'];
  set zoomable(bool value) { jsElement['zoomable'] = value; }

  /// If set, custom styles can be applied to the map.
  /// For style doucmentation see developers.google.com/maps/documentation/javascript/reference#MapTypeStyle
  get styles => jsElement['styles'];
  set styles(value) { jsElement['styles'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Clears all markers from the map.
  void clear() =>
      jsElement.callMethod('clear', []);
}
@initMethod
upgradeGoogleMap() => registerDartType('google-map', GoogleMap);
