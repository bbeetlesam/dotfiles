require("core.opts")
require("core.keymaps")

require("core.lazy")
require("default-theme")

-- helper funcs
function R(name)
  package.loaded[name] = nil
  return require(name)
end
