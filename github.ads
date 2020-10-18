name = "github-subdomains"
type = "ext"

function vertical(ctx, domain)
    print("in github-subdomains")
    local cmd = outputdir(ctx) .. "github-subdomains -e -raw -d " .. domain

    local data = assert(io.popen(cmd))
    for line in data:lines() do
        newname(ctx, line)
    end
    data:close()
end
