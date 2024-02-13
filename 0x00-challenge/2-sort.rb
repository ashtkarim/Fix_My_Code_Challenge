result = []

ARGV.each do |arg|
    # Convert to integer
    i_arg = arg.to_i

    # Skip if not an integer
    next if i_arg.to_s != arg

    # Insert result at the right position
    is_inserted = false
    i = 0
    while i < result.size do
        if result[i] <= i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result.join(' ')
