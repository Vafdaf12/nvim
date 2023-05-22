local jdtls_setup = require("jdtls.setup")

local function parent_path(raw_path)
    vim.cmd('cd '..raw_path..'/../')
    local result = vim.fn.getcwd() -- normalized.
    vim.cmd('cd -') -- restore.
    return result
end

local project_dir = jdtls_setup.find_root({'gradlew', '.git', 'mvnw'})

local config = {
    cmd = {
        '/home/vincent/Downloads/jdt-language-server-1.9.0-202203031534/bin/jdtls',
        '-data',
        parent_path(project_dir) .. '/workspace',

    }, --
    root_dir = project_dir
}

require('jdtls').start_or_attach(config)
