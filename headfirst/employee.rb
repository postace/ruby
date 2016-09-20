# Code for Initialize instance variable

class Employee

  attr_reader :name, :salary

  def name=(name)
    if name == ""
      # Report an error if the name is blank
      raise "Name can't be blank!"
    end
    # Store the name in an instance variable
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end

  def salary=(salary)
    if salary < 0
      # Report an error if the salary is negative
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  # Automatically call when create new object
  def initialize(name = "Anonymous")
    # Call to 'name=' method
    self.name = name
  end

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (salary/365.0)*14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

class SalariedEmployee < Employee

  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "A salary #{salary} isn't valid"
    else
      @salary = salary
    end
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "A hourly wage #{hourly_wage} isn't valid"
    else
      @hourly_wage = hourly_wage
    end
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "A hours per week #{hours_per_week} isn't valid"
    else
      @hours_per_week = hours_per_week
    end
  end

  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  # Writing some class methods
  def self.security_guard(name)
    # predefined hourly_wage and hours_per_week for each employee
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

salaried_employee = SalariedEmployee.new("Jane Doe", 78000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("John Micheal", 14.56, 90)
hourly_employee.print_pay_stub

# Hiring more employee
ivan    = HourlyEmployee.cashier("Ivan Stokes")
harold  = HourlyEmployee.new("Harold Nguyen", 12.75, 25)
tamara  = HourlyEmployee.new("Tamara Wells", 12.75, 25)
susie   = HourlyEmployee.new("Susie Powell", 12.75, 25)

edwin   = HourlyEmployee.janitor("Edwin Burgess")
ethel   = HourlyEmployee.new("Ethel Harris", 10.50, 20)

angela  = HourlyEmployee.security_guard("Angela Matthews")
stewart = HourlyEmployee.new("Stewart Sanche", 19.25, 30)

angela.print_pay_stub
edwin.print_pay_stub
ivan.print_pay_stub
