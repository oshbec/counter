# Counter

Following along with [Designing Elixir Systems with OTP](https://pragprog.com/titles/jgotp/designing-elixir-systems-with-otp/).

Explore using:

```
iex -S mix
```

and try it out...

```
counter_pid = Counter.start(0)
Counter.tick(counter_pid)
Counter.state(counter_pid) # 1
```
