<radio-box>
  <div class="col-xxs-12 col-xs-6 { col-sm-2: opts.size == null} { col-sm-3: opts.size == 'medium'} { col-sm-12: opts.size == 'large'}">
    <label class="radio { square: opts.shape == 'square' } { selected: opts.value === opts.model }">
      <div class="{ square-inner: opts.shape == 'square' } ">
        <input type="radio" name="{opts.name}" value="{opts.value}" onclick="{ parent.set }" checked={ checked: opts.value === opts.model }>
        <span>{opts.label}</span>
        <small>{opts.elaboration}</small>
      </div>
    </label>
  </div>
</radio-box>