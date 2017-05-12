# Minitest::Neovim

A trivially simple minitest plugin that sleeps 0.5s after the tests, allowing
neovim to flush the terminal. Without this, the end of the tests are often
truncated when run in a terminal, as e.g. when using vim-dispatch-neovim
