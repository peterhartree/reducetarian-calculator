<meat-consumption-calculator>
  <style scoped>
    *{ box-sizing: border-box; }
    fieldset {
      border: none;
      padding: 0;
      margin: 0;
    }
  </style>


  <svg display="none" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <defs>
      <symbol id="icon-info" viewBox="0 0 1024 1024">
        <title>info</title>
        <path class="path1" d="M448 304c0-26.4 21.6-48 48-48h32c26.4 0 48 21.6 48 48v32c0 26.4-21.6 48-48 48h-32c-26.4 0-48-21.6-48-48v-32z"></path>
        <path class="path2" d="M640 768h-256v-64h64v-192h-64v-64h192v256h64z"></path>
        <path class="path3" d="M512 0c-282.77 0-512 229.23-512 512s229.23 512 512 512 512-229.23 512-512-229.23-512-512-512zM512 928c-229.75 0-416-186.25-416-416s186.25-416 416-416 416 186.25 416 416-186.25 416-416 416z"></path>
      </symbol>

      <symbol id="icon-plate" viewBox="0 0 380.726 380.726">
        <path d="M195.537,53.35c-75.679,0-137.014,61.347-137.014,137.013s61.335,137.013,137.014,137.013
          c75.654,0,137.014-61.335,137.014-137.013C332.539,114.696,271.191,53.35,195.537,53.35z M194.026,278.147
          c-47.509,0-86.007-38.493-86.007-86.001c0-47.509,38.498-86.007,86.007-86.007c47.491,0,86.007,38.498,86.007,86.007
          C280.033,239.654,241.517,278.147,194.026,278.147z"/>
        <path d="M43.913,77.69h-5.745l1.714,60.202h-6.902V77.69h-5.054v60.574h-5.71V77.69l-5.583,0.012v60.574h-6.78l1.94-60.586H6.53
          l-6.361,51.244c0,0-0.168,1.929-0.168,2.667c0,7.889,3.677,14.954,9.399,19.543c18.869,21.309,5.984,43.059,5.996,48.229
          c0.011,5.705,0.011,93.717,0.011,93.717c0.012,0.069-0.023,0.115-0.011,0.197c0.011,5.391,4.368,9.748,9.754,9.748
          c5.391,0,9.771-4.381,9.771-9.748c-0.012-0.082-0.023-0.128-0.035-0.197h0.023c0,0,0-86.908,0.012-93.52
          c0-6.018-10.887-31.004,7.302-49.6c0.012-0.023,0.052-0.081,0.087-0.11c4.438-4.211,7.372-10.015,7.802-16.533
          c0.035-0.453,0.023-1.621,0.023-1.621L43.913,77.69z"/>
        <path d="M380.709,223.006c0.011-5.81-0.175-145.304-0.175-145.304l-3.184-0.012c0,0-25.956,14.646-25.956,123.333
          c19.938,5.472,11.549,27.269,10.039,30.045c0,5.531,0.43,62.369,0.43,62.369l0.069-0.035c-0.023,0.082-0.046,0.129-0.046,0.198
          c-0.023,5.217,4.218,9.458,9.411,9.411c5.193,0.023,9.434-4.218,9.411-9.411c0.022-0.069,0.022-0.116,0-0.163l0.011-0.047
          C380.72,293.391,380.72,229.385,380.709,223.006z"/>
        </symbol>
    </defs>
  </svg>

  <div class="meat-consumption-calculator">

    <div id="question" class="row" hide={ ReducetarianCalculator.state.pledgeTaken }>
      <div class="col-sm-12 text-align-center">
        <div class="sqs-layout sqs-grid-12 columns-12 margin-bottom" data-type="page" data-updated-on="1430751008120" id="page-5546831be4b05a355109bc6a">
          <div class="row sqs-row">
            <div class="col sqs-col-12 span-12">
              <div class="sqs-block html-block sqs-block-html" data-block-type="2" id="block-yui_3_17_2_7_1430749105224_9593">
                <div class="sqs-block-content">
                  <h1 class="text-align-center"><strong>How much meat do you eat?</strong></h1>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-12 col-md-8 col-md-offset-2">
          <p>&nbsp;</p>
          <p class="">You'll be amazed at how you compare to the rest of the&nbsp;world.</p>
          <p class=""><strong>On a typical day, how many of your main meals have meat (red meat, poultry, or seafood) in&nbsp;them?</strong></p>
        </div>

        <div class="col-sm-12">
          <div class="margin-top margin-bottom">
            <a class="wrap-plate wrap-plate-1 { selected: ReducetarianCalculator.userInput.meatyMealsPerDay == 1 }" onclick="{ setMealsPerDay }">
              <svg class="icon icon-plate"><use xlink:href="#icon-plate"></use></svg>
              <span class="plate-number">1</span>
            </a>
            <a class="wrap-plate wrap-plate-2 { selected: ReducetarianCalculator.userInput.meatyMealsPerDay == 2 }" onclick="{ setMealsPerDay }">
              <svg class="icon icon-plate"><use xlink:href="#icon-plate"></use></svg>
              <span class="plate-number">2</span>
            </a>
            <a class="wrap-plate wrap-plate-3 { selected: ReducetarianCalculator.userInput.meatyMealsPerDay == 3 }" onclick="{ setMealsPerDay }">
              <svg class="icon icon-plate"><use xlink:href="#icon-plate"></use></svg>
              <span class="plate-number">3</span>
            </a>
          </div>

          <!-- <div>Icon made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed under <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC BY 3.0</a></div> -->
        </div>
      </div>
    </div>

    <div hide={ ReducetarianCalculator.userInput.meatyMealsPerDay == null }>

      <div id="result" class="text-align-center" hide={ ReducetarianCalculator.state.pledgeTaken }>
        <div class="row margin-top">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-12 col-sm-offset-0">
            <h2>If you eat <strong>{ReducetarianCalculator.userInput.meatyMealsPerDay}</strong> meaty meals per day...</h2>
          </div>
        </div>

        <div class="row margin-top margin-bottom {ReducetarianCalculator.getInfographicClass()}">

          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-6">
            <div class="wrap-chart margin-bottom">
              <h3>Your meat consumption is <strong>{ReducetarianCalculator.calculations.factorToAverageConsumption}</strong> times the global average!</h3>
              <canvas id="barChart" width="320" height="300" style="margin-left: -20px;"></canvas>
            </div>
          </div>

          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-6">
            <div class="wrap-chart margin-bottom">
              <h3>You eat more meat than <strong>{ReducetarianCalculator.calculations.globalConsumptionPercentile}%</strong> of people!</h3>
              <canvas id="donutChart" width="300" height="300"></canvas>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-12">
            <p class="smaller text-gray info"><svg class="icon icon-info"><use xlink:href="#icon-info"></use></svg> We're assuming your portion sizes are typical for a US citzen. <a href="#">Learn more</a> about our data sources and assumptions.</p>
          </div>
        </div>

        <div class="row margin-top-larger">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-12 col-sm-offset-0">
            <h2>What is a Reducetarian?</h2>
            <p>A reducetarian is someone who chooses to reduce the amount of meat in their diet.</p>
          </div>
        </div>

        <div class="row margin-top-larger">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-12 col-sm-offset-0">
            <h2 class="margin-bottom-large">Every month, the typical reducetarian...</h2>
          </div>
        </div>

            <ul class="row list-typical-benefits">
              <li class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-4">
                <div class="wrap-impact-image">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/heart.png" class="margin-bottom">
                </div>

                  <p>reduces his or her risk of heart disease, diabetes, and certain kinds of&nbsp;cancers.</p>

              </li>
              <li class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-4">
                <div class="wrap-impact-image">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/pig.png" class="margin-bottom">
                </div>

                  <p>spares 8 farmed animals from&nbsp;cruelty</p>

              </li>
              <li class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-4">
                <div class="wrap-impact-image">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/water-droplet.png" class="margin-bottom">
                </div>

                  <p>saves the planet 9 gallons of water and 10 lbs. of&nbsp;CO2</p>

              </li>

            </ul>

            <h2 class="margin-top-large margin-bottom-larger">So will you be a reducetarian?</h2>


      </div>
    </div>

    <div class="wrap-pledge" hide={ ReducetarianCalculator.userInput.meatyMealsPerDay == null }>
      <div class="container">
        <div class="row">
          <form id="form-pledge" class="form-pledge clearfix margin-top-larger margin-bottom-larger col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" onsubmit={ ReducetarianCalculator.pledge } hide={ ReducetarianCalculator.state.pledgeTaken }>
            <fieldset class="form-pledge__inner">
              <div class="col-sm-12 text-align-center">
                <legend class="form-pledge__legend">Become a reducetarian</legend>
                <p>Yes, I pledge to eat less meat for 30&nbsp;days!</p>
              </div>
              <div class="col-md-12 margin-top-small">
                <div class="form-group">
                  <label>Name</label>
                  <input type="text" name="full_name" value="" class="form-control form-pledge__input" required>
                </div>

                <div class="form-group">
                  <label>Email</label>
                  <input type="email" name="email" value="" class="form-control form-pledge__input" required>
                </div>

                <div class="form-group">
                  <label>Choose your strategy:</label>

                  <div class="row">
                    <radio-box
                      model={ReducetarianCalculator.userInput.strategy}
                      name="strategy"
                      value="weekday_vegetarian"
                      label="Weekday Vegetarian"
                      size="large">
                    </radio-box>
                    <radio-box
                      model={ReducetarianCalculator.userInput.strategy}
                      name="strategy"
                      value="meatless_mondays"
                      label="Meatless Mondays"
                      size="large">
                    </radio-box>
                    <radio-box
                      model={ReducetarianCalculator.userInput.strategy}
                      name="strategy"
                      value="vegetarian_before_six"
                      label="Vegetarian before 6pm"
                      size="large">
                    </radio-box>
                  </div>
                </div>
              </div>

              <div class="col-md-12">
                <div id="pledge-impact" hide={ReducetarianCalculator.userInput.strategy == null}>
                  <div class="panel">
                    <p>Awesome! In just 30 days, you will:</p>
                    <ul>
                      <li>spare <strong>{ReducetarianCalculator.calculations.animalsSaved}</strong> farmed animals from cruelty</li>
                      <li>save the planet <strong>{ReducetarianCalculator.calculations.waterSaved}</strong> gallons of water and <strong>{ReducetarianCalculator.calculations.co2Saved}</strong> lbs. of CO2</li>
                      <li>reduce your risk of heart disease, diabetes, and certain kinds of cancers</li>
                    </ul>
                  </div>
                </div>
              </div>

              <div class="col-md-12 text-align-center margin-top">
                <input type="submit" class="btn btn-primary form-pledge__btn-submit" value="Take the pledge">
                <p class="margin-top no-margin-bottom smaller info">We'll send you a couple emails during your pledge to help keep you on track. We'll never spam you, and you can unsubscribe&nbsp;anytime.</p>
              </div>
            </fieldset>
          </form>
        </div>

        <div id="thanks" class="panel clearfix" show={ ReducetarianCalculator.state.pledgeTaken }>
          <div class="col-sm-12">
            <h2>You're awesome!</h2>
            <p>Encourage your friends to join you.</p>
            <p>If everyone who took the pledge convinced two of their friends to take it, the entire planet
            would be reducetarian within days!</p>
            <p><a href="">Share on Twitter</a></p>
            <p><a href="">Share on Facebook</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  this.setMealsPerDay = function(e) {
    var meatyMealsPerDay = parseInt(e.target.innerText);
    ReducetarianCalculator.setUserInput('meatyMealsPerDay', meatyMealsPerDay);
    ReducetarianCalculator.calculateGlobalConsumptionPercentile();
    ReducetarianCalculator.calculateFactorToAverageConsumption();
    ReducetarianCalculator.updateImpactCalculation();
    riot.update();
    ReducetarianCalculator.updateCharts();
  }

  this.set = function(e) {
    switch(e.target.name) {
      case 'strategy':
        ReducetarianCalculator.setUserInput('strategy', e.target.value);
        ReducetarianCalculator.updateImpactCalculation();
        riot.update();
      break;
    }
  }

</meat-consumption-calculator>