# RSpec Katas

A set of coding challenges with accompanying RSpec tests.

+ `pascal_spec.rb` uses RegEx matching and reading from loaded file using `std_out`
+ `username_spec.rb` uses command line input simulation with an expected output.
+ `rsummer_spec.rb` uses the `and` keyword for concatenating `expect` matchers, creates randomised input tests, and looping tests to confirm randomized output as well matchers:
  + `to_be_within(delta).of(target)`
  + `change(subject, :value).by_at_least`
  + `change(subject, :value).by_at_most`
+ `insects_spec.rb` uses the `shared_examples` testing groups to test for class inheritance and shared inherited methods, it also uses the `described_class` syntax to make the code more easily maintainable should class names change
+ `dog_spec.rb` better uses contexts for behaviour mapping as well the `be_` syntax for boolean returns methods and `subject { described_class.new }` syntax to be keep code tests as clean as possibe. Furthermore it uses `change` syntax to check proxy methods rather than a value directly.
+ `hd_spec.rb` uses `expect { subject.function }.to raise(Error)` syntax and checks for internally, custom defined class errors from `hd.rb` using namespace syntax with the `described_class` utility.
+ `dm_spec.rb` uses method stubs with a random number generating method to output pre-defined values for testing.
  

