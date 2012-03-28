require 'csv'
csv = "SBIF.csv"

CSV.read('csv', :headers => true)

CSV.each('csv') do |row|
  
end