<meat-consumption-calculator>

  <div id="question" class="row" hide={ ReducetarianCalculator.state.pledgeTaken }>
    <div class="col-sm-12">
      <h2>How much meat do you eat?</h2>
      <p>You'll be amazed at how you compare to the rest of the world...</p>
      <p>Assuming breakfast, lunch, dinner, and two snacks, <strong>how many of your meals per day have meat (red meat, poultry, or seafood) in them?</strong></p>

      <div class="row margin-top-small margin-bottom">
        <radio-box
          model={ReducetarianCalculator.userInput.meatyMealsPerDay}
          name="meaty_meals"
          value="1"
          label="1"
          shape="square">
        </radio-box>
        <radio-box
          model={ReducetarianCalculator.userInput.meatyMealsPerDay}
          name="meaty_meals"
          value="2"
          label="2"
          shape="square">
        </radio-box>
        <radio-box
          model={ReducetarianCalculator.userInput.meatyMealsPerDay}
          name="meaty_meals"
          value="3"
          label="3"
          shape="square">
        </radio-box>
        <radio-box
          model={ReducetarianCalculator.userInput.meatyMealsPerDay}
          name="meaty_meals"
          value="4"
          label="4"
          shape="square">
        </radio-box>
        <radio-box
          model={ReducetarianCalculator.userInput.meatyMealsPerDay}
          name="meaty_meals"
          value="5"
          label="5"
          shape="square">
        </radio-box>
      </div>
    </div>
  </div>

  <div hide={ ReducetarianCalculator.userInput.meatyMealsPerDay == null }>

    <div id="result" class="row" hide={ ReducetarianCalculator.state.pledgeTaken }>
      <div class="col-sm-12">
        <p>If you eat <strong>{ReducetarianCalculator.calculations.meatyMealsPerWeek}</strong> meaty meals per week... you eat more meat than <strong>X%</strong> of people on the planet!</p>
      </div>

      <div class="col-sm-12 graph margin-top">
        <img src="images/graph.b71b580d.jpg" style="width: 100%">
      </div>

      <div class="col-sm-12 margin-top-larger">
        <h2 class="margin-bottom-large">Every month, the typical reducetarian...</h2>
        <ul class="nav">
          <li class="row">
            <div class="col-md-3">
              <img src="/images/pig.3713f8a8.png" class="margin-bottom">
            </div>
            <div class="col-md-9 vertical-align-text">
              <p>spares 8 farmed animals from cruelty</p>
            </div>
          </li>
          <li class="row">
            <div class="col-md-3">
              <img src="/images/pig.3713f8a8.png" class="margin-bottom">
            </div>
            <div class="col-md-9 vertical-align-text">
              <p>saves the planet 9 gallons of water and 10 lbs. of CO2</p>
            </div>
          </li>
          <li class="row">
            <div class="col-md-3">
              <img src="/images/heart.01abf2cb.png" class="margin-bottom">
            </div>
            <div class="col-md-9 vertical-align-text">
              <p>reduces his or risk of heart disease, diabetes, and certain kinds of cancers by 4%</p>
            </div>
          </li>
        </ul>

        <h3>So will you be a reducetarian?</h3>
      </div>
    </div>

    <form id="pledge" class="panel clearfix margin-top" onsubmit={ ReducetarianCalculator.pledge } hide={ ReducetarianCalculator.state.pledgeTaken }>
      <fieldset>
        <div class="col-sm-12">
          <legend>Become a reducetarian</legend>
          <p>Yes, I pledge to eat less meat for 30 days!</p>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label>Name</label>
            <input type="text" name="full_name" value="" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="" class="form-control" required>
          </div>

          <div class="form-group">
            <label>Choose your strategy:</label>

            <div class="row margin-bottom">
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
              <radio-box
                model={ReducetarianCalculator.userInput.strategy}
                name="strategy"
                value="weekday_vegetarian"
                label="Weekday Vegetarian"
                size="large">
              </radio-box>
            </div>
          </div>
        </div>
        <div class="col-md-6">


          <div id="pledge-impact" hide={ReducetarianCalculator.userInput.strategy == null}>
            <div class="panel">
              <p>Awesome! In just 30 days, you will:</p>
              <ul>
                <li>spare <strong>{ReducetarianCalculator.calculations.animalsSaved}</strong> farmed animals from cruelty</li>
                <li>saves the planet <strong>{ReducetarianCalculator.calculations.waterSaved}</strong> gallons of water and <strong>{ReducetarianCalculator.calculations.co2Saved}</strong> lbs. of CO2</li>
                <li>reduce your risk of heart disease, diabetes, and certain kinds of cancers</li>
              </ul>
            </div>

            <p class="no-margin-bottom small">We'll send you a couple emails during your pledge to help keep you on track. We'll never spam you, and you can unsubscribe anytime.</p>
          </div>
        </div>

        <div class="col-md-12">
          <input type="submit" class="btn btn-primary " value="Take the pledge">

        </div>
      </fieldset>
    </form>

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

  this.set = function(e) {
    switch(e.target.name) {
      case 'meaty_meals':
        ReducetarianCalculator.userInput.meatyMealsPerDay = e.target.value;
        ReducetarianCalculator.calculateMeatyMealsPerWeek();
        ReducetarianCalculator.updateImpactCalculation();
        riot.update();
      break;

      case 'strategy':
        ReducetarianCalculator.userInput.strategy = e.target.value;
        ReducetarianCalculator.updateImpactCalculation();
        riot.update();
      break;
    }
  }
</meat-consumption-calculator>