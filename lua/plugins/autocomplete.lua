return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- Disable all default mappings so we can define our own

        -- Tab: Accept completion OR jump forward in a snippet
        ["<Tab>"] = { "select_and_accept", "snippet_forward", "fallback" },

        -- Shift-Tab: Select previous OR jump backward in a snippet
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

        -- Arrow keys: Just for navigation if needed
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },

        -- IMPORTANT: Do NOT map <CR> (Enter) here.
        -- By omitting it, Enter will default to its normal behavior (new line).
      },
    },
  },
}
