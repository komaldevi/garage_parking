class CalculateParking
  def member_check(member)
    @member_cost = 0
    if member == "yes"
      @member_cost += 1.5
    else
      @member_cost += 3
    end
  end

  def member_timing(member_hour)
    @timing_cost = 0
    if member_hour == 1
      @timing_cost += 2
    elsif member_hour == 2
      @timimg_cost += 1.5
    elsif member_hour == 3
      @timing_cost += 1
    else @timing_cost += 0.5
    end
  end
  
  def counting
    loop do 
      puts "fixed and not fixed yes/no!!"
      member_type = gets.chomp.to_s
      member_check(member_type)

      puts "How many hours?"
      hours = gets.chomp.to_s
      member_timing(hours)

      puts "exit yes/no"
      exit = gets.chomp.to_s
      if exit == "yes"
        puts "Total cost #{@timing_cost + @member_cost}$"
        break
      end
    end
  end
end      

CalculateParking.new.counting
