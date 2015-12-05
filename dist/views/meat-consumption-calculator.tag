<meat-consumption-calculator>

  <div id="question" class="row" hide={ ReducetarianCalculator.state.pledgeTaken }>
    <div class="col-sm-12">
      <h2>How much meat do you eat?</h2>
      <p>You'll be amazed at how you compare to the rest of the world...</p>
      <p>Assuming breakfast, lunch, dinner, and two snacks, <strong>how many of your meals per day have meat (red meat, poultry, or seafood) in them?</strong></p>

      <div class="row margin-bottom">
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
        <p class="large">If you eat <strong>{ReducetarianCalculator.calculations.meatyMealsPerWeek}</strong> meaty meals per week... you eat more meat than <strong>X%</strong> of people on the planet!</p>
      </div>

      <div class="col-sm-12">
        <img src="images/graph.b71b580d.jpg" style="width: 100%">
      </div>

      <div class="col-sm-12">
        <p>Every month, the typical reducetarian...</p>
        <ul>
          <li>spares 8 farmed animals from cruelty</li>
          <li>saves the planet 9 gallons of water and 10 lbs. of CO2</li>
          <li>and reduces his or risk of heart disease, diabetes, and certain kinds of cancers by 4%</li>
        </ul>

        <p>So will you be a reducetarian?</p>
      </div>
    </div>

    <form id="pledge" class="panel clearfix" onsubmit={ ReducetarianCalculator.pledge } hide={ ReducetarianCalculator.state.pledgeTaken }>
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
          <img style="width: 50%;" src="http://static1.squarespace.com/static/5395130de4b09ddb699acb37/t/5581d138e4b0f10369b10cc7/1434571066639/?format=750w">

          <div id="pledge-impact" hide={ReducetarianCalculator.userInput.strategy == null}>
            <p>Awesome! In just 30 days, you will:</p>
            <ul>
              <li>spare <strong>{ReducetarianCalculator.calculations.animalsSaved}</strong> farmed animals from cruelty</li>
              <li>saves the planet <strong>{ReducetarianCalculator.calculations.waterSaved}</strong> gallons of water and <strong>{ReducetarianCalculator.calculations.co2Saved}</strong> lbs. of CO2</li>
              <li>reduce your risk of heart disease, diabetes, and certain kinds of cancers</li>
            </ul>
          </div>
        </div>

        <div class="col-md-12">
          <input type="submit" class="btn btn-primary margin-bottom" value="Take the pledge">
          <p class="no-margin-bottom">We'll send you a couple emails during your pledge to help keep you on track. We'll never spam you, and you can unsubscribe anytime.</p>
        </div>
      </fieldset>
    </form>

    <div id="thanks" class="panel clearfix" show={ ReducetarianCalculator.state.pledgeTaken }>
      <div class="col-sm-12">
        <h2>You're awesome!</h2>
        <p>Encourage your friends to join you on <strong>pledge strategy</strong>!</p>
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