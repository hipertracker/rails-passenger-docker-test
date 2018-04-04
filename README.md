## UPDATE: the problem has been solved 

https://github.com/hipertracker/rails-passenger-docker-test/commit/959f9b05a6578adca057bbe961fa7a8876ccf7a3

## Reproducing previous bug
```
git clone git@github.com:hipertracker/rails-passenger-docker-test.git tescior
cd tescior
docker run -t hipertracker/tescior .
docker-compose up
open http://localhost
```

 ### Error:
Web application could not be started

 ### Error ID:

 73bb460f

 ### Details:

```
cannot load such file -- bundler/dep_proxy (LoadError)
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:135:in `require'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:135:in `rescue in require'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:39:in `require'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:888:in `block (2 levels) in expand_dependencies'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:887:in `each'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:887:in `block in expand_dependencies'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:874:in `each'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:874:in `expand_dependencies'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:806:in `converge_locked_specs'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:247:in `resolve'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:170:in `specs'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:237:in `specs_for'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:226:in `requested_specs'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/runtime.rb:108:in `block in definition_method'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/runtime.rb:20:in `setup'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler.rb:107:in `setup'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/setup.rb:20:in `<top (required)>'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
  /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
  /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:456:in `activate_gem'
  /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:323:in `block in run_load_path_setup_code'
  /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:461:in `running_bundler'
  /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:322:in `run_load_path_setup_code'
  /usr/share/passenger/helper-scripts/rack-preloader.rb:100:in `preload_app'
  /usr/share/passenger/helper-scripts/rack-preloader.rb:156:in `<module:App>'
  /usr/share/passenger/helper-scripts/rack-preloader.rb:30:in `<module:PhusionPassenger>'
  /usr/share/passenger/helper-scripts/rack-preloader.rb:29:in `<main>'
```

### System information:

```
Application root
/home/app/webapp
Environment (value of RAILS_ENV, RACK_ENV, WSGI_ENV, NODE_ENV and PASSENGER_APP_ENV)
development
Ruby interpreter command
/usr/bin/ruby2.5
User and groups
uid=9999(app) gid=9999(app) groups=9999(app),10000(rvm)
Environment variables
rvm_bin_path = /usr/local/rvm/bin
GEM_HOME = /usr/local/rvm/gems/ruby-2.5.0
SHELL = /bin/bash
IRBRC = /usr/local/rvm/rubies/ruby-2.5.0/.irbrc
PYTHONUNBUFFERED = 1
PASSENGER_DEBUG_DIR = /tmp/passenger.spawn-debug.XXXXn5RSXi
MY_RUBY_HOME = /usr/local/rvm/rubies/ruby-2.5.0
USER = app
_system_type = Linux
rvm_path = /usr/local/rvm
IN_PASSENGER = 1
RACK_ENV = development
PASSENGER_USE_FEEDBACK_FD = true
rvm_prefix = /usr/local
PATH = /usr/local/rvm/gems/ruby-2.5.0/bin:/usr/local/rvm/gems/ruby-2.5.0@global/bin:/usr/local/rvm/rubies/ruby-2.5.0/bin:/usr/local/rvm/bin:/home/app/bin:/home/app/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
WSGI_ENV = development
PWD = /home/app/webapp
NODE_PATH = /usr/share/passenger/node
_system_arch = x86_64
NODE_ENV = development
_system_version = 16.04
rvm_version = 1.29.3 (latest)
rvm_pretty_print_flag = auto
HOME = /home/app
SHLVL = 0
RAILS_ENV = development
rvm_ruby_string = ruby-2.5.0
SERVER_SOFTWARE = nginx/1.12.2 Phusion_Passenger/5.2.1
LOGNAME = app
GEM_PATH = /usr/local/rvm/gems/ruby-2.5.0:/usr/local/rvm/gems/ruby-2.5.0@global
PASSENGER_APP_ENV = development
rvmsudo_secure_path = 1
rvm_delete_flag = 0
RUBY_VERSION = ruby-2.5.0
_system_name = Ubuntu
rvm_silence_path_mismatch_check_flag = 1
BUNDLER_ORIG_BUNDLE_BIN_PATH = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_BUNDLE_GEMFILE = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_BUNDLER_ORIG_MANPATH = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_BUNDLER_VERSION = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_GEM_HOME = /usr/local/rvm/gems/ruby-2.5.0
BUNDLER_ORIG_GEM_PATH = /usr/local/rvm/gems/ruby-2.5.0:/usr/local/rvm/gems/ruby-2.5.0@global
BUNDLER_ORIG_MANPATH = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_PATH = /usr/local/rvm/gems/ruby-2.5.0/bin:/usr/local/rvm/gems/ruby-2.5.0@global/bin:/usr/local/rvm/rubies/ruby-2.5.0/bin:/usr/local/rvm/bin:/home/app/bin:/home/app/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
BUNDLER_ORIG_RB_USER_INSTALL = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_RUBYLIB = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
BUNDLER_ORIG_RUBYOPT = BUNDLER_ENVIRONMENT_PRESERVER_INTENTIONALLY_NIL
Ulimits
Unknown
System metrics
Using /usr/local/rvm/gems/ruby-2.5.0
------------- General -------------
Kernel version    : 4.9.87-linuxkit-aufs
Uptime            : 1d 8h 36m 43s
Load averages     : 0.39%, 0.14%, 0.10%
Fork rate         : unknown

