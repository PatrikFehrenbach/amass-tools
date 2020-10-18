name = "assetfinder"
type = "ext"

function vertical(ctx, domain)
    print("in asset finder")
    local cmd = outputdir(ctx) .. "assetfinder --subs-only " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        newname(ctx, line)
    end
    data:close()
end
