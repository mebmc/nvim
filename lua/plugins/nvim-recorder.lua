return {
	"chrisgrieser/nvim-recorder",
	dependencies = "rcarriga/nvim-notify", -- optional
	opts = {
		slots = { "x", "z" },

		dynamicSlots = "static",

		mapping = {
			startStopRecording = ";r",
			playMacro = ";f",
			switchSlot = ";;",
			editMacro = ";e",
			deleteAllMacros = ";d",
			yankMacro = ";y",
			-- ⚠️ this should be a string you don't use in insert mode during a macro
			addBreakPoint = "##",
		},

		clear = false,
	},
}
