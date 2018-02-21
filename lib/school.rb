class School
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end
  end
    
    def grade(num)
      @roster[num]
    end
    
    def sort
      @roster.each do |year, kids|
        roster[year].sort!
      end
      @roster
    end
  
end

