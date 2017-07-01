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
    quotes_filepath = './data/quotes.txt'
    lines = read_lines(quotes_filepath)
    index = rand(lines.size)
    puts lines[index]
end

main()
