var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

var numOfCities = function(cities) {
  var result = "";
  for (var city in cities) {
    var provCities = cities[city].length;
       result += (city + " has " + provCities + " main cities. ");
  }
  return result.trim();
};
