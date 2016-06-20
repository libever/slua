local N = {}

local function Hello(message)
	ngx.say("<p>" .. message .. "</p>");
end

function N:new(message)
	Hello(message)
end

return N;
