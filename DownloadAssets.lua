local dir = "Reodesert"

if isfolder and not isfolder(dir) then
    makefolder(dir)
end

local images = {
    eye = {
        filename = "eye.png",
        link = "https://raw.githubusercontent.com/ReoGentO/desertstorm/main/eye.png"
    },
    cross = {
        filename = "cross.png",
        link = "https://raw.githubusercontent.com/ReoGentO/desertstorm/main/locate-fixed.png"
    },
    swords = {
        filename = "swords.png",
        link = "https://raw.githubusercontent.com/ReoGentO/desertstorm/main/swords.png"
    },
    house = {
        filename = "house.png",
        link = "https://raw.githubusercontent.com/ReoGentO/desertstorm/main/house.png"
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
