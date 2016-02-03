class Year
  VERSION = 1

  def self.leap?(year)
    if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
      "Yes, #{year} is a leap year"
    end
  end

end