# All normal usernames on this web service have been taken
# As such we need to append an underscore to whatever name our user chooses
# And a set of 5 random numbers to the name to make it work on our service

describe "Program to generate new usernames" do
  context "user enters 'John'" do
    let(:user_input) { "John" }
    let(:expected_output) { "John" }
    it "outputs John_\d{5}" do
      set_user_input_and_check_expected_output
    end
  end
  
  context "user enters 'Alexi'" do
    let(:user_input) { "Alexi" }
    let(:expected_output) { "Alexi" }
    it "outputs Alexi_\d{5}" do
      set_user_input_and_check_expected_output
    end
  end
  
  def set_user_input_and_check_expected_output
    allow_any_instance_of(Object)
      .to receive(:gets).and_return(*user_input)

    expect { load "kata/username.rb" }
      .to output(/#{expected_output}_\d{5}/).to_stdout
  end
end