------------- CPU -------------
Number of CPUs    :    4
Average CPU usage :   0%  --   0% user,   0% nice,   0% system, 100% idle
  CPU 1           :   0%  --   0% user,   0% nice,   0% system, 100% idle
  CPU 2           :   0%  --   0% user,   0% nice,   0% system, 100% idle
  CPU 3           :   0%  --   0% user,   0% nice,   0% system, 100% idle
  CPU 4           :   0%  --   0% user,   0% nice,   0% system, 100% idle
I/O pressure      :   0%
  CPU 1           :   0%
  CPU 2           :   0%
  CPU 3           :   0%
  CPU 4           :   0%
Interference from other VMs:   0%
  CPU 1                    :   0%
  CPU 2                    :   0%
  CPU 3                    :   0%
  CPU 4                    :   0%

------------- Memory -------------
RAM total         :   1998 MB
RAM used          :    423 MB (21%)
RAM free          :   1575 MB
Swap total        :   1023 MB
Swap used         :      2 MB (0%)
Swap free         :   1021 MB
Swap in           : unknown
Swap out          : unknown

General Ruby interpreter information
RUBY_VERSION = 2.5.0
RUBY_PLATFORM = x86_64-linux
RUBY_ENGINE = ruby
RubyGems version = 2.7.3
RubyGems paths = ["/usr/local/rvm/gems/ruby-2.5.0", "/usr/local/rvm/gems/ruby-2.5.0@global"]
Ruby configuration (RbConfig::CONFIG)
DESTDIR = 
MAJOR = 2
MINOR = 5
TEENY = 0
PATCHLEVEL = 0
INSTALL = /usr/bin/install
EXEEXT = 
prefix = /usr/local/rvm/rubies/ruby-2.5.0
ruby_install_name = ruby
RUBY_INSTALL_NAME = ruby
RUBY_SO_NAME = ruby
exec = exec
ruby_pc = ruby-2.5.pc
PACKAGE = ruby
BUILTIN_TRANSSRCS =  enc/trans/newline.c
USE_RUBYGEMS = YES
MANTYPE = doc
vendorarchhdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0/vendor_ruby/x86_64-linux
sitearchhdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0/site_ruby/x86_64-linux
rubyarchhdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0/x86_64-linux
vendorhdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0/vendor_ruby
sitehdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0/site_ruby
rubyhdrdir = /usr/local/rvm/rubies/ruby-2.5.0/include/ruby-2.5.0
RUBY_SEARCH_PATH = 
UNIVERSAL_INTS = 
UNIVERSAL_ARCHNAMES = 
configure_args =  '--prefix=/usr/share/rvm/rubies/ruby-2.5.0' '--enable-load-relative' '--sysconfdir=/etc' '--disable-install-doc' '--enable-shared'
CONFIGURE = configure
vendorarchdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby/2.5.0/x86_64-linux
vendorlibdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby/2.5.0
vendordir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby
sitearchdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby/2.5.0/x86_64-linux
sitelibdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby/2.5.0
sitedir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby
rubyarchdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux
rubylibdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0
ruby_version = 2.5.0
sitearch = x86_64-linux
arch = x86_64-linux
sitearchincludedir = /usr/local/rvm/rubies/ruby-2.5.0/include/x86_64-linux
archincludedir = /usr/local/rvm/rubies/ruby-2.5.0/include/x86_64-linux
sitearchlibdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/x86_64-linux
archlibdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/x86_64-linux
libdirname = libdir
RUBY_EXEC_PREFIX = 
RUBY_LIB_VERSION = 
RUBY_LIB_VERSION_STYLE = 3	/* full */
RI_BASE_NAME = ri
ridir = /usr/local/rvm/rubies/ruby-2.5.0/share/ri
rubysitearchprefix = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/x86_64-linux
rubyarchprefix = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/x86_64-linux
MAKEFILES = Makefile GNUmakefile
PLATFORM_DIR = 
THREAD_MODEL = pthread
SYMBOL_PREFIX = 
EXPORT_PREFIX = 
COMMON_HEADERS = 
COMMON_MACROS = 
COMMON_LIBS = 
MAINLIBS = 
ENABLE_SHARED = yes
DLDLIBS =  -lc
SOLIBS = -lpthread -lgmp -ldl -lcrypt -lm 
LIBRUBYARG_SHARED = -Wl,-rpath,'${ORIGIN}/../lib' -Wl,-rpath,'${ORIGIN}/../lib' -lruby
LIBRUBYARG_STATIC = -Wl,-rpath,'${ORIGIN}/../lib' -Wl,-rpath,'${ORIGIN}/../lib' -lruby-static
LIBRUBYARG = -Wl,-rpath,'${ORIGIN}/../lib' -Wl,-rpath,'${ORIGIN}/../lib' -lruby
LIBRUBY = libruby.so.2.5.0
LIBRUBY_ALIASES = libruby.so.2.5 libruby.so
LIBRUBY_SONAME = libruby.so.2.5
LIBRUBY_SO = libruby.so.2.5.0
LIBRUBY_A = libruby-static.a
RUBYW_INSTALL_NAME = 
rubyw_install_name = 
EXTDLDFLAGS = 
EXTLDFLAGS = 
strict_warnflags = -std=gnu99
warnflags = -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wno-tautological-compare -Wno-parentheses-equality -Wno-constant-logical-operand -Wno-self-assign -Wunused-variable -Wimplicit-int -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration -Wdeprecated-declarations -Wno-packed-bitfield-compat -Wsuggest-attribute=noreturn -Wsuggest-attribute=format -Wno-maybe-uninitialized
debugflags = -ggdb3
optflags = -O3
NULLCMD = :
ENABLE_DEBUG_ENV = 
DLNOBJ = dln.o
INSTALL_STATIC_LIBRARY = no
EXECUTABLE_EXTS = 
ARCHFILE = 
LIBRUBY_RELATIVE = yes
EXTOUT = .ext
PREP = miniruby
CROSS_COMPILING = no
TEST_RUNNABLE = yes
rubylibprefix = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby
setup = Setup
ENCSTATIC = 
EXTSTATIC = 
STRIP = strip -S -x
SOEXT = so
TRY_LINK = 
PRELOADENV = LD_PRELOAD
LIBPATHENV = LD_LIBRARY_PATH
RPATHFLAG =  -Wl,-rpath,%1$-s
LIBPATHFLAG =  -L%1$-s
LINK_SO = 
ASMEXT = S
LIBEXT = a
DLEXT2 = 
DLEXT = so
LDSHAREDXX = g++ -shared
LDSHARED = gcc -shared
CCDLFLAGS = -fPIC
STATIC = 
ARCH_FLAG = 
DLDFLAGS = -Wl,--compress-debug-sections=zlib
ALLOCA = 
dsymutil = 
codesign = 
POSTLINK = :
WERRORFLAG = -Werror
CHDIR = cd -P
RMALL = rm -fr
RMDIRS = rmdir --ignore-fail-on-non-empty -p
RMDIR = rmdir --ignore-fail-on-non-empty
CP = cp
RM = rm -f
PKG_CONFIG = pkg-config
DOXYGEN = 
DOT = 
MAKEDIRS = /bin/mkdir -p
MKDIR_P = /bin/mkdir -p
INSTALL_DATA = /usr/bin/install -m 644
INSTALL_SCRIPT = /usr/bin/install
INSTALL_PROGRAM = /usr/bin/install
SET_MAKE = 
LN_S = ln -s
NM = nm
DLLWRAP = 
WINDRES = 
OBJCOPY = :
OBJDUMP = objdump
ASFLAGS = 
AS = as
ARFLAGS = rcD 
AR = ar
RANLIB = ranlib
try_header = 
CC_VERSION_MESSAGE = gcc (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
CC_VERSION = gcc --version
CSRCFLAG = 
COUTFLAG = -o 
OUTFLAG = -o 
CPPOUTFILE = -o conftest.i
GNU_LD = yes
LD = ld
GCC = yes
EGREP = /bin/grep -E
GREP = /bin/grep
CPP = gcc -E
CXXFLAGS = -O3 -ggdb3 -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wno-tautological-compare -Wno-parentheses-equality -Wno-constant-logical-operand -Wno-self-assign -Wunused-variable -Wimplicit-int -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration -Wdeprecated-declarations -Wno-packed-bitfield-compat -Wsuggest-attribute=noreturn -Wsuggest-attribute=format -Wno-maybe-uninitialized
CXX = g++
OBJEXT = o
CPPFLAGS =   
LDFLAGS = -L. -fstack-protector -rdynamic -Wl,-export-dynamic
CFLAGS = -O3 -ggdb3 -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wno-tautological-compare -Wno-parentheses-equality -Wno-constant-logical-operand -Wno-self-assign -Wunused-variable -Wimplicit-int -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration -Wdeprecated-declarations -Wno-packed-bitfield-compat -Wsuggest-attribute=noreturn -Wsuggest-attribute=format -Wno-maybe-uninitialized  -fPIC
CC = gcc
target_os = linux
target_vendor = pc
target_cpu = x86_64
target = x86_64-pc-linux-gnu
host_os = linux-gnu
host_vendor = pc
host_cpu = x86_64
host = x86_64-pc-linux-gnu
RUBY_VERSION_NAME = ruby-2.5.0
RUBYW_BASE_NAME = rubyw
RUBY_BASE_NAME = ruby
build_os = linux-gnu
build_vendor = pc
build_cpu = x86_64
build = x86_64-pc-linux-gnu
RUBY_API_VERSION = 2.5
RUBY_PROGRAM_VERSION = 2.5.0
HAVE_GIT = yes
GIT = git
cxxflags = -O3 -ggdb3 -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wno-tautological-compare -Wno-parentheses-equality -Wno-constant-logical-operand -Wno-self-assign -Wunused-variable -Wimplicit-int -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration -Wdeprecated-declarations -Wno-packed-bitfield-compat -Wsuggest-attribute=noreturn -Wsuggest-attribute=format -Wno-maybe-uninitialized
cppflags = 
cflags = -O3 -ggdb3 -Wall -Wextra -Wno-unused-parameter -Wno-parentheses -Wno-long-long -Wno-missing-field-initializers -Wno-tautological-compare -Wno-parentheses-equality -Wno-constant-logical-operand -Wno-self-assign -Wunused-variable -Wimplicit-int -Wpointer-arith -Wwrite-strings -Wdeclaration-after-statement -Wimplicit-function-declaration -Wdeprecated-declarations -Wno-packed-bitfield-compat -Wsuggest-attribute=noreturn -Wsuggest-attribute=format -Wno-maybe-uninitialized
target_alias = 
host_alias = 
build_alias = 
LIBS = -lpthread -lgmp -ldl -lcrypt -lm 
ECHO_T = 
ECHO_N = -n
ECHO_C = 
DEFS = 
mandir = /usr/local/rvm/rubies/ruby-2.5.0/share/man
localedir = /usr/local/rvm/rubies/ruby-2.5.0/share/locale
libdir = /usr/local/rvm/rubies/ruby-2.5.0/lib
psdir = /usr/local/rvm/rubies/ruby-2.5.0/share/doc/ruby
pdfdir = /usr/local/rvm/rubies/ruby-2.5.0/share/doc/ruby
dvidir = /usr/local/rvm/rubies/ruby-2.5.0/share/doc/ruby
htmldir = /usr/local/rvm/rubies/ruby-2.5.0/share/doc/ruby
infodir = /usr/local/rvm/rubies/ruby-2.5.0/share/info
docdir = /usr/local/rvm/rubies/ruby-2.5.0/share/doc/ruby
oldincludedir = /usr/include
includedir = /usr/local/rvm/rubies/ruby-2.5.0/include
localstatedir = /usr/local/rvm/rubies/ruby-2.5.0/var
sharedstatedir = /usr/local/rvm/rubies/ruby-2.5.0/com
sysconfdir = /etc
datadir = /usr/local/rvm/rubies/ruby-2.5.0/share
datarootdir = /usr/local/rvm/rubies/ruby-2.5.0/share
libexecdir = /usr/local/rvm/rubies/ruby-2.5.0/libexec
sbindir = /usr/local/rvm/rubies/ruby-2.5.0/sbin
bindir = /usr/local/rvm/rubies/ruby-2.5.0/bin
exec_prefix = /usr/local/rvm/rubies/ruby-2.5.0
PACKAGE_URL = 
PACKAGE_BUGREPORT = 
PACKAGE_STRING = 
PACKAGE_VERSION = 
PACKAGE_TARNAME = 
PACKAGE_NAME = 
PATH_SEPARATOR = :
SHELL = /bin/bash
UNICODE_VERSION = 10.0.0
archdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux
topdir = /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux
Activated Ruby gems
did_you_mean => 1.2.0
fileutils => 1.0.2
bundler => 1.16.1
Ruby load path ($LOAD_PATH)
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby/2.5.0
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby/2.5.0/x86_64-linux
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/site_ruby
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby/2.5.0
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby/2.5.0/x86_64-linux
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/vendor_ruby
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux
Ruby loaded libraries ($LOADED_FEATURES)
enumerator.so
thread.rb
rational.so
complex.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/enc/encdb.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/enc/trans/transdb.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/rbconfig.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/compatibility.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/defaults.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/deprecate.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/errors.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/version.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/requirement.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/platform.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/basic_specification.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/stub_specification.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/util/list.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/stringio.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/specification.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/exceptions.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/dependency.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_gem.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/monitor.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/path_support.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/version.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/core_ext/name_error.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/levenshtein.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/jaro_winkler.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/delegate.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/name_error_checkers/class_name_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/name_error_checkers/variable_name_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/name_error_checkers.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/method_name_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/key_error_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/spell_checkers/null_checker.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean/formatters/plain_formatter.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/did_you_mean-1.2.0/lib/did_you_mean.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/constants.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/etc.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/fileutils.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/tmpdir.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils/tmpio.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/platform_info.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/platform_info/operating_system.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/bundler_version_finder.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/util.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/platform_info/ruby.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/platform_info/binary_compatibility.rb
/home/app/.passenger/native_support/5.2.1/ruby-2.5.0-x86_64-linux/passenger_native_support.so
/usr/lib/ruby/vendor_ruby/phusion_passenger/native_support.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/socket.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/io/wait.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/socket.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/pathname.so
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/pathname.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/ruby_core_enhancements.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/ruby_core_io_enhancements.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/base64.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/preloader_shared_helpers.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/public_api.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/debug_logging.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/shellwords.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils/shellwords.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/x86_64-linux/fcntl.so
/usr/lib/ruby/vendor_ruby/phusion_passenger/message_channel.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/message_client.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils/native_support_utils.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils/unseekable_socket.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/request_handler/thread_handler.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/request_handler.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/utils/tee_input.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/rack/thread_handler_extension.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/vendor/union_station_hooks_core/lib/union_station_hooks_core/version.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/vendor/union_station_hooks_core/lib/union_station_hooks_core.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/vendor/union_station_hooks_rails/lib/union_station_hooks_rails/version.rb
/usr/lib/ruby/vendor_ruby/phusion_passenger/vendor/union_station_hooks_rails/lib/union_station_hooks_rails.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/version.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/compatibility_guard.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/constants.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/user_interaction.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/config_file.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/rubygems_integration.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/current_ruby.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/shared_helpers.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/ext/builder.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/fileutils/lib/fileutils.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendored_fileutils.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/errors.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/environment_preserver.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/plugin/api.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/plugin.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/git.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/installed.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/specific_file.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/local.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/lock.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source/vendor.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/source.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/gem_helpers.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/match_platform.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/rubygems_ext.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/build_metadata.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/rfc2396_parser.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/rfc3986_parser.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/common.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/generic.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/ftp.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/http.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/https.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/ldap.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/ldaps.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri/mailto.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/uri.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/settings.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/feature_flag.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source/path.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source/git.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source/rubygems.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/lockfile_parser.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/set.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/dependency.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/ruby_dsl.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/dsl.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source_list.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source/metadata.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/lazy_specification.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/index.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/tsort.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/forwardable/impl.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/forwardable.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/spec_set.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/compatibility.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/gem_metadata.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/delegates/specification_provider.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/errors.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/action.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/add_edge_no_circular.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/add_vertex.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/delete_edge.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/detach_vertex_named.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/set_payload.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/tag.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/log.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph/vertex.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/dependency_graph.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/state.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/modules/specification_provider.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/delegates/resolution_state.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/resolution.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/resolver.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo/modules/ui.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendor/molinillo/lib/molinillo.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/vendored_molinillo.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/resolver/spec_group.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/resolver.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/gem_version_promoter.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/source/gemspec.rb
/usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/runtime.rb
```