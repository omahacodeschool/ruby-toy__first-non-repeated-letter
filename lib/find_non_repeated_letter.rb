def find_first_non_repeated_letter(str)
    str.split('').each do |x|
        str.count(x)
        if str.count(x) == 1
            return x
        end
    end
    str.split('').each do |x|
        str.count(x)
        if str.count(x) > 1
            return nil
        end
    end
end