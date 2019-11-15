import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherCalgary, descriptionCalgary, iconCalgary, countryCalgary, nameCalgary;
float tempCalgary, tempMinCalgary, tempMaxCalgary;
int apiCallTimeCalgary, sunriseCalgary, sunsetCalgary;

String mainWeatherVancouver, descriptionVancouver, iconVancouver, countryVancouver, nameVancouver;
float tempVancouver, tempMinVancouver, tempMaxVancouver;
int apiCallTimeVancouver, sunriseVancouver, sunsetVancouver;

void unwrapToVariables() {
  currentEdmonton();
  currentCalgary();
  currentVancouver();
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentCalgary() {
  JSONArray weatherCalgary = jsonCurrentCalgary.getJSONArray("weather"); //Unwrapping

  JSONObject allCalgary = weatherCalgary.getJSONObject(0); //Unwrap {}
  mainWeatherCalgary = allCalgary.getString("main");
  descriptionCalgary = allCalgary.getString("description");
  iconCalgary = allCalgary.getString("icon");

  JSONObject mainCalgary = jsonCurrentCalgary.getJSONObject("main"); //Unwrap {}
  tempCalgary = mainCalgary.getFloat("temp");
  tempMinCalgary = mainCalgary.getFloat("temp_min");
  tempMaxCalgary = mainCalgary.getFloat("temp_max");

  apiCallTimeCalgary = jsonCurrentCalgary.getInt("dt");

  JSONObject sysCalgary = jsonCurrentCalgary.getJSONObject("sys"); //Unwrap {}
  countryCalgary = sysCalgary.getString("country");
  sunriseCalgary = sysCalgary.getInt("sunrise");
  sunsetCalgary = sysCalgary.getInt("sunset");

  nameCalgary = jsonCurrentCalgary.getString("name");
}

void currentVancouver() {
  JSONArray weatherVancouver = jsonCurrentVancouver.getJSONArray("weather"); //Unwrapping

  JSONObject allVancouver = weatherVancouver.getJSONObject(0); //Unwrap {}
  mainWeatherVancouver = allVancouver.getString("main");
  descriptionVancouver = allVancouver.getString("description");
  iconVancouver = allVancouver.getString("icon");

  JSONObject mainVancouver = jsonCurrentVancouver.getJSONObject("main"); //Unwrap {}
  tempVancouver = mainVancouver.getFloat("temp");
  tempMinVancouver = mainVancouver.getFloat("temp_min");
  tempMaxVancouver = mainVancouver.getFloat("temp_max");

  apiCallTimeVancouver = jsonCurrentVancouver.getInt("dt");

  JSONObject sysVancouver = jsonCurrentVancouver.getJSONObject("sys"); //Unwrap {}
  countryVancouver = sysVancouver.getString("country");
  sunriseVancouver = sysVancouver.getInt("sunrise");
  sunsetVancouver = sysVancouver.getInt("sunset");

  nameVancouver = jsonCurrentVancouver.getString("name");
}
