require File.dirname(__FILE__) + '/lib/calculator'
require File.dirname(__FILE__) + '/lib/interest'
require File.dirname(__FILE__) + '/lib/interest_range'

desc "Snitt av år ränta averages[y10|y5|y2..]"
task 'averages', [:year] do |t, args|
  lines = File.read('SEB_historiska_rantor.txt').lines.drop(1)
  calc = Calculator.new(lines)
  puts calc.all_averages((args.year).to_sym)
end
