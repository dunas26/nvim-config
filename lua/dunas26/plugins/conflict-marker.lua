return {
	"rhysd/conflict-marker.vim",
	event = "BufRead",
	config = function()
		vim.g.conflict_marker_enable_mappings = 1
		vim.g.conflict_marker_highlight_group = "ConflictMarker"
		vim.g.conflict_marker_enable_diff_buffer = 1
	end
}
