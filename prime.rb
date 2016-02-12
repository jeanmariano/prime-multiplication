# Jean Mariano
# Ruby coding challenge

def is_prime(n)
    return false if n <= 1
    i = 2
    while i <= Math.sqrt(n)
        if n%i == 0
            return false
        end
        i = i+1
    end
    return true
end 

def next_prime(n)
    n = n+1
    n = n + 1 until is_prime(n)
    return n   
end 

def mult_table(num_array)
    n = num_array.length-1
    table = ""
    for i in -1..n
        if i > -1
            table = table + "#{num_array[i]}\t"
        end
        for j in -1..n
            if i==-1 && j==-1
                table = table + "X\t"
            end

            if i==-1 && j > -1
                table = table + "#{num_array[j]}\t"
            elsif i > -1 && j >-1
                k = num_array[i] * num_array[j]        
                table = table + "#{k}\t"
            end
        end        
        table = table + "\n"
    end
    return table
end

def n_primes(n)
    primes = [2]    
    while n > 1
        j = primes[primes.length-1]
        k = next_prime(j)
        primes.push(k)
        n = n-1
    end 
    return primes
end

def main(n)
    primes = n_primes(n)
    print mult_table(primes)
end

# main(10)