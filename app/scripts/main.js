/* global riot */

// Chart.Js tweak thanks to http://stackoverflow.com/a/31918380/2078758

Chart.types.Bar.extend({
    name: "BarAlt",
    draw: function () {
        Chart.types.Bar.prototype.draw.apply(this, arguments);

        var ctx = this.chart.ctx;
        ctx.save();
        // text alignment and color
        ctx.textAlign = "center";
        ctx.textBaseline = "bottom";
        ctx.fillStyle = this.options.scaleFontColor;
        // position
        var x = this.scale.xScalePaddingLeft * 0.4;
        var y = this.chart.height / 2;
        // change origin
        ctx.translate(x, y)
        // rotate text
        ctx.rotate(-90 * Math.PI / 180);
        ctx.fillText(this.datasets[0].label, 0, 0);
        ctx.restore();
    }
});

function ReducetarianCalculator() {
  this.views = {}; // Reference object for storing all view templates (RiotJS tags)
  this.userInput = {};
  this.userInput.meatyMealsPerDay = null;
  this.userInput.firstResponseToMeatyMealsPerDay = null;
  this.userInput.strategy = 'meatless_mondays';
  this.calculations = {};
  this.calculations.meatyMealsPerWeek = null;
  this.calculations.pledgedMeatyMealsPerWeek = null;
  this.calculations.reducedConsumption = null;
  this.calculations.gallonsSaved = null;
  this.calculations.animalsSaved = null;
  this.calculations.co2Saved = null;
  this.state = {};
  this.state.pledgeTaken = false;
  this.facts = ReducetarianFacts.get();
  this.strategies = ReducetarianStrategies.get();
  this.charts = {};
  this.charts.barChart = null;
  this.charts.donutChart = null;
  this.colors = {};
  this.colors.brandPrimary = '#89b100';
  this.colors.brandPrimaryHighlight = '#a9c83a';
  this.colors.gray = '#555';
  this.colors.grayHighlight = '#777';
}

ReducetarianCalculator.prototype.updateCharts = function() {
  this.updateBarChart();
  this.updateDonutChart();
};

ReducetarianCalculator.prototype.updateBarChart = function() {
  if(this.charts.barChart !== null) {
    // Update existing chart
    this.charts.barChart.datasets[0].bars[1].value = this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs;
    this.charts.barChart.update();
  }
  else {
    // Draw new chart
    var data = {
      labels: ["Global average", "You"],
      datasets: [
        {
          label: "Lbs of meat consumption",
          fillColor: this.colors.gray,
          strokeColor: this.colors.gray,
          highlightFill: this.colors.grayHighlight,
          highlightStroke: this.colors.grayHighlight,
          data: [this.facts.globalAverageDailyConsumption, this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs]
        }
      ]
    };
    var ctx = document.getElementById("barChart").getContext("2d");
    var chartOptions = {
      scaleShowHorizontalLines: false,
      scaleShowVerticalLines: false,
      scaleOverride: true,
      scaleSteps: 5,
      scaleStepWidth: 0.1,
      scaleStartValue: 0,
      scaleFontSize: 14,

      scaleGridLineColor : "rgba(26,26,26,.7)",
      scaleFontColor: "rgba(26,26,26,.7)",
      scaleFontFamily: "'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      scaleFontStyle: "bold",
      scaleLabel: "          <%=value%>", // The spaces make room for Y axis label

      tooltipFillColor: "rgba(0,0,0,0.8)",
      tooltipFontFamily: "'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %> lbs",
    };

    this.charts.barChart = new Chart(ctx).BarAlt(data, chartOptions);
    this.charts.barChart.datasets[0].bars[0].fillColor = this.colors.brandPrimary;
    this.charts.barChart.datasets[0].bars[0].strokeColor = this.colors.brandPrimary;
    this.charts.barChart.datasets[0].bars[0].highlightFill = this.colors.brandPrimaryHighlight;
    this.charts.barChart.datasets[0].bars[0].highlightStroke = this.colors.brandPrimaryHighlight;
    this.charts.barChart.update();
  }
};

