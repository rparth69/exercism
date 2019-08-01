require_relative "torrentmodule"

class Unit
  def initialize(unit,_phase)
    @unit = unit
    @phase = _phase.to_i

  end
end
#======================== Unit class finish ======================================================
class Category < Unit
  include Category_select
end
#==========================Displaycategory class======================================================
class Displaycategory
  def putsline
    puts "__________________________________________________________________________________________"
  end
  def chosse_category
   category = ["GLP   : General Lighting Purpose.",
               "RGP   : Residential General Purpose.",
               "BPL   : Below Poverty Line.",
               "NRGP  : Low Tension Service for Commercial and Industrial Purpose.",
               "LTP   :(AG) Agriculture Service.",
               "LTMD1 : Low Tension Maximum Demand for Residential Purpose.",
               "LTMD2 : Low Tension Maximum Demand for other than residential purpose.",
               "SL    : Low Tension Tension Street Light Service.",
               "TMP   : Low Tension Temporary Supply.",
               "HTMD1 : High Tension Maximum Demand.",
               "HTMD2 : High Tension Water and Sewage Pumping Stations run by AMC.",
               "HTMD3 : High Tension Maximum Demand Temporary Supply."]
    puts category
  end
end
# #=================================    MAIN    =======================================================
puts "____________________________Torrent Power choose CATEGORY_________________________________"
puts "__________________________________________________________________________________________"

Displaycategory.new().chosse_category

print "PLEASE  CHOOSE CATEGORY:"
cate = gets.chomp.upcase

print "PLEASE  Enter unit:".upcase
unit = gets.chomp.to_i

case cate 
when "GLP"
  print "PLEASE  Single Phase Or Three Phase:".upcase
  phase = gets.chomp.upcase
  puts "__________________________________________________________________________________________"

  case phase 
  when "SINGLE"
    _phase = 0 + 25

  when "THREE"
    _phase = 0  + 65

  else
    puts "please write perfact"
  end
  Category.new(unit,_phase).general_lighting_purpose(unit,_phase)

when "RGP"
  print "PLEASE  Single Phase Or Three Phase:".upcase
  phase = gets.chomp.upcase
  puts "__________________________________________________________________________________________"
  
  case phase 
  when "SINGLE"
    _phase = 0 + 25

  when "THREE"
    _phase = 0  + 65

  else
    puts "please write perfact"
  end
  Category.new(unit,phase1).residential_general_purpose(unit,_phase)

when "BPL"
  Displaycategory.new().putsline
  Category.new(unit,_phase).below_poverty_line(unit)

when "NRGP"
  Displaycategory.new().putsline
  Category.new(unit,_phase).commercial_industrial_purpose(unit)

when "LTP" 
  Displaycategory.new().putsline
  Category.new(unit,_phase).ltp_agriculture_service(unit)

when "LTMD1" 
  Displaycategory.new().putsline
  Category.new(unit,_phase).low_tension_maximum_demand_one(unit)

when "LTMD2" 
  Displaycategory.new().putsline
  Category.new(unit,_phase).low_tension_maximum_demand_two(unit)

when "SL"
  Displaycategory.new().putsline
  Category.new(unit,_phase).street_light_service(unit)

when "TMP" 
  Displaycategory.new().putsline
  Category.new(unit,_phase).tension_temporary_supply(unit)

when "HTMD1"
  Displaycategory.new().putsline
  Category.new(unit,_phase).high_tension_maximum_demand_one(unit)

when "HTMD2"
  Displaycategory.new().putsline
  Category.new(unit,_phase).high_tension_maximum_demand_two(unit)

when "HTMD3"
  Displaycategory.new().putsline
  Category.new(unit,_phase).high_tension_maximum_demand_three(unit)

else
  puts "*CHOOSE perfact category".upcase
end