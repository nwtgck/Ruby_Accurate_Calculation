# 少数の誤差をなくして計算する
# 
# 通常: 0.1 * 0.1 => 0.010000000000000002
# 適用後: 0.1 * 0.1 => 0.01

require 'bigdecimal'
# require 'pry'

module AccurateNumeric
	[:+, :-, :*, :/, :**].each{|op|
		define_method(op){|that|
			if self.is_a?(Integer) || that.is_a?(Integer)
				super(that)
			else
				BigDecimal.new(to_s).send(op, that).to_f
			end
		}
	}
end

class Float
	prepend AccurateNumeric
end

class Fixnum
	prepend AccurateNumeric
end

class Bignum
	prepend AccurateNumeric
end

# pry