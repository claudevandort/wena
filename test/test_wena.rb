require 'minitest/autorun'
require 'wena'

class WenaTest < Minitest::Test
	def setup
		@wena = Wena.new
		@name = 'Claudio'
	end

	def test_wena_default
		assert_equal 'Wena wena', @wena.wena
	end

	def test_wn_default
		assert_equal 'Wena wn', @wena.wn
	end

	def test_wn_named
		assert_equal 'Wena Claudio', @wena.wn(@name)
	end

	def test_ql_default
		assert_equal 'Wena wn ql', @wena.ql
	end

	def test_ql_named
		assert_equal 'Wena Claudio ql', @wena.ql(@name)
	end
end