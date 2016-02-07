<radio-box>
  <div class="col-sm-12">
    <label class="radio { selected: opts.value === opts.model }">
      <input type="radio" name="{opts.name}" value="{opts.value}" onclick="{ parent.set }" checked={ checked: opts.value === opts.model }>
      <span>{opts.label}</span>
      <small>{opts.elaboration}</small>
    </label>
  </div>
</radio-box>