ReducetarianCalculator.prototype.updateDonutChart = function() {
  if(this.charts.donutChart !== null) {
    // Update existing chart
    this.charts.donutChart.segments[0].value = this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile;
    this.charts.donutChart.segments[1].value = 100 - this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile;
    this.charts.donutChart.update();
  }
  else {
    // Draw new chart
    var data = [
      {
          value: this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,
          color: this.colors.brandPrimary,
          highlight: this.colors.brandPrimary,
          label: "eat less meat than you"
      },
      {
          value: 100 - this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,
          color: this.colors.gray,
          highlight: this.colors.grayHighlight,
          label: "eat more meat than you"
      }
    ];
    var ctx = document.getElementById("donutChart").getContext("2d");
    var chartOptions = {
      tooltipFillColor: "rgba(0,0,0,0.8)",
      tooltipFontFamily: "'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      tooltipTemplate: "<%if (label){%><%= value %>% <%=label%><%}%>",
    };
    this.charts.donutChart = new Chart(ctx).Doughnut(data, chartOptions);
    this.charts.donutChart.datasets[0].bars[0].fillColor = this.colors.brandPrimary;
    this.charts.donutChart.datasets[0].bars[0].strokeColor = this.colors.brandPrimary;
    this.charts.donutChart.datasets[0].bars[0].highlightFill = this.colors.brandPrimaryHighlight;
    this.charts.donutChart.datasets[0].bars[0].highlightStroke = this.colors.brandPrimaryHighlight;
    this.charts.donutChart.update();
  }
};


ReducetarianCalculator.prototype.setUserInput = function(key, value) {
  // We'll store the first response for our records, and also for
  // controlling infographic animation.
  if(key === 'meatyMealsPerDay' && this.userInput.meatyMealsPerDay === null) {
    this.setUserInput('firstResponseToMeatyMealsPerDay', value);
  }

  this.userInput[key] = value;

  this.calculateMeatyMealsPerWeek();
};

ReducetarianCalculator.prototype.calculateMeatyMealsPerWeek = function() {
  this.calculations.meatyMealsPerWeek = this.userInput.meatyMealsPerDay * 7;
};

ReducetarianCalculator.prototype.calculateGlobalConsumptionPercentile = function() {
  this.calculations.globalConsumptionPercentile = this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile;
};

ReducetarianCalculator.prototype.calculateFactorToAverageConsumption = function() {
  this.calculations.factorToAverageConsumption = this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs / this.facts.globalAverageDailyConsumption;
};

ReducetarianCalculator.prototype.updateImpactCalculation = function() {
  ReducetarianCalculator.calculateReducedConsumptionPerMonth();
  ReducetarianCalculator.calculateAnimalsSaved();
  ReducetarianCalculator.calculateCo2Saved();
  ReducetarianCalculator.calculateWaterSaved();
};

ReducetarianCalculator.prototype.calculateReducedConsumptionPerMonth = function() {

  // How many meaty meals pledged per week?
  this.strategies.forEach(function(strategy, index) {
    if(strategy.key === ReducetarianCalculator.userInput.strategy) {
      ReducetarianCalculator.calculations.pledgedMeatyMealsPerWeek = strategy.calculatePledgedMeatyMealsPerWeek(ReducetarianCalculator.userInput.meatyMealsPerDay);
    }
  });

  console.log('original meaty meals per week');
  console.log(this.calculations.meatyMealsPerWeek);

  console.log('pledged meaty meals per week');
  console.log(this.calculations.pledgedMeatyMealsPerWeek);

  // How many fewer meaty meals does this mean per week?
  this.calculations.fewerMeatyMealsPerWeek = this.calculations.meatyMealsPerWeek - this.calculations.pledgedMeatyMealsPerWeek;

  // How many fewer meaty meals does this mean per month?
  this.calculations.fewerMeatyMealsPerMonth = this.calculations.fewerMeatyMealsPerWeek * 4.3;

  // How many lbs of reduced consumption per month?
  this.calculations.lbsReducedConsumptionPerMonth = this.roundToTwoDecimalPlaces(this.calculations.fewerMeatyMealsPerMonth * this.facts.portionSizes[1].lbs);

  console.log('lbs of reduced consumption per month');
  console.log(this.calculations.lbsReducedConsumptionPerMonth);
}

ReducetarianCalculator.prototype.roundToTwoDecimalPlaces = function(number) {
  return Math.round(number * 10) / 10;
}

ReducetarianCalculator.prototype.calculateWaterSaved = function() {
  this.calculations.waterSavedPerMonth = this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth * this.facts.waterPerLbOfConsumption);
};

ReducetarianCalculator.prototype.calculateAnimalsSaved = function() {
  this.calculations.animalsSavedPerMonth = this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth * this.facts.animalLivesPerLbOfConsumption);
};

ReducetarianCalculator.prototype.calculateCo2Saved = function() {
  this.calculations.co2SavedPerMonth = this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth * this.facts.cO2PerLbOfConsumption);
};

ReducetarianCalculator.prototype.pledge = function() {
  ReducetarianCalculator.state.pledgeTaken = true;
};

var ReducetarianCalculator = new ReducetarianCalculator();

ReducetarianCalculator.views.main = riot.mount('meat-consumption-calculator');

riot.route.start();

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

//riot.route('/ra');