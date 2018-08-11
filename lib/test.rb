def test(income)
  if income < 10
    p "lt10"
  elsif income > 10 && income < 20
    p "mid"
  end
end

test(11)
