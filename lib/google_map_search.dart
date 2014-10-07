// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_map_search`.
library core_elements.google_map_search;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'package:custom_element_apigen/src/common.dart' show DomProxyMixin;

/// Provides Google Maps Places API functionality.
///
/// See https://developers.google.com/maps/documentation/javascript/places for more
/// information on the API.
///
/// #### Example:
///
///     <template is="auto-binding">
///       <google-map-search map="{{map}}" query="Pizza"
///                          result="{{result}}"></google-map-search>
///       <google-map map="{{map}}" latitude="37.779"
///                   longitude="-122.3892"></google-map>
///       <div>Result: {{result.latitude}}, {{result.longitude}}</div>
///     </template>
///     <script>
///       document.querySelector('google-map-search').search();
///     </script>
class GoogleMapSearch extends HtmlElement with DomProxyMixin {
  GoogleMapSearch.created() : super.created();
  factory GoogleMapSearch() => new Element.tag('google-map-search');

  /// The search query.
  String get query => jsElement['query'];
  set query(String value) { jsElement['query'] = value; }

  /// The search result.
  get result => jsElement['result'];
  set result(value) { jsElement['result'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// TAhe Google map object.
  get map => jsElement['map'];
  set map(value) { jsElement['map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Performance a search using for `query` for the search term.
  void search() =>
      jsElement.callMethod('search', []);
}
@initMethod
upgradeGoogleMapSearch() => registerDartType('google-map-search', GoogleMapSearch);
