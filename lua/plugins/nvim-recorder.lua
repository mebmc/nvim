return {
	"chrisgrieser/nvim-recorder",
	dependencies = "rcarriga/nvim-notify", -- optional
	opts = {
		slots = { "x", "z" },

		dynamicSlots = "static",

		mapping = {
			startStopRecording = "qr",
			playMacro = "qf",
			switchSlot = "qq",
			editMacro = "qe",
			deleteAllMacros = "qd",
			yankMacro = "qy",
			-- ⚠️ this should be a string you don't use in insert mode during a macro
			addBreakPoint = "##",
		},

		clear = false,
	},
}
