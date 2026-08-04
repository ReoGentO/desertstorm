local dir = "Reodesert"

if isfolder and not isfolder(dir) then
    makefolder(dir)
end

local images = {
    eye = {
        filename = "eye.png",
        link = "https://github.com/ReoGentO/desertstorm/blob/main/eye.png?raw=true"
    },
    cross = {
        filename = "cross.png",
        link = "https://github.com/ReoGentO/desertstorm/blob/main/locate-fixed.png?raw=true"
    },
    swords = {
        filename = "cross.png",
        link = "https://github.com/ReoGentO/desertstorm/blob/main/swords.png?raw=true"
    }
}

local ref = {}

for key, info in pairs(images) do
    local filePath = dir .. "/" .. info.filename
    
    if isfile and not isfile(filePath) then
        local raw_file = game:HttpGet(info.link)
        writefile(filePath, raw_file)
    end
    
    if getcustomasset then
        ref[key] = getcustomasset(filePath)
    end
end

return ref
