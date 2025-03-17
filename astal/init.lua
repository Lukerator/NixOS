local App = require("astal.gtk3.app")
local Bar = require("widgets.Bar")

App:start {
	main = function()
		Bar(0)
	end,
}
