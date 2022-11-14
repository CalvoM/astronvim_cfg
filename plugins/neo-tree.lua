return {
        window = {
                mappings = {
                        ["p"] = { "toggle_preview", config = { use_float = true } },
                        ["O"] = "open",
                },
        },
        filesystem = {
                filtered_items = {
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_hidden = false
                },
        },
}
