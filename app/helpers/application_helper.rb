module ApplicationHelper
	def line_break(str)
		str.gsub("\n", "<br />")
	end
end
