require_relative "torrentmodule"

class Unit
  def initialize(unit,phase1)
    @unit = unit
    @phase = phase1.to_i
  end   
end 
#======================== Unit class finish ======================================================
class Category < Unit

  include Category_select
  #================================TMP====================================
  def TMP()
  
    total = @unit * 5.00 * 30  + 25
    pay = total.to_i
    puts "Your Total Bill Payment:  #{pay}"  
  end
#===============================HTMD2====================================
  def HTMD2()
  
    total = @unit * 4.00  * 6.00 + 225
    pay = total.to_i
    puts "Your Total Bill Payment:  #{pay}"

  end
#===============================HTMD3====================================
  def HTMD3()
  
    total = @unit * 6.95 * 0.60 + 25  + 225
    pay = total.to_i
    puts "Your Total Bill Payment:  #{pay}"

  end
end
#================================================================================
class Putsline
  def putsline()

    puts "__________________________________________________________________________________________"         
    phase1 = 0

  end
  def chosscategory()
   category = ["GLP   : General Lighting Purpose",
               "RGP   : Residential General Purpose",
               "BPL   : Below Poverty Line",
               "NRGP  : Low Tension Service for Commercial and Industrial Purpose",
               "LTP   :(AG) Agriculture Service",
               "LTMD1 : Low Tension Maximum Demand for Residential Purpose",
               "LTMD2 : Low Tension Maximum Demand for other than residential purpose",
               "SL    : Low Tension Tension Street Light Service",
               "TMP   : Low Tension Temporary Supply",
               "HTMD1 : High Tension Maximum Demand",
               "HTMD2 : High Tension Water and Sewage Pumping Stations run by AMC",
               "HTMD3 : High Tension Maximum Demand Temporary Supply"]
    puts category 
  end
end
# #=================================    MAIN    =======================================================
  puts "__________________________________________________________________________________________"
  puts "____________________________Torrent Power choose CATEGORY_________________________________"
  puts "__________________________________________________________________________________________"
  
  chosse = Putsline.new().chosscategory()

  puts "__________________________________________________________________________________________"
  puts "__________________________________________________________________________________________"

  print "            PLEASE  CHOOSE CATEGORY:"    
  cate = gets.chomp.upcase

  print "            PLEASE  Enter unit:".upcase
  unit = gets.chomp.to_i

if cate == "GLP"

  print "            PLEASE  Single Phase Or Three Phase:".upcase
  phase = gets.chomp.upcase
  puts "__________________________________________________________________________________________"

  if phase == "SINGLE" 
    phase1 = 0 + 25
                   
  elsif phase == "THREE"
      
    phase1 = 0  + 65
  else 
    puts "please write perfact" 
    end
  choss = Category.new(unit,phase1).GLP()
  
elsif cate == "RGP"

  print "            PLEASE  Single Phase Or Three Phase:".upcase
  phase = gets.chomp.upcase
  puts "__________________________________________________________________________________________"

  if phase == "SINGLE" 
    phase1 = 0 + 25
                   
  elsif phase == "THREE"
      
    phase1 = 0  + 65
  else 
    puts "please write perfact" 
  end
  choss = Category.new(unit,phase1).RGP()
  
elsif cate == "BPL"
   
  put = Putsline.new().putsline()         
  choss = Category.new(unit,phase1).BPL()

elsif cate == "NRGP"

  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).NRGP()         

elsif cate == "LTP"
   
  put = Putsline.new().putsline()     
  choss = Category.new(unit,phase1).LTP()             

elsif cate == "LTMD1"
  
  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).LTMD1()            

elsif cate == "LTMD2"
  
  put = Putsline.new().putsline()     
  choss = Category.new(unit,phase1).LTMD2()           

elsif cate == "SL"
   
  put = Putsline.new().putsline()     
  choss = Category.new(unit,phase1).SL()           

elsif cate == "TMP"
     
  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).TMP() 

elsif cate == "HTMD1" 
      
  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).HTMD1() 

elsif cate == "HTMD2"
        
  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).HTMD2()                         

elsif cate == "HTMD3"
  
  put = Putsline.new().putsline()
  choss = Category.new(unit,phase1).HTMD3()

else 
  puts "*CHOOSE perfact category".upcase
end