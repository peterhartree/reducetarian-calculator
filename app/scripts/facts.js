var ReducetarianFacts = (function() {

  var facts = {};
  facts.globalAverageDailyConsumption = 0.1; // lbs
  facts.portionSizes = [];

  // If a user self-reports one meaty meal per day we assume
  // they're consuming 0.23 lbs of meat per day.
  //
  // This puts them in 82nd percentile of global daily consumption.
  facts.portionSizes[1] = {
    'lbs' : 0.23,
    'globalPercentile' : 82
  };

  // If a user self-reports two meaty meals per day we assume
  // they're consuming 0.34 lbs of meat per day.
  //
  // This puts them in 96th percentile of global daily consumption.
  facts.portionSizes[2] = {
    'lbs' : 0.34,
    'globalPercentile' : 96
  };

  // If a user self-reports three meaty meals per day we assume
  // they're consuming 0.45 lbs of meat per day.
  //
  // This puts them in 99.5th percentile of global daily consumption.
  facts.portionSizes[3] = {
    'lbs' : 0.45,
    'globalPercentile' : 99.5
  };

  facts.cO2PerLbOfConsumption = 14.7; // lbs
  facts.waterPerLbOfConsumption = 5.3; // gallons
  facts.animalLivesPerLbOfConsumption = 0.16; // lives

  return {
      get: function() {
        return facts;
      }
  };

})();


