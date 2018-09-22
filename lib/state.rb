#takes gross income and turns it into individual line items from the state budget

def state_max_tax(gross_income, state)
  case state
  when 'AL'
    @state = gross_income * 0.05
  when 'WA'
    puts 'Washington'
  end
end

#state_max_tax(300, 'AL')
