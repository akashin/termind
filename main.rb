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
    if ARGV.size != 1
        puts "Usage: termind <filename>"
        return 1
    end
    quotes_filepath = ARGV[0]
    lines = read_lines(quotes_filepath)
    index = rand(lines.size)
    print lines[index]
end

main()
