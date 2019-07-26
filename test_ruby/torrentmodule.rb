module Category_select 
  def GLP()
    if @unit < 200
      
      total = @unit * 4.10 * 30 + @phase 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    elsif 200 < @unit
           
      first_unit = 200 - @unit
      secnod_unit = 200 * 4.10 * 30 + @phase
      last_unit = first_unit * 4.80 * 30 + @phase
      total = secnod_unit + last_unit 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"
    end
  end 
  def RGP()
    if @unit <= 50

      total = @unit * 3.20 * 30 + @phase
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

   elsif 50 <  @unit && @unit > 150
                 
      first_unit = 50 - @unit
      secnod_unit = 50 * 3.20 * 30 + @phase
      last_unit = first_unit * 3.90 * 30 + @phase
      total = secnod_unit + last_unit 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

   else 150 <  @unit  

      first_unit = 150 - @unit
      secnod_unit = 150 * 3.90 * 30 + @phase
      last_unit = first_unit *  4.90 * 30 + @phase
      total = secnod_unit + last_unit 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"   
    end
  end  
  def BPL()
    if @unit <= 30
          
      total = @unit * 1.50 * 30 + 5
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    elsif 70 >  @unit && @unit > 30
                
      first_unit = 70 - @unit
      secnod_unit = 30 * 1.50 * 30 + 5 
      last_unit = first_unit * 3.20 * 30 + 5
      total = secnod_unit + last_unit 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    elsif 70 <  @unit  &&  @unit > 150 
          
      first_unit = 150 - @unit
      secnod_unit = 70 * 3.20 * 30 + 5
      last_unit = first_unit * 3.90 * 30 + 5 
      total = secnod_unit + last_unit
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    else @unit > 150 
          
      first_unit = 150 - @unit 
      secnod_unit = 150 * 3.90 * 30 + 5 
      last_unit = @unit * 4.90 * 30 + 5 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"       
    end
  end 
  def NRGP()
    if @unit <= 5

      total = @unit + 70.00 * 4.50
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    else 5 <= @unit || 15 <= @unity

      total = @unit + 90.00 * 4.50
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"
    end
  end
  def LTP()
    
    total = @unit * 3.30 * 30 + 10
    pay = total.to_i
    puts "Your Total Bill Payment:  #{pay}"
  end
  def HTMD1()
    if @unit < 400

      @engry = @unit * 4.45 + 260 

    else @unit >= 400 

      first_unit = @unit - 400 
      secnod_unit = 400 * 4.70 +  175 
      last_unit = first_unit * 4.70  +   185   
      @engry = first_unit + last_unit         
    end
    if @unit < 1000

      @fixcharge = @unit  +  260 
      
    else @unit >= 1000 

      @fixcharge = @unit + 335
    end

    if @unit <= 300

      @toucharge = @unit  * 0.8 
       
    else @unit >= 300

      @toucharge = @unit * 1.00          
    end

      total = @engry + @fixcharge + @toucharge
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"      
  end
  def LTMD1()
    if @unit < 50

      total = @unit * 4.55 + 150
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    else @unit >= 50 
     
      first_unit = @unit - 50 
      secnod_unit = 50 * 4.55 + 150 
      last_unit = first_unit * 4.55 + 185
      total = secnod_unit + last_unit
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"
    end
  end
  def LTMD2()
    if @unit < 50

      total = @unit * 4.70 + 175 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"

    else @unit >= 50 
       
      first_unit = @unit - 50 
      secnod_unit = 50 * 4.70 +  175 
      last_unit = first_unit * 4.70 +  185
      total = secnod_unit + last_unit 
      pay = total.to_i
      puts "Your Total Bill Payment:  #{pay}"
    end
  end
   def SL()
  
    total = @unit * 4.20 * 30
    pay = total.to_i
    puts "Your Total Bill Payment:  #{pay}" 
  end
end