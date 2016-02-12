require "test/unit"
require_relative "prime.rb"

class TestPrimes < Test::Unit::TestCase
	def test_is_prime()
	    primes = [2,3,5,7,17,29]
	    not_primes = [1,4,6,10,12,20]

	    for i in primes
	        assert_equal(is_prime(i), true)
	    end

	    for i in not_primes
	        assert_equal(is_prime(i), false)
	    end
	end

    def test_next_prime()
    	primes = [2,3,5,7,11,13,17,19,23,29]
    	not_primes = [2,4,6,8,12,15,18,21,28,30]
    	next_primes = [3,5,7,11,13,17,19,23,29,31]

    	for i in 0..primes.length-1
    		assert_equal(next_prime(primes[i]), next_primes[i])
    	end

    	for i in 0..not_primes.length-1
    		assert_equal(next_prime(not_primes[i]), next_primes[i])
    	end
    end

    def test_n_primes()
    	assert_equal(n_primes(15), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47])
    end
end
