#script.rb
# Objective: Implement a simple CSV parser
# that reads data from a CSV file and 
# transforms it into an array of hashes,
# with each hash representing a row of the
# CSV.
# Task: Write a Ruby script that reads a 
# CSV file named data.csv, where the first
# row is the header containing column 
# names. Each subsequent row contains
# data corresponding to these column names. Convert this CSV file into an array of hashes, where each hash represents a row of data with keys as column names and values as row values. Assume the CSV file does not contain any special characters like commas within data fields.

# Expected Output (printed as a Ruby object):
# [
#   { "Name" => "Alice", "Age" => "30", "City" => "New York" },
#   { "Name" => "Bob", "Age" => "25", "City" => "Los Angeles" }
# ]



# ARGV.each do |arg|
#     puts "Hello, #{arg}!"
# end


# ARGV.each do |arg|
#     csv_parser(arg)
# end

# def csv_parser(file_name) do |csv|
#     csv.open(file_name, 'r')
#     csv_hash = []
#     header = []
#     i = 0
#     csv.each_line do |row, element|
#         row.split(',')
#         if i = 0
#             header.push(row)
#             header.map(element + ':')
#             csv_hash.push(header)
#         else
#             csv_hash.each |key, value|
#         end
        
#         csv_hash

#     end

# end
# require 'csv'
# ARGV.each do |arg|
#     csv_to_hashes(arg)
# end
# Read the CSV file and convert it into an array of hashes
def csv_to_hashes(file) #do |csv|
  data = []
  keys = [] # Initialize an empty array to store column names

  File.each_line(file, headers: true) do |row|
    # If keys are not already set, extract them from the first row
    keys = row.headers unless keys.any?

    # Create a hash for each row with keys as column names and values as row values
    data << Hash[keys.zip(row.fields)]
  end

  data
end

# # Usage example:
# csv_file_path = 'data.csv'
# result = csv_to_hashes(csv_file_path)
puts csv_to_hashes('data.csv')
# # Print the resulting array of hashes
# result.each do |row|
#   puts row.inspect
# end
