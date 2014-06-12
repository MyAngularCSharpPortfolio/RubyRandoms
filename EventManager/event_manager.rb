require "csv"
require "sunlight/congress"
require "erb"
Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"
@date_times = []
@date_days = []
def clean_zip_code(zip_code)
zip_code.to_s.rjust(5, "0")[0..4]
end
def clean_phone(num)
clean_num = num.to_s.gsub(/[^0-9]/, "")
return clean_num if clean_num.length == 10
return clean_num[1..10] if (clean_num.length == 11 && clean_num[0] == '1')
return "xxxxxxxxxx"
end
def leg_by_zip(zip_code)
legislators = Sunlight::Congress::Legislator.by_zipcode zip_code
end
def date_helper(reg_date)
d = DateTime.strptime(reg_date, '%m/%d/%y %H:%M')
@date_times << d.hour
@date_days << d.wday
end
def save_letter_to_file(id, form_letter)
Dir.mkdir("output") unless Dir.exists? "output"

filename = "output/thanks_#{id}.html"

#File.open(filename,'w') do |file| #'w' stands for writing to file
#    file.puts form_letter
#end
end
puts "Events Manager Initialized"

template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row| 
id = row[0]
name = row[:last_name]
phone = clean_phone(row[:homephone])
date_on = date_helper(row[:regdate])
zip_code = clean_zip_code(row[:zipcode])
leg_zip = leg_by_zip(zip_code)


personal_letter = erb_template.result(binding)

#save_letter_to_file(id, personal_letter)
puts phone
end
freq = @date_times.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
hours_reg = @date_times.max_by { |v| freq[v] }

freqq = @date_days.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
days_reg = @date_days.max_by { |v| freqq[v] }

days = ["sunday", "monday", "tuesday", "wednesday", "thurs", "fri", "sat"]
puts "#{hours_reg} is the most accessed hour"
puts "#{days[days_reg]} is the most accessed day"
=begin
if zip_code.nil?
zip_code = "00000"
elsif zip_code.length > 5
zip_code = zip_code[0..4]
elsif zip_code.length < 5
zip_code = zip_code.rjust 5, "0"
else
zip_code
end
#THE ABOVE CODE IS THIS STATEMENT zip_code.to_s.rjust(5, "0")[0..4]

=end
