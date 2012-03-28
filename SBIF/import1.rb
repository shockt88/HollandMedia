#require 'csv'
#csv = "SBIF.csv"

#CSV.read('csv', :headers => true)

#CSV.each('csv'') do |row|
  
#end
 
 require 'csv'
 require 'awesome_print'
 
 class Grant
   def initialize(row)          ##### Class Gramt 
     @row = row                     #def initialize(company,address) 
   end                   

   def company                      #@company = company 
     @row.field("Company")          #@address = adddress
   end
 end
 
 table = CSV.read('Small_Business_Improvement_Fund__SBIF__Grant_Agreements.csv', :headers => true)
 
  table.each do |row|
 # ap table
 
 #print table
 
 #table.each do |row| 
    #print row
  #end 
  
end