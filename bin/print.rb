require_relative '../config/app'
require 'team_builders/first_letter_of_surname'
require 'team_builders/one_name'
require 'team_builders/anyone'
require 'team_builders/same_last_name'

team = nil
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: #{$0} [options]"
  opts.on("-t", "--team TEAM", "Team: can be any of first_letter_of_surname, one_name") do |t| 
    team = t.to_sym
  end
end

begin
  optparse.parse!

  if team.nil?
    puts "ERROR: Missing mandatory options: -t"
    puts optparse
    exit
  end
rescue OptionParser::InvalidOption, OptionParser::MissingArgument
  puts $!.to_s
  puts optparse
  exit
end

team_printer = case team
when :first_letter_of_surname
  FirstLetterOfSurname
when :one_name
  OneName
when :anyone
  Anyone
when :same_last_name
  SameLastName
end

team_printer.print
