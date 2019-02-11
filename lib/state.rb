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


def state_breakdown(state_tax, state)
  case state
  when 'CA'
    @ggr = "5.92"
    @gen_gov = state_tax * 0.0592
    @hhsr = "31.94"
    @hhs = state_tax * 0.3194
    @edur = "36.38"
    @edu = state_tax * 0.3638
    @transr = "7.38"
    @trans = state_tax * 0.0738
    @ps_crmjr = "7.44"
    @ps_crmj = state_tax * 0.0744
    @penrr = "5.50"
    @penr = state_tax * 0.0550
    @biz_ec_devr = "1.25"
    @biz_ec_dev = state_tax * 0.0125
    @ljer = "3.71"
    @lje = state_tax * 0.0371
    @otherr = "0.43"
    @other = state_tax * 0.0043
  when 'FL'
    @ggr = "5.80"
    @gen_gov = state_tax * 0.058
    @hhsr = "41.9"
    @hhs = state_tax * 0.419
    @edur = "28.5"
    @edu = state_tax * 0.285
    @transr = "12.22"
    @trans = state_tax * 0.1222
    @ps_crmjr = "5.30"
    @ps_crmj = state_tax * 0.0530
    @penrr = "4.52"
    @penr = state_tax * 0.0452
    @biz_ec_devr = "1.29"
    @biz_ec_dev = state_tax * 0.0129
    @ljer = "0.6"
    @lje = state_tax * 0.06
    @otherr = "0.0"
    @other = state_tax * 0.00
  when 'IL'
    @ggr = "11.48"
    @gen_gov = state_tax * 0.1148
    @hhsr = "34.47"
    @hhs = state_tax * 0.3447
    @edur = "21.06"
    @edu = state_tax * 0.2106
    @transr = "13.59"
    @trans = state_tax * 0.1359
    @ps_crmjr = "3.06"
    @ps_crmj = state_tax * 0.0306
    @penrr = "3.88"
    @penr = state_tax * 0.0388
    @biz_ec_devr = "4.17"
    @biz_ec_dev = state_tax * 0.0417
    @ljer = "5.76"
    @lje = state_tax * 0.0576
    @otherr = "2.48"
    @other = state_tax * 0.0248
  when 'PA'
    @ggr = "5.04"
    @gen_gov = state_tax * 0.0504
    @hhsr = "45.26"
    @hhs = state_tax * 0.4526
    @edur = "43.56"
    @edu = state_tax * 0.4356
    @transr = "0.00"
    @trans = state_tax * 0.0000
    @ps_crmjr = "0.91"
    @ps_crmj = state_tax * 0.0091
    @penrr = "1.22"
    @penr = state_tax * 0.0122
    @biz_ec_devr = "0.41"
    @biz_ec_dev = state_tax * 0.0041
    @ljer = "2.99"
    @lje = state_tax * 0.0299
    @otherr = "0.56"
    @other = state_tax * 0.0056
  when 'TX'
    @ggr = "2.87"
    @gen_gov = state_tax * 0.0287
    @hhsr = "13.77"
    @hhs = state_tax * 0.1377
    @edur = "37.10"
    @edu = state_tax * 0.3710
    @transr = "22.88"
    @trans = state_tax * 0.2288
    @ps_crmjr = "6.05"
    @ps_crmj = state_tax * 0.0605
    @penrr = "2.09"
    @penr = state_tax * 0.0209
    @biz_ec_devr = "14.69"
    @biz_ec_dev = state_tax * 0.1469
    @ljer = "0.46"
    @lje = state_tax * 0.0046
    @otherr = "0.03"
    @other = state_tax * 0.0003
  when 'NY'
    @ggr = "1.24"
    @gen_gov = state_tax * 0.0124
    @hhsr = "49.1"
    @hhs = state_tax * 0.4910
    @edur = "27.65"
    @edu = state_tax * 0.2765
    @transr = "6.16"
    @trans = state_tax * 0.0616
    @ps_crmjr = "3.30"
    @ps_crmj = state_tax * 0.0330
    @penrr = "0.96"
    @penr = state_tax * 0.0096
    @biz_ec_devr = "1.63"
    @biz_ec_dev = state_tax * 0.0163
    @ljer = "2.19"
    @lje = state_tax * 0.0219
    @otherr = "7.72"
    @other = state_tax * 0.0772
  when 'WA'
    #rates
  end
end
