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

  <div id="meat-consumption-calculator" class="meat-consumption-calculator  margin-bottom-larger">

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
          <p class="">You'll be amazed at how you compare to the rest of the&nbsp;world.</p>
          <p class="" style="max-width: 650px; margin: auto;"><strong>On a typical day, how many of your main meals have red meat, poultry, or seafood in&nbsp;them?</strong></p>
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

    <div id="page" hide={ ReducetarianCalculator.userInput.meatyMealsPerDay == null }>

      <div id="result" class="no-graphs text-align-center" hide={ ReducetarianCalculator.state.pledgeTaken }>
        <div class="row no-margin-top">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

            <div class="well well-result">
              <h2 class="margin-bottom">If you eat <strong>{ReducetarianCalculator.userInput.meatyMealsPerDay}</strong> meaty meal<span hide={ ReducetarianCalculator.userInput.meatyMealsPerDay === 1 }>s</span> per day...</h2>

              <p style="font-size: 21px;"><strong>Your meat consumption is <em>{ReducetarianCalculator.calculations.factorToAverageConsumption}</em> times the global average.</strong></p>
              <p style="font-size: 21px;"><strong>You eat more meat than <em>{ReducetarianCalculator.calculations.globalConsumptionPercentile}%</em> of people.</strong></p>


              <div class="row row-pre-pledge-share margin-top margin-bottom-small">
                <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-12">

                  <a onclick="{ sendTweetEvent }" data-tracking-label="Pre-pledge" href="https://twitter.com/home?status=How%20much%20meat%20do%20you%20eat?%20You'll%20be%20amazed%20at%20how%20you%20compare%20to%20the%20rest%20of%20the%20world.%20http%3A//reducetarian.org/how-much-meat/" class="btn-social btn-social-twitter" target="_blank"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16" class="icon icon-twitter"><path d="M16 3.538c-0.588 0.263-1.222 0.438-1.884 0.516 0.678-0.406 1.197-1.050 1.444-1.816-0.634 0.375-1.338 0.65-2.084 0.797-0.6-0.638-1.453-1.034-2.397-1.034-1.813 0-3.281 1.469-3.281 3.281 0 0.256 0.028 0.506 0.084 0.747-2.728-0.138-5.147-1.444-6.766-3.431-0.281 0.484-0.444 1.050-0.444 1.65 0 1.138 0.578 2.144 1.459 2.731-0.538-0.016-1.044-0.166-1.488-0.409 0 0.013 0 0.028 0 0.041 0 1.591 1.131 2.919 2.634 3.219-0.275 0.075-0.566 0.116-0.866 0.116-0.212 0-0.416-0.022-0.619-0.059 0.419 1.303 1.631 2.253 3.066 2.281-1.125 0.881-2.538 1.406-4.078 1.406-0.266 0-0.525-0.016-0.784-0.047 1.456 0.934 3.181 1.475 5.034 1.475 6.037 0 9.341-5.003 9.341-9.341 0-0.144-0.003-0.284-0.009-0.425 0.641-0.459 1.197-1.038 1.637-1.697z"></path></svg>Tweet</a>

                  <a onclick="{ sendFacebookShareEvent }" data-tracking-label="Pre-pledge" href="https://www.facebook.com/sharer/sharer.php?u=http%3A//reducetarian.org/how-much-meat/" target="_blank" class="btn-social btn-social-facebook"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16" class="icon icon-twitter"><path d="M9.5 3h2.5v-3h-2.5c-1.93 0-3.5 1.57-3.5 3.5v1.5h-2v3h2v8h3v-8h2.5l0.5-3h-3v-1.5c0-0.271 0.229-0.5 0.5-0.5z"></path></svg>Share</a>
                </div>
              </div>

            </div>
          </div>
        </div>

        <div class="row margin-top">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-offset-0 col-sm-12">
            <p class="smaller text-gray info"><svg class="icon icon-info"><use xlink:href="#icon-info"></use></svg> We're assuming typical US portion sizes. <a href="/how-much-meat/data-and-assumptions/">Learn more</a> about our data sources and assumptions.</p>
          </div>
        </div>


        <div class="row margin-top-larger">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-12 col-sm-offset-0">
            <h2>What is a Reducetarian?</h2>

            <div style="max-width: 500px; padding-top: 5px; padding-left: 10px; padding-right: 10px; margin-left: auto; margin-right: auto;" class="definition">
              <hr class="divider">
            <p>A <em>reducetarian</em> is someone who chooses to <strong>reduce</strong> the amount of meat in their diet.</p>
              <hr class="divider">
            </div>
          </div>
        </div>

        <div class="row margin-top-larger">
          <div class="col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-12 col-sm-offset-0">
            <h2 class="margin-bottom-large">Every month, the typical reducetarian...</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-8 col-sm-offset-2">
            <ul class="row list-typical-benefits">
              <li class="col-sm-12">
                <div class="wrap-impact-image">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/heart.png">
                </div>

                  <p>... reduces his or her risk of heart disease, diabetes and&nbsp;cancer.</p>

              </li>
              <li class="col-sm-12">
                <div class="wrap-impact-image pull-right">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/pig.png">
                </div>

                  <p>... spares several farmed animals from&nbsp;cruelty.</p>

              </li>
              <li class="col-sm-12">
                <div class="wrap-impact-image">
                  <img src="http://peterhartree.github.io/reducetarian-calculator/images/water-droplet.png">
                </div>

                  <p>... saves the planet gallons of water and tonnes of greenhouse&nbsp;gasses.</p>

              </li>

            </ul>

          </div>
        </div>

            <div style="max-width: 500px; margin-left: auto; margin-right: auto;" class="margin-bottom-larger call-to-action well">
                <p>These are just a few of the <a href="/its-good/" target="_blank">many good reasons to reduce your meat&nbsp;consumption</a>.</p>
                <p><a href="https://twitter.com/Reducetarian" target="_blank">Thousands of people</a> are choosing to eat less meat and become&nbsp;reducetarians.</p>
                <p><strong>Will you join them?</strong></p>

            </div>
      </div>
    </div>

    <div class="wrap-pledge" hide={ ReducetarianCalculator.userInput.meatyMealsPerDay == null }>
      <div class="container">
        <div class="row">
          <form id="form-pledge" class="form-pledge clearfix margin-top-larger margin-bottom-larger col-xxs-12 col-xxs-offset-0 col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" onsubmit={ ReducetarianCalculator.pledge }>
            <div hide={ ReducetarianCalculator.state.pledgeTaken }>
              <fieldset class="form-pledge__inner">
                <div class="col-sm-12 text-align-center">
                  <legend class="form-pledge__legend">Become a reducetarian</legend>
                  <p>Yes, I pledge to eat less meat for 30&nbsp;days!</p>
                </div>
                <div class="col-md-12 margin-top-small">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="FULL_NAME" value="" class="form-control form-pledge__input" required>
                  </div>

                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="EMAIL" value="" class="form-control form-pledge__input" required>
                  </div>

                  <div class="form-group">
                    <label>Choose your strategy:</label>

                    <div class="row">
                      <radio-box
                        model={ReducetarianCalculator.userInput.strategy}
                        name="STRATEGY"
                        value="meatless_mondays"
                        label="Meatless Mondays"
                        size="large">
                      </radio-box>
                      <radio-box
                        model={ReducetarianCalculator.userInput.strategy}
                        name="STRATEGY"
                        value="vegetarian_before_six"
                        label="Vegetarian before 6pm"
                        size="large">
                      </radio-box>
                      <radio-box
                        model={ReducetarianCalculator.userInput.strategy}
                        name="STRATEGY"
                        value="weekday_vegetarian"
                        label="Weekday Vegetarian"
                        size="large">
                      </radio-box>
                      <radio-box
                        model={ReducetarianCalculator.userInput.strategy}
                        name="STRATEGY"
                        value="everyday_vegetarian"
                        label="Everyday Vegetarian"
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
                        <li>spare <strong>{ReducetarianCalculator.calculations.animalsSavedPerMonth}</strong> farmed animals from cruelty</li>
                        <li>save the planet <strong>{ReducetarianCalculator.calculations.waterSavedPerMonth}</strong> gallons of water and <strong>{ReducetarianCalculator.calculations.co2SavedPerMonth}</strong> lbs. of CO2</li>
                        <li>reduce your risk of heart disease, diabetes, and certain kinds of cancers</li>
                      </ul>
                    </div>
                  </div>
                </div>

                <div class="col-md-12 text-align-center margin-top">
                  <input type="submit" class="btn btn-primary form-pledge__btn-submit" value="Take the pledge">
                  <p class="error margin-top-small" hide={ ReducetarianCalculator.state.mailchimpError === false }>{ReducetarianCalculator.state.mailchimpErrorMsg}</p>
                  <p class="margin-top-small no-margin-bottom smaller info">We'll send you a couple emails during your pledge to help keep you on track. We'll never spam you, and you can unsubscribe&nbsp;anytime.</p>
                </div>
              </fieldset>

              <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_fb882689434c18d812e401042_f387e9040e" tabindex="-1" value="">
              </div>
            </div>

            <div id="thanks" class="panel clearfix" show={ ReducetarianCalculator.state.pledgeTaken }>
              <div class="form-pledge__inner row">
                <div class="col-sm-12">
                  <h2>You're awesome!</h2>
                  <p>Thanks for taking the reducetarian pledge. We've just sent you an email with some delicious recipe suggestions and a bit of advice on how to follow through on your&nbsp;pledge.</p>

                  <h2>Encourage your friends to join&nbsp;you.</h2>
                  <p>You can have an even bigger positive impact if you persuade your friends to become reducetarians!</p>
                  <p>Please share this page on Facebook and Twitter and encourage your friends to take the pledge.</p>

                  <div class="wrap-btn-social">
                    <a onclick="{ sendTweetEvent }" data-tracking-label="Post-pledge" href="https://twitter.com/home?status=How%20much%20meat%20do%20you%20eat?%20You'll%20be%20amazed%20at%20how%20you%20compare%20to%20the%20rest%20of%20the%20world.%20http%3A//reducetarian.org/how-much-meat/" class="btn-social btn-social-twitter" target="_blank"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16" class="icon icon-twitter"><path d="M16 3.538c-0.588 0.263-1.222 0.438-1.884 0.516 0.678-0.406 1.197-1.050 1.444-1.816-0.634 0.375-1.338 0.65-2.084 0.797-0.6-0.638-1.453-1.034-2.397-1.034-1.813 0-3.281 1.469-3.281 3.281 0 0.256 0.028 0.506 0.084 0.747-2.728-0.138-5.147-1.444-6.766-3.431-0.281 0.484-0.444 1.050-0.444 1.65 0 1.138 0.578 2.144 1.459 2.731-0.538-0.016-1.044-0.166-1.488-0.409 0 0.013 0 0.028 0 0.041 0 1.591 1.131 2.919 2.634 3.219-0.275 0.075-0.566 0.116-0.866 0.116-0.212 0-0.416-0.022-0.619-0.059 0.419 1.303 1.631 2.253 3.066 2.281-1.125 0.881-2.538 1.406-4.078 1.406-0.266 0-0.525-0.016-0.784-0.047 1.456 0.934 3.181 1.475 5.034 1.475 6.037 0 9.341-5.003 9.341-9.341 0-0.144-0.003-0.284-0.009-0.425 0.641-0.459 1.197-1.038 1.637-1.697z"></path></svg>Tweet</a>
                  </div>
                  <div class="wrap-btn-social">
                    <a onclick="{ sendFacebookShareEvent }" data-tracking-label="Post-pledge" href="https://www.facebook.com/sharer/sharer.php?u=http%3A//reducetarian.org/how-much-meat/" target="_blank" class="btn-social btn-social-facebook"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewBox="0 0 16 16" class="icon icon-twitter"><path d="M9.5 3h2.5v-3h-2.5c-1.93 0-3.5 1.57-3.5 3.5v1.5h-2v3h2v8h3v-8h2.5l0.5-3h-3v-1.5c0-0.271 0.229-0.5 0.5-0.5z"></path></svg>Share</a>
                  </div>
                </div>
              </div>
            </div>

          </form>
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

  this.sendFacebookShareEvent = function(e) {
    ReducetarianCalculator.sendFacebookShareEvent(e);
  }

  this.sendTweetEvent = function(e) {
    ReducetarianCalculator.sendTweetEvent(e);
  }

  this.set = function(e) {
    switch(e.target.name) {
      case 'STRATEGY':
        ReducetarianCalculator.setUserInput('strategy', e.target.value);
        ReducetarianCalculator.updateImpactCalculation();
        riot.update();
      break;
    }
  }

</meat-consumption-calculator>