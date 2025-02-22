local Dictionary = {
	copy = require(script.copy),
	copyDeep = require(script.copyDeep),
	count = require(script.count),
	equals = require(script.equals),
	equalsDeep = require(script.equalsDeep),
	every = require(script.every),
	filter = require(script.filter),
	flatten = require(script.flatten),
	flip = require(script.flip),
	fromLists = require(script.fromLists),
	has = require(script.has),
	includes = require(script.includes),
	join = require(script.merge),
	joinDeep = require(script.mergeDeep),
	keys = require(script.keys),
	map = require(script.map),
	merge = require(script.merge),
	mergeDeep = require(script.mergeDeep),
	removeKey = require(script.removeKey),
	removeKeys = require(script.removeKeys),
	removeValue = require(script.removeValue),
	removeValues = require(script.removeValues),
	set = require(script.set),
	some = require(script.some),
	update = require(script.update),
	values = require(script.values),
}

function Dictionary:__call(tbl)
	return setmetatable(tbl, { __index = Dictionary })
end

function Dictionary:unwrap()
	return setmetatable(self:copy(), nil)
end

return setmetatable({}, Dictionary)
