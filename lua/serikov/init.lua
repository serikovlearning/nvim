-- default things
require("serikov.launch")
require("serikov.opts")
-- require("serikov.lsp")

-- spec lazy plugins and some like this
spec("serikov.lazydev")
spec("serikov.telescope")
spec("serikov.mini")
spec("serikov.mason")
spec("serikov.conform")
spec("serikov.vtsls")
spec("serikov.lspconfig")
spec("serikov.colorschemes")
-- spec("serikov.tiny-code-actions")

-- enable lazy and lazy dependend things
require("serikov.lazy")
require("serikov.colors")

