def say_hello
    ARGV.each do |arg|
    if arg == ARGV.first
        else
    puts "#{ARGV.first}, #{arg}"
    end
end
end
say_hello