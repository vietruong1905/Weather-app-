void buildingURL(){



}// End building URL
//edmonton: 5946768
// vancouver: 6173331
//calgary: 5913490

String baseURL_Current = " http://api.openweathermap.org/data/2.5/weather?";
String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
String albertaId = " id=5883102"; //City ID Numbers
String edmontonId = " id= 5946768";
String CalgaryId = " id= 5913490";
String vancouverId = " id= 6173331";
String apiKey= "APPID="; 
String mode="mode=json";
String unitMetric ="units=metric";
String and="&"; 

String URLCurrentAlberta =  baseURL_Current + albertaId + and + apiKey + and + mode + unitMetric;
String URLForecastAlberta= baseURL_Forecast + albertaId + and + apiKey + and + mode + unitMetric;
String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + unitMetric; 
String URLForecastEdmonton =baseURL_Forecast + edmontonId + and + apiKey + and + mode + unitMetric;
String URLCurrentCalgary  = baseURL_Current + CalgaryId + and + apiKey + and + mode + unitMetric;
String URLforecastCalgary  = baseURL_Forecast + CalgaryId+ and + apiKey + and + mode + unitMetric;
String URLCurrentvancouver  = baseURL_Current + vancouverId+ and + apiKey + and + mode + unitMetric;
String URLForecastvancouver  = baseURL_Forecast + vancouverId + and + apiKey + and + mode + unitMetric;

println(URLCurrentEdmonton);
println(URLForecastEdmonton);
JSONObject jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);


void APICall() {}
