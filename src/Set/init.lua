local Set = {
	add = require(script.add),
	copy = require(script.copy),
	filter = require(script.filter),
	fromList = require(script.fromList),
	has = require(script.has),
	intersection = require(script.intersection),
	isSubset = require(script.isSubset),
	isSuperset = require(script.isSuperset),
	map = require(script.map),
	subtract = require(script.subtract),
	toList = require(script.toList),
	union = require(script.union),
}


function Set:__call(tbl)
	return setmetatable(tbl, { __index = Set })
end

function Set:get()
	return setmetatable(self:copy(), nil)
end

return setmetatable({}, Set)
