require "minitest/neovim/version"

Minitest.after_run do
    STDOUT.flush
    STDERR.flush
    sleep 0.5
end

