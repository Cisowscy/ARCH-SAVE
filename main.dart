import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular_tour_of_heroes/app_component.dart';
import 'package:angular_tour_of_heroes/in_memory_data_service.dart';
import 'package:http/http.dart';

void main() {
  bootstrap(AppComponent, [provide(Client, useClass: InMemoryDataService)]
      // Using a real back end? Import browser_client.dart and change the above to
      // [provide(Client, useFactory: () => new BrowserClient(), deps: [])]
      );
}
/*
import 'package:http/browser_client.dart';
void main() {
  bootstrap(AppComponent, [
    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: [])
  ]);
}
*/
