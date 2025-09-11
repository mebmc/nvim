return {
  "huggingface/llm.nvim",
  lazy = false,
  opts = {
    backend = "ollama",
    model = "qwen2.5-coder:7b",
    url = "http://localhost:11434",

    context_window = 512,

    tokens_to_clear = { "<|endoftext|>" },
    fim = {
      enabled = true,
      prefix = "<fim_prefix>",
      middle = "<fim_middle>",
      suffix = "<fim_suffix>",
    },

    request_body = {
      -- Modelfile options for the model you use
      options = {
        temperature = 0.2,
        top_p = 0.95,
      }
    }
  }
}
