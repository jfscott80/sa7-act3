#script.rb

def csv_parser(filename)
    data = []
    # read csv file => set as variable content
    content = File.read(filename)
    # puts content.is_a? String     true
    # puts content.size             50
    # remove newline chars
    content = content.split("\n")
    # puts content.is_a? String     false
    # puts content.is_a? Array      true
    # puts content.size             3
    i = 0
    until i >= content.size
        content = content[i].split(",")
        puts content.inspect
        i += 1
    end
    # keys = content[0].split(",")

    # puts keys.inspect               #["Name", "Age", "City"]
    # puts keys.is_a? Array           #true
    # puts keys.size                  #3

    csv_hash = {}

    # i = 1
    # until i >= content.size
    #     csv_hash = keys[]
    #     i += 1
    # end
    # data.push(content.to_s)
    # puts data.is_a? String
    # puts data.kind_of? Array
    # puts data.count
    # data.each do |data, i|
    #     data[i].split(",")
    # end
    # puts data
    # puts content.inspect



    end
    # keys = $content[0]
    # puts keys
    # puts $content
    # puts $content.inspect
    
    

csv_parser("data.csv")    
    
#     File.open("data.txt", "w") do |file|
#           file.write(content)
#         end
#     i = 0
#     csv_hash = {}
#     File.open('data.txt') do |file|
#         file.each_line do |line|
#             if i == 0
#                 keys = line.each
#                 i = 1
#                 puts keys
#             else
#                 value = line.each
#                 csv_hash[keys] = value
#             end
#         end
#     end
        
# end
# csv_parser('data.csv')
# puts csv_hash