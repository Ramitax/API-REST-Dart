import 'package:arg/response.dart' as response;
import 'package:http/http.dart' as http;

void getResponse() {
  final url = Uri.parse('https://restcountries.eu/rest/v2/alpha/arg');
  http.get(url).then((data) {
    final respuesta = response.responseFromJson(data.body);
    print('Pais : ${respuesta.name}');
    print('Poblacion: ${respuesta.population}');
    print('Capital: ${respuesta.capital}');
  });
}
