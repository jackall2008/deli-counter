katz_deli = []

def line(customers)
    if customers.empty?
        puts "The line is currently empty."
    else 
        current_line = "The line is currently:"
        customers.each.with_index(1) do |customer, index|
            current_line << " #{index}. #{customer}"
        end

        puts current_line

    end

end

def take_a_number(existing_line, customer)
    existing_line << customer
    puts "Welcome, #{customer}. You are number #{existing_line.length} in line."

end

def now_serving(current_customer)
    if current_customer.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{current_customer[0]}."
    end
    current_customer.shift
end