require 'mkmf'

SYNTECT_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'syntect'))
SYNTECT_RELEASE_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'syntect', 'target', 'release'))

Dir.chdir(SYNTECT_DIR) do
  system('cargo build --release') || abort('`cargo build --release` failed')
end

create_makefile('syntect/syntect')
