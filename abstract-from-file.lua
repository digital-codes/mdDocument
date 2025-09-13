-- Read abstract content from an external file and inject it into metadata
-- Usage: set `abstract-file: abstract.md` in metadata.yaml

function Meta(meta)
  local af = meta["abstract-file"]
  if af ~= nil then
    local path = pandoc.utils.stringify(af)
    local f = io.open(path, "r")
    if f ~= nil then
      local contents = f:read("*a")
      f:close()
      local doc = pandoc.read(contents, "markdown")
      meta.abstract = pandoc.MetaBlocks(doc.blocks)
    else
      io.stderr:write("abstract-from-file.lua: could not open " .. path .. "\n")
    end
  end
  return meta
end

