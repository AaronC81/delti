# Delti

Delti is a tiny library which provides you with the
**easiest imaginable delta time calculation for your loops**.

Writing a game engine, UI library, or intensive routine task, and need a delta
time? All you need to do is:

1. `require 'delti'` in your file
2. `include Delti` in your class or module
3. Call `dt!` to get the time since the last `dt!` call in that location

The first call will always return nil, and subsequent calls return a Float of
the number of seconds since the last call.

You can use more than one `dt!` call at a time, and it'll always give you the
**delta time since THAT last call, indexed by source line and file**.

# Example

With just one use of `dt!`:

```ruby
include Delti

loop do
  sleep 1
  p dt!
end

# Output:
#   nil
#   1.0012476179981604
#   1.0011373269990145
#   1.0011775080020016
#   1.0012207549989398
#   1.0012018039997201
#   1.001209079000546
```

With multiple uses of `dt!`, each keeping track of their own time:

```ruby
include Delti

Thread.new do
  loop do
    sleep 2
    p dt!
  end
end

Thread.new do
  loop do
    sleep 1
    p dt!
  end
end

loop {} # to prevent exit

# Output:
#   nil
#   nil
#   1.100102615000651
#   1.0001914450003824
#   2.0021415269984573
#   1.1020770069990249
#   1.1002259790002427
#   2.101181769001414
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AaronC81/delti.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
