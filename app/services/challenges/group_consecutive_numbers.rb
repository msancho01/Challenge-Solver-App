module Challenges
  class GroupConsecutiveNumbers
    def self.call_async(*args)
      #GroupConsecutiveNumbers.perform_later(*args)
    end

    def self.call(*args)
      new(*args).call
    end

    def initialize(number)
      @number = number
    end

    def call
      group_consecutive_numbers(@number)
    end

    def group_consecutive_numbers(n)
      return n if n <= 1
      groups = [[1]]
      current_number = 2
      group_size = 2

      while current_number <= n
        grupo = []
        group_size.times do
          break if current_number > n
          grupo << current_number
          current_number += 1
        end
        groups << grupo
        group_size += 2
      end

      { groups: groups, group_size: group_size -2}
    end
  end
end