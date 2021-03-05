
class School
    attr_reader :name, :roster
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
       @roster[grade]
    end

    def sort
        @roster.map{|k, v| [k, v.sort]}.to_h
    end

end








# code here!
# require 'pry'
# class School
#     attr_reader :roster
#     def initialize (name, roster = {})
#         @name = name
#         @roster = {}
#     end

#     def add_student(name, grade)
#         if @roster.has_key?(grade)    
#                 @roster[grade] << name
#         else
#             @roster[grade] = []
#             @roster[grade] << name
            
#         end
        
#     end 

#     def grade(grade)
#         @roster[grade]
#     end

#     def sort
#         @roster.collect{|key, value|
#             [key, value.sort]}.to_h
#     end

# end