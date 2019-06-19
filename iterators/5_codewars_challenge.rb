# https://www.codewars.com/kata/printer-errors/train/ruby

def printer_error(s)
	"#{s.scan(/[^a-m]/).length}/#{s.length}"
end
