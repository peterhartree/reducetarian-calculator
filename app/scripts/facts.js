var ReducetarianFacts = (function() {

  var facts = {};
  facts.globalAverageDailyConsumption = 0.1;
  facts.portionSizes = [];

  facts.portionSizes[1] = {
    'lbs' : 0.23,
    'globalPercentile' : 82
  };

  facts.portionSizes[2] = {
    'lbs' : 0.34,
    'globalPercentile' : 96
  };

  facts.portionSizes[3] = {
    'lbs' : 0.45,
    'globalPercentile' : 99.5
  };

  facts.cO2PerLbOfConsumption = 1; // ??
  facts.waterPerLbOfConsumption = 1; // ??
  facts.animalLivesPerLbOfConsumption = 1; // ??

  return {
      get: function() {
        return facts;
      }
  };

})();


