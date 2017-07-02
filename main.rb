#!/usr/bin/env ruby

def read_lines(filepath)
    file = File.open(filepath)
    lines = []
    file.each do |line|
        line.strip!
        if line.size > 0
            lines << line
        end
    end
    file.close
    lines
end

def main()
    if ARGV.size > 1
        puts "Usage: termind <filename>"
        return 1
    elsif ARGV.size == 1
        quotes_filepath = ARGV[0]
    else
        quotes_filepath = File.join(File.dirname(__FILE__), 'data/quotes.txt')
        puts quotes_filepath
    end
    lines = read_lines(quotes_filepath)
    index = rand(lines.size)
    print lines[index]
end

main()
