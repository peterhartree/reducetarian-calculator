/* global riot */

function ReducetarianCalculator() {
  this.views = {}; // Reference object for storing all view templates (RiotJS tags)
  this.userInput = {};
  this.userInput.meatyMealsPerDay = null;
  this.userInput.strategy = 'meatless_mondays';
  this.calculations = {};
  this.calculations.meatyMealsPerWeek = null;
  this.calculations.gallonsSaved = null;
  this.calculations.animalsSaved = null;
  this.calculations.co2Saved = null;
  this.state = {};
  this.state.pledgeTaken = false;
}

ReducetarianCalculator.prototype.calculateMeatyMealsPerWeek = function() {
  this.calculations.meatyMealsPerWeek = this.userInput.meatyMealsPerDay * 7;
};

ReducetarianCalculator.prototype.updateImpactCalculation = function() {
  ReducetarianCalculator.calculateAnimalsSaved();
  ReducetarianCalculator.calculateCo2Saved();
  ReducetarianCalculator.calculateWaterSaved();
};

ReducetarianCalculator.prototype.calculateWaterSaved = function() {
  this.calculations.waterSaved = getRandomInt(1, 10);
};

ReducetarianCalculator.prototype.calculateAnimalsSaved = function() {
  this.calculations.animalsSaved = getRandomInt(10, 30);
};

ReducetarianCalculator.prototype.calculateCo2Saved = function() {
  this.calculations.co2Saved = getRandomInt(1, 10);
};

ReducetarianCalculator.prototype.pledge = function() {
  console.log('Submitting pledge');
  ReducetarianCalculator.state.pledgeTaken = true;
};

var ReducetarianCalculator = new ReducetarianCalculator();

ReducetarianCalculator.views.main = riot.mount('meat-consumption-calculator');

riot.route.start();

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

//riot.route('/ra');