# spec/services/challenges/group_consecutive_numbers_spec.rb
require 'rails_helper'

RSpec.describe Challenges::GroupConsecutiveNumbers do
  describe '.call' do
    context 'with a valid number' do
      it 'returns grouped consecutive numbers' do
        result = described_class.call(7)
        expected_result = {
          groups: [[1], [2, 3], [4, 5, 6, 7]],
          group_size: 4
        }
        expect(result).to eq(expected_result)
      end

      it 'returns grouped consecutive numbers for larger numbers' do
        result = described_class.call(14)
        expected_result = {
          groups: [[1], [2, 3], [4, 5, 6, 7], [8, 9, 10, 11, 12, 13], [14]],
          group_size: 8
        }
        expect(result).to eq(expected_result)
      end
    end

    context 'with edge cases' do
      it 'returns the input number when it is 1' do
        result = described_class.call(1)
        expected_result = 1
        expect(result).to eq(expected_result)
      end

      it 'returns an empty group for 0' do
        result = described_class.call(0)
        expected_result = 0
        expect(result).to eq(expected_result)
      end
    end
  end
end
