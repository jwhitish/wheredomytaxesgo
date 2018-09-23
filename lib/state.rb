#takes gross income and turns it into individual line items from the state budget

def state_max_tax(gross_income, state)
  case state
  when 'AL'
    @state = gross_income * 0.05
  when 'AK'
    @state = gross_income * 0.0
  when 'AZ'
    @state = gross_income * 0.0454
  when 'AR'
    @state = gross_income * 0.069
  when 'CA'
    @state = gross_income * 0.133
  when 'CO'
    @state = gross_income * 0.0463
  when 'CT'
    @state = gross_income * 0.0699
  when 'DE'
    @state = gross_income * 0.066
  when 'FL'
    @state = gross_income * 0.0
  when 'GA'
    @state = gross_income * 0.06
  when 'HI'
    @state = gross_income * 0.11
  when 'ID'
    @state = gross_income * 0.074
  when 'IL'
    @state = gross_income * 0.0495
  when 'IN'
    @state = gross_income * 0.0323
  when 'IA'
    @state = gross_income * 0.0898
  when 'KS'
    @state = gross_income * 0.057
  when 'LA'
    @state = gross_income * 0.06
  when 'ME'
    @state = gross_income * 0.0715
  when 'MD'
    @state = gross_income * 0.0575
  when 'MA'
    @state = gross_income * 0.051
  when 'MI'
    @state = gross_income * 0.0425
  when 'MN'
    @state = gross_income * 0.0985
  when 'MS'
    @state = gross_income * 0.05
  when 'MO'
    @state = gross_income * 0.059
  when 'MT'
    @state = gross_income * 0.069
  when 'NE'
    @state = gross_income * 0.0684
  when 'NV'
    @state = gross_income * 0.0
  when 'NH'
    @state = gross_income * 0.0
  when 'NJ'
    @state = gross_income * 0.0897
  when 'NM'
    @state = gross_income * 0.049
  when 'NY'
    @state = gross_income * 0.0882
  when 'NC'
    @state = gross_income * 0.05499
  when 'ND'
    @state = gross_income * 0.029
  when 'OH'
    @state = gross_income * 0.04997
  when 'OK'
    @state = gross_income * 0.05
  when 'OR'
    @state = gross_income * 0.099
  when 'PA'
    @state = gross_income * 0.0307
  when 'RI'
    @state = gross_income * 0.0599
  when 'SC'
    @state = gross_income * 0.07
  when 'SD'
    @state = gross_income * 0.0
  when 'TN'
    @state = gross_income * 0.03
  when 'TX'
    @state = gross_income * 0.0
  when 'UT'
    @state = gross_income * 0.05
  when 'VT'
    @state = gross_income * 0.0895
  when 'VA'
    @state = gross_income * 0.0575
  when 'WA'
    @state = gross_income * 0.0
  when 'WV'
    @state = gross_income * 0.065
  when 'WI'
    @state = gross_income * 0.0765
  when 'WY'
    @state = gross_income * 0.0
  end
end
