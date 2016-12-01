require 'mkmf'
require 'rbconfig'

# rust/extconf.rb
raise 'You must install Rust with Cargo (https://www.rust-lang.org/)' if !system('cargo --version') || !system('rustc --version')

def debug?
  !ENV['DEBUG'].nil?
end

SYNTECT_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'syntect'))
SYNTECT_RELEASE_DIR = File.expand_path(File.join(File.dirname(__FILE__), 'syntect', 'target', debug? ? 'debug' : 'release'))

LIBDIR      = RbConfig::CONFIG['libdir']
INCLUDEDIR  = RbConfig::CONFIG['includedir']

Dir.chdir(SYNTECT_DIR) do
  system("cargo build #{'--release' unless debug?}") || abort('`cargo build` failed')
end

HEADER_DIRS = [
  INCLUDEDIR
].freeze

LIB_DIRS = [
  LIBDIR
].freeze

dir_config('syntect', HEADER_DIRS, LIB_DIRS)

$LDFLAGS << " #{`pkg-config --static --libs oniguruma`.chomp} -L#{SYNTECT_RELEASE_DIR} -lsyntect"

create_makefile('syntect/syntect')
