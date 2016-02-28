function ReducetarianCalculator(){this.views={},this.userInput={},this.userInput.meatyMealsPerDay=null,this.userInput.firstResponseToMeatyMealsPerDay=null,this.userInput.strategy="meatless_mondays",this.calculations={},this.calculations.meatyMealsPerWeek=null,this.calculations.pledgedMeatyMealsPerWeek=null,this.calculations.reducedConsumption=null,this.calculations.gallonsSaved=null,this.calculations.animalsSaved=null,this.calculations.co2Saved=null,this.state={},this.state.mailchimpError=!1,this.state.mailchimpErrorMsg=null,this.state.pledgeTaken=!1,this.facts=ReducetarianFacts.get(),this.strategies=ReducetarianStrategies.get(),this.charts={},this.charts.barChart=null,this.charts.donutChart=null,this.colors={},this.colors.brandPrimary="#89b100",this.colors.brandPrimaryHighlight="#a9c83a",this.colors.gray="#555",this.colors.grayHighlight="#777"}function getRandomInt(a,b){return Math.floor(Math.random()*(b-a))+a}var ReducetarianFacts=function(){var a={};return a.globalAverageDailyConsumption=.1,a.portionSizes=[],a.portionSizes[1]={lbs:.23,globalPercentile:82},a.portionSizes[2]={lbs:.34,globalPercentile:96},a.portionSizes[3]={lbs:.45,globalPercentile:99.5},a.cO2PerLbOfConsumption=14.7,a.waterPerLbOfConsumption=5.3,a.animalLivesPerLbOfConsumption=.16,{get:function(){return a}}}(),ReducetarianStrategies=function(){var a=[{key:"meatless_mondays",label:"Meatless Mondays",calculatePledgedMeatyMealsPerWeek:function(a){var b=6*a;return b}},{key:"vegetarian_before_six",label:"Vegetarian before six",calculatePledgedMeatyMealsPerWeek:function(a){var b=7*a*.5;return b}},{key:"weekday_vegetarian",label:"Weekday vegetarian",calculatePledgedMeatyMealsPerWeek:function(a){var b=2*a;return b}},{key:"everyday_vegetarian",label:"Everyday Vegetarian",calculatePledgedMeatyMealsPerWeek:function(){var a=0;return a}}];return{get:function(){return a}}}();riot.route("/ra",function(){console.log("hmmmmmaaaa")}),Chart.types.Bar.extend({name:"BarAlt",draw:function(){Chart.types.Bar.prototype.draw.apply(this,arguments);var a=this.chart.ctx;a.save(),a.textAlign="center",a.textBaseline="bottom",a.fillStyle=this.options.scaleFontColor;var b=.4*this.scale.xScalePaddingLeft,c=this.chart.height/2;a.translate(b,c),a.rotate(-90*Math.PI/180),a.fillText(this.datasets[0].label,0,0),a.restore()}}),ReducetarianCalculator.prototype.updateCharts=function(){this.updateBarChart(),this.updateDonutChart()},ReducetarianCalculator.prototype.updateBarChart=function(){if(null!==this.charts.barChart)this.charts.barChart.datasets[0].bars[1].value=this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs,this.charts.barChart.update();else{var a={labels:["Global average","You"],datasets:[{label:"Lbs of meat consumption",fillColor:this.colors.gray,strokeColor:this.colors.gray,highlightFill:this.colors.grayHighlight,highlightStroke:this.colors.grayHighlight,data:[this.facts.globalAverageDailyConsumption,this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs]}]},b=document.getElementById("barChart").getContext("2d"),c={scaleShowHorizontalLines:!1,scaleShowVerticalLines:!1,scaleOverride:!0,scaleSteps:5,scaleStepWidth:.1,scaleStartValue:0,scaleFontSize:14,scaleGridLineColor:"rgba(26,26,26,.7)",scaleFontColor:"rgba(26,26,26,.7)",scaleFontFamily:"'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",scaleFontStyle:"bold",scaleLabel:"          <%=value%>",tooltipFillColor:"rgba(0,0,0,0.8)",tooltipFontFamily:"'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",tooltipTemplate:"<%if (label){%><%=label%>: <%}%><%= value %> lbs"};this.charts.barChart=new Chart(b).BarAlt(a,c),this.charts.barChart.datasets[0].bars[0].fillColor=this.colors.brandPrimary,this.charts.barChart.datasets[0].bars[0].strokeColor=this.colors.brandPrimary,this.charts.barChart.datasets[0].bars[0].highlightFill=this.colors.brandPrimaryHighlight,this.charts.barChart.datasets[0].bars[0].highlightStroke=this.colors.brandPrimaryHighlight,this.charts.barChart.update()}},ReducetarianCalculator.prototype.updateDonutChart=function(){if(null!==this.charts.donutChart)this.charts.donutChart.segments[0].value=this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,this.charts.donutChart.segments[1].value=100-this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,this.charts.donutChart.update();else{var a=[{value:this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,color:this.colors.brandPrimary,highlight:this.colors.brandPrimary,label:"eat less meat than you"},{value:100-this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile,color:this.colors.gray,highlight:this.colors.grayHighlight,label:"eat more meat than you"}],b=document.getElementById("donutChart").getContext("2d"),c={tooltipFillColor:"rgba(0,0,0,0.8)",tooltipFontFamily:"'proxima-nova', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",tooltipTemplate:"<%if (label){%><%= value %>% <%=label%><%}%>"};this.charts.donutChart=new Chart(b).Doughnut(a,c),this.charts.donutChart.datasets[0].bars[0].fillColor=this.colors.brandPrimary,this.charts.donutChart.datasets[0].bars[0].strokeColor=this.colors.brandPrimary,this.charts.donutChart.datasets[0].bars[0].highlightFill=this.colors.brandPrimaryHighlight,this.charts.donutChart.datasets[0].bars[0].highlightStroke=this.colors.brandPrimaryHighlight,this.charts.donutChart.update()}},ReducetarianCalculator.prototype.setUserInput=function(a,b){"meatyMealsPerDay"===a&&null===this.userInput.meatyMealsPerDay&&this.setUserInput("firstResponseToMeatyMealsPerDay",b),this.userInput[a]=b,this.calculateMeatyMealsPerWeek()},ReducetarianCalculator.prototype.calculateMeatyMealsPerWeek=function(){this.calculations.meatyMealsPerWeek=7*this.userInput.meatyMealsPerDay},ReducetarianCalculator.prototype.calculateGlobalConsumptionPercentile=function(){this.calculations.globalConsumptionPercentile=this.facts.portionSizes[this.userInput.meatyMealsPerDay].globalPercentile},ReducetarianCalculator.prototype.calculateFactorToAverageConsumption=function(){this.calculations.factorToAverageConsumption=this.facts.portionSizes[this.userInput.meatyMealsPerDay].lbs/this.facts.globalAverageDailyConsumption},ReducetarianCalculator.prototype.updateImpactCalculation=function(){ReducetarianCalculator.calculateReducedConsumptionPerMonth(),ReducetarianCalculator.calculateAnimalsSaved(),ReducetarianCalculator.calculateCo2Saved(),ReducetarianCalculator.calculateWaterSaved()},ReducetarianCalculator.prototype.calculateReducedConsumptionPerMonth=function(){this.strategies.forEach(function(a){a.key===ReducetarianCalculator.userInput.strategy&&(ReducetarianCalculator.calculations.pledgedMeatyMealsPerWeek=a.calculatePledgedMeatyMealsPerWeek(ReducetarianCalculator.userInput.meatyMealsPerDay))}),console.log("original meaty meals per week"),console.log(this.calculations.meatyMealsPerWeek),console.log("pledged meaty meals per week"),console.log(this.calculations.pledgedMeatyMealsPerWeek),this.calculations.fewerMeatyMealsPerWeek=this.calculations.meatyMealsPerWeek-this.calculations.pledgedMeatyMealsPerWeek,this.calculations.fewerMeatyMealsPerMonth=4.3*this.calculations.fewerMeatyMealsPerWeek,this.calculations.lbsReducedConsumptionPerMonth=this.roundToTwoDecimalPlaces(this.calculations.fewerMeatyMealsPerMonth*this.facts.portionSizes[1].lbs),console.log("lbs of reduced consumption per month"),console.log(this.calculations.lbsReducedConsumptionPerMonth)},ReducetarianCalculator.prototype.roundToTwoDecimalPlaces=function(a){return Math.round(10*a)/10},ReducetarianCalculator.prototype.calculateWaterSaved=function(){this.calculations.waterSavedPerMonth=this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth*this.facts.waterPerLbOfConsumption)},ReducetarianCalculator.prototype.calculateAnimalsSaved=function(){this.calculations.animalsSavedPerMonth=this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth*this.facts.animalLivesPerLbOfConsumption)},ReducetarianCalculator.prototype.calculateCo2Saved=function(){this.calculations.co2SavedPerMonth=this.roundToTwoDecimalPlaces(this.calculations.lbsReducedConsumptionPerMonth*this.facts.cO2PerLbOfConsumption)},ReducetarianCalculator.prototype.pledge=function(){console.log("fullname"),console.log(this.FULL_NAME.value),console.log(this.EMAIL.value);var a={FULL_NAME:this.FULL_NAME.value,EMAIL:this.EMAIL.value,STRATEGY:ReducetarianCalculator.userInput.strategy};console.log(a),$.ajax({url:"//reducetarian.us9.list-manage.com/subscribe/post-json?u=fb882689434c18d812e401042&amp;id=f387e9040e&c=?",data:a,success:function(a){"success"===a.result?(ReducetarianCalculator.state.mailchimpError=!1,ReducetarianCalculator.state.pledgeTaken=!0,riot.update()):(console.log("Error: "+a.msg),ReducetarianCalculator.state.mailchimpError=!0,ReducetarianCalculator.state.mailchimpErrorMsg=a.msg,riot.update())},dataType:"jsonp",error:function(a,b){console.log("mailchimp ajax submit error: "+b)}})};var ReducetarianCalculator=new ReducetarianCalculator;ReducetarianCalculator.views.main=riot.mount("meat-consumption-calculator"),riot.route.start();