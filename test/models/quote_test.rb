require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
	test "unique_tag" do
		quote = Quote.create(:author => 'Darth Vader', :saying => 'Luke, I am your father')
		puts quote.inspect
		expected = 'DV#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end
end
