var ReducetarianStrategies = (function() {

  var strategies = [
    {
      'key' : 'meatless_mondays',
      'label' : 'Meatless Mondays',
      calculatePledgedMeatyMealsPerWeek : function(meatyMealsPerDay) {
        // Take stated daily consumption and multiply by six.
        var pledgedMeatyMealsPerWeek = meatyMealsPerDay * 6;
        return pledgedMeatyMealsPerWeek;
      }
    },

    {
      'key' : 'vegetarian_before_six',
      'label' : 'Vegetarian before six',
      calculatePledgedMeatyMealsPerWeek : function(meatyMealsPerDay) {
        // Take stated consumption and halve it.
        var pledgedMeatyMealsPerWeek = meatyMealsPerDay * 7 * 0.5;
        return pledgedMeatyMealsPerWeek;
      }
    },

    {
      'key' : 'weekday_vegetarian',
      'label' : 'Weekday vegetarian',
      calculatePledgedMeatyMealsPerWeek : function(meatyMealsPerDay) {
        // Take stated daily consumption and multiply by two.
        var pledgedMeatyMealsPerWeek = meatyMealsPerDay * 2;
        return pledgedMeatyMealsPerWeek;
      }
    },

    {
      'key' : 'everyday_vegetarian',
      'label' : 'Everyday Vegetarian',
      calculatePledgedMeatyMealsPerWeek : function() {
        // Full vegetarian means 0 meaty meals.
        var pledgedMeatyMealsPerWeek = 0;
        return pledgedMeatyMealsPerWeek;
      }
    },
  ];

  return {
      get: function() {
        return strategies;
      }
  };

})();
