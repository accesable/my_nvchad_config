local config = {
    cmd = {'/home/trann/jdtls/bin/jdtls','/opt/jdk-22.0.1/bin/java'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
