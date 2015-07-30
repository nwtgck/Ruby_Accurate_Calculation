# Ruby_Accurate_Calculation

### How to use
```rb
  require './safe_cal'
```

### How it works
```rb
  # Decimal error
  0.1 * 0.1 # => 0.010000000000000002
  
  # No decimal error
  require './safe_cal'
  0.1 * 0.1 # => 0.01
```
