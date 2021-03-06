require "minitest/autorun" 
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_returns_spaces_and_dashes
	assert_equal("0471958697", remove_spaces_and_dashes("04 7-1-9 58 69-7"))

	end

	def test_correct_checksum
	assert_equal(7, calculate_checksum("0471958690"))
	end
	def test_is_good_checksum
		assert_equal(true, correct_checksum?("877195869x"))
	end
	def test_is_valid_ISBN
		assert_equal(true, is_valid_ISBN?("877195869x"))
	end

 end
