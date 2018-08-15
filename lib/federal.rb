
def fed_tax_bracket_single(gross_income)
  if gross_income <= 9525
    #10% of taxable income
    @flat_tax = 0
    @tax_rate = 0.1
    @taxable_income = gross_income
  elsif gross_income >= 9526 && gross_income <= 38700
    #flat tax of $952.50 plus 12% of amount over $9526
    @tax_rate = 0.12
    @flat_tax = 952.50
    @taxable_income = (gross_income - 9526.00)
  elsif gross_income >= 38701 && gross_income <= 82500
    #flat tax of $4453.50 plus 22% of amount over $38700
    @flat_tax = 4453.50
    @tax_rate = 0.22
    @taxable_income = (gross_income - 38700.00)
  elsif gross_income >= 82501 && gross_income <= 157500
    #flat tax of $14089.50 plus 24% of amount over $82500
    @flat_tax = 14089.50
    @tax_rate = 0.24
    @taxable_income = (gross_income - 82500.00)
  elsif gross_income >= 157501 && gross_income <= 200000
    #flat tax of $32089.50 plus 32% of amount over $157500
    @flat_tax = 32089.50
    @tax_rate = 0.32
    @taxable_income = (gross_income - 157500.00)
  elsif gross_income >= 200001 && gross_income <= 500000
    #flat tax of $45689.50 plus 35% of amount over $200000
    @flat_tax = 45689.50
    @tax_rate = 0.35
    @taxable_income = (gross_income - 200000.00)
  elsif gross_income >= 500001
    #flat tax of $150689.50 plus 37% of amount over $500000
    @flat_tax = 150689.50
    @tax_rate = 0.37
    @taxable_income = (gross_income - 500000.00)
  else
    @flat_tax = "err"
    @tax_rate = "err"
  end
end

def fed_tax_bracket_joint(gross_income)
  if gross_income <= 19050
    #10% of taxable income
    @flat_tax = 0.0
    @tax_rate = 0.1
    @taxable_income = gross_income
  elsif gross_income >= 19051 && gross_income <= 77400
    #flat tax of $1905 plus 12% of amount over $19050
    @tax_rate = 0.12
    @flat_tax = 1905.00
    @taxable_income = (gross_income - 19050.00)
  elsif gross_income >= 77401 && gross_income <= 165000
    #flat tax of $8907 plus 22% of amount over $77400
    @flat_tax = 8907.00
    @tax_rate = 0.22
    @taxable_income = (gross_income - 77400.00)
  elsif gross_income >= 165001 && gross_income <= 315000
    #flat tax of $28179 plus 24% of amount over $165000
    @flat_tax = 28179.00
    @tax_rate = 0.24
    @taxable_income = (gross_income - 165000.00)
  elsif gross_income >= 315001 && gross_income <= 400000
    #flat tax of $64179 plus 32% of amount over $315000
    @flat_tax = 64179.00
    @tax_rate = 0.32
    @taxable_income = (gross_income - 315000.00)
  elsif gross_income >= 400001 && gross_income <= 600000
    #flat tax of $91379 plus 35% of amount over $400000
    @flat_tax = 91379.00
    @tax_rate = 0.35
    @taxable_income = (gross_income - 400000.00)
  elsif gross_income >= 600001
    #flat tax of $161379 plus 37% of amount over $600000
    @flat_tax = 161379.00
    @tax_rate = 0.37
    @taxable_income = (gross_income - 600000.00)
  else
    @flat_tax = "err"
    @tax_rate = "err"
  end
end

def total_tax_obligation_single(gross_income)
  fed_tax_bracket_single(gross_income)
  @total_tax = @flat_tax + (@taxable_income * @tax_rate)
end

def total_tax_obligation_joint(gross_income)
  fed_tax_bracket_joint(gross_income)
  @total_tax = @flat_tax + (@taxable_income * @tax_rate)
end

def breakdown(total_tax)
  @socsec = total_tax * 0.2428
  @medicare = total_tax * 0.1451
  @medicaid = total_tax * 0.0956
  @h_ex_sub = total_tax * 0.0104
  @mand_prog = total_tax * 0.1316
  @inf_init = total_tax * 0.0104
  @net_int = total_tax * 0.0842
  @d_agr = total_tax * 0.0044
  @d_com = total_tax * 0.0022
  @d_def = total_tax * 0.1386
  @d_edu = total_tax * 0.0139
  @d_ene = total_tax * 0.0067
  @d_hhs = total_tax * 0.0161
  @d_hs = total_tax * 0.0106
  @d_hu = total_tax * 0.0091
  @d_int = total_tax * 0.0026
  @d_jus = total_tax * 0.0065
  @d_lab = total_tax * 0.0021
  @st_dep = total_tax * 0.0065
  @d_tra = total_tax * 0.0036
  @d_tre = total_tax * 0.0028
  @d_va = total_tax * 0.0192
  @corp_eng = total_tax * 0.0011
  @epa = total_tax * 0.0012
  @gsa = total_tax * 0.0001
  @nasa = total_tax * 0.0045
  @nsf = total_tax * 0.0012
  @sba = total_tax * 0.0001
  @ssa = total_tax * 0.0020
  @other_agencies = total_tax * 0.0041
  @overseas = total_tax * 0.0234
  @em_fund = total_tax * 0.0000
  @prog_integ = total_tax * 0.0005
  @dis_relief = total_tax * 0.0015
  @wildfire = total_tax * 0.0003
end
