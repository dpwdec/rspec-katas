
describe "Pascal's Triangle" do
  let (:expected) {  ["1",
                      "1",
                      "1",
                      "1",
                      "2",
                      "1",
                      "1",
                      "3",
                      "3",
                      "1",
                      "1",
                      "4",
                      "6",
                      "4",
                      "1",
                      "1",
                      "5",
                      "10",
                      "10",
                      "5",
                      "1"].join("\n") }
  
  it "puts to the console the first 20 numbers in pascal's triangle" do
    expect { load "kata/pascal.rb" }.to output(/#{expected}$/).to_stdout
  end
end