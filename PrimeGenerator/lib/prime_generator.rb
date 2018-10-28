# This class generates an array of prime integer numbers up to an upper
# limit given.
class PrimeGenerator
  def generate(upto)
    primes = (2..upto).to_a

    index = 0
    primes.length.times do
      break if index >= primes.length

      primes.each do |num|
        primes.delete(num) if (num != primes[index]) && (num % primes[index]).zero?
      end
      index = index.next
    end

    primes
  end
end

