module Category_select
  def general_lighting_purpose(unit,_phase)
    if unit < 200
      total = unit * 4.10 * 30 + _phase
      puts "Your Total Bill Payment:#{total}"

    else
      first_unit = 200 - unit
      secnod_unit = 200 * 4.10 * 30 + _phase
      last_unit = first_unit * 4.80 * 30 + _phase 
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"
    end
  end

  def residential_general_purpose(unit,_phase)
    if unit <= 50
      total = unit * 3.20 * 30 + _phase
      puts "Your Total Bill Payment:#{total}"

    elsif 50 <  unit && unit > 150
      first_unit = 50 - unit
      secnod_unit = 50 * 3.20 * 30 + _phase
      last_unit = first_unit * 3.90 * 30 + _phase
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"

    else
      first_unit = 150 - unit
      secnod_unit = 150 * 3.90 * 30 + _phase
      last_unit = first_unit *  4.90 * 30 + _phase
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"
    end
  end

  def below_poverty_line(unit)
    if unit <= 30
      total = unit * 1.50 * 30 + 5
      puts "Your Total Bill Payment:#{total}"

    elsif 70 >  unit && unit > 30
      first_unit = 70 - unit
      secnod_unit = 30 * 1.50 * 30 + 5
      last_unit = first_unit * 3.20 * 30 + 5
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"

    elsif 70 <  unit  &&  unit > 150
      first_unit = 150 - unit
      secnod_unit = 70 * 3.20 * 30 + 5
      last_unit = first_unit * 3.90 * 30 + 5
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"

    else 
      first_unit = 150 - unit
      secnod_unit = 150 * 3.90 * 30 + 5
      last_unit = unit * 4.90 * 30 + 5
      puts "Your Total Bill Payment:#{total}"
    end
  end

  def commercial_industrial_purpose(unit)
    if unit <= 5
      total = unit + 70.00 * 4.50
      puts "Your Total Bill Payment:#{total}"

    else 
      total = unit + 90.00 * 4.50
      puts "Your Total Bill Payment:#{total}"

    end
  end
  def ltp_agriculture_service(unit)
    total = unit * 3.30 * 30 + 10
    puts "Your Total Bill Payment:#{total}"
  end

  def low_tension_maximum_demand_one(unit)
    if unit < 50
      total = unit * 4.55 + 150
      puts "Your Total Bill Payment:#{total}"

    else 
      first_unit = unit - 50
      secnod_unit = 50 * 4.55 + 150
      last_unit = first_unit * 4.55 + 185
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"
    end
  end
  
  def low_tension_maximum_demand_two(unit)
    if unit < 50
      total = unit * 4.70 + 175
      puts "Your Total Bill Payment:#{total}"

    else 
      first_unit = unit - 50
      secnod_unit = 50 * 4.70 +  175
      last_unit = first_unit * 4.70 +  185
      total = secnod_unit + last_unit
      puts "Your Total Bill Payment:#{total}"
    end
  end

  def street_light_service(unit)
    total = unit * 4.20 * 30
    puts "Your Total Bill Payment:#{total}"
  end

  def tension_temporary_supply(unit)
    total = unit * 5.00 * 30  + 25
    puts "Your Total Bill Payment:#{total}"
  end

  def high_tension_maximum_demand_one(unit)
    if unit < 400
      @engry = unit * 4.45 + 260

    else
      first_unit = unit - 400
      secnod_unit = 400 * 4.70 +  175
      last_unit = first_unit * 4.70  +   185
      @engry = first_unit + last_unit
    end

    if unit < 1000
      @fixcharge = unit  +  260

    else
      @fixcharge = unit + 335

    end

    if unit <= 300
      @toucharge = unit  * 0.8

    else
      toucharge = unit * 1.00

    end
      total = @engry + @fixcharge + @toucharge
      puts "Your Total Bill Payment:#{total}"
  end

  def high_tension_maximum_demand_two(unit)
     total = unit * 4.00  * 6.00 + 225
     puts "Your Total Bill Payment:#{total}"
  end

  def high_tension_maximum_demand_three(unit)
    total = unit * 6.95 * 0.60 + 25  + 225
    puts "Your Total Bill Payment:#{total}"  
  end
end
