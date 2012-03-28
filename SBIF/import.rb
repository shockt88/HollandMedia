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
 
 # ap table
 
 #print table
 
 #table.each do |row| 
    #print row
  #end 
  
  grant_list = []   ##has to be outside of Class because it's grabbing info to put in 
  
  table.each do |row|
    grant_list.push Grant.new(row)
    # grant_list << Grant.new(row)
  end
  
  # grant_list.each do |grant|
  #     puts grant.company
  #   end
  
  puts grant_list.map{ |grant| grant.company }.uniq