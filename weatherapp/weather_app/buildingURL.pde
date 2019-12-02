//Global Variable
//String URLCurrentAlberta;
//String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentCalgary;
String URLForecastCalgary;
String URLCurrentChita;
String URLForecastChita;

//JSONObject jsonCurrentAlberta;
//JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentCalgary;
JSONObject jsonForecastCalgary;
JSONObject jsonCurrentChita;
JSONObject jsonForecastChita;

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
 // String albertaId = "id=5883102"; //City ID Numbers
  String edmontonId = "id=5946768";
  String calgaryId = "id=5913490";
  String ChitaId = "id=2025339";
  String apiKey = "APPID=eb6f025db8559f7fe536378c831d83e7"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";

 
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentCalgary = baseURL_Current+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLForecastCalgary = baseURL_Forecast+calgaryId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentChita = baseURL_Current+ChitaId+and+apiKey+and+mode+and+unitMetric;
  URLForecastChita = baseURL_Forecast+ChitaId+and+apiKey+and+mode+and+unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly
  //println(URLCurrentAlberta);
  //println(URLForecastAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastEdmonton);
  //println(URLCurrentCalgary);
  //println(URLForecastCalgary);
  //println(URLCurrentRedDeer);
  //println(URLForecastRedDeer);
} //End buildingURL()

void APICall() {
 
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentCalgary = loadJSONObject(URLCurrentCalgary);
  jsonForecastCalgary = loadJSONObject(URLForecastCalgary);
  jsonCurrentChita = loadJSONObject(URLCurrentChita);
  jsonForecastChita = loadJSONObject(URLForecastChita);
} //End APICall

//Loading JSONObjects with Website API Data
