-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M:restrict_move(max_move, projected_position)
	local new_position = vmath.vector3(projected_position)
	if projected_position.x > max_move then
		new_position.x = max_move
	end

	if projected_position.x < -max_move then
		new_position.x = -max_move
	end

	if projected_position.y > max_move then
		new_position.y = max_move
	end

	if projected_position.y < -max_move then
		new_position.y = -max_move
	end
	return new_position
end

return M