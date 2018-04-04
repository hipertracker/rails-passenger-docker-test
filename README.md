```
➜  tescior git:(master) docker-compose up
Recreating teacior_web ... done
Attaching to tescior_web
web_1  | *** Running /etc/my_init.d/00_regen_ssh_host_keys.sh...
web_1  | *** Running /etc/my_init.d/30_presetup_nginx.sh...
web_1  | *** Running /etc/rc.local...
web_1  | *** Booting runit daemon...
web_1  | *** Runit started as PID 10
web_1  | ok: run: /etc/service/nginx-log-forwarder: (pid 25) 0s
web_1  | [ N 2018-04-04 21:46:14.8804 29/T1 age/Wat/WatchdogMain.cpp:1258 ]: Starting Passenger watchdog...
web_1  | [ N 2018-04-04 21:46:14.8972 32/T1 age/Cor/CoreMain.cpp:1242 ]: Starting Passenger core...
web_1  | [ N 2018-04-04 21:46:14.8973 32/T1 age/Cor/CoreMain.cpp:252 ]: Passenger core running in multi-application mode.
web_1  | [ N 2018-04-04 21:46:14.9051 32/T1 age/Cor/CoreMain.cpp:977 ]: Passenger core online, PID 32
web_1  | [ N 2018-04-04 21:46:17.1660 32/T5 age/Cor/SecurityUpdateChecker.h:517 ]: Security update check: no update found (next check in 24 hours)
```

```
$ open localhost
```

```
web_1  | App 59 stdout:
web_1  | App 59 stdout: Using /usr/local/rvm/gems/ruby-2.5.0
web_1  | App 59 stdout:
web_1  | [ E 2018-04-04 21:46:57.1136 32/Ti age/Cor/App/Implementation.cpp:304 ]: Could not spawn process for application /home/app/webapp: An error occurred while starting up the preloader.
web_1  |   Error ID: 02a10dad
web_1  |   Error details saved to: /tmp/passenger-error-Oiz2QE.html
web_1  |   Message from application: cannot load such file -- bundler/dep_proxy (LoadError)
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:135:in `require'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:135:in `rescue in require'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:39:in `require'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:888:in `block (2 levels) in expand_dependencies'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:887:in `each'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:887:in `block in expand_dependencies'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:874:in `each'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:874:in `expand_dependencies'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:806:in `converge_locked_specs'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:247:in `resolve'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:170:in `specs'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:237:in `specs_for'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/definition.rb:226:in `requested_specs'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/runtime.rb:108:in `block in definition_method'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/runtime.rb:20:in `setup'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler.rb:107:in `setup'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/gems/2.5.0/gems/bundler-1.16.1/lib/bundler/setup.rb:20:in `<top (required)>'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
web_1  |   /usr/local/rvm/rubies/ruby-2.5.0/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
web_1  |   /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:456:in `activate_gem'
web_1  |   /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:323:in `block in run_load_path_setup_code'
web_1  |   /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:461:in `running_bundler'
web_1  |   /usr/lib/ruby/vendor_ruby/phusion_passenger/loader_shared_helpers.rb:322:in `run_load_path_setup_code'
web_1  |   /usr/share/passenger/helper-scripts/rack-preloader.rb:100:in `preload_app'
web_1  |   /usr/share/passenger/helper-scripts/rack-preloader.rb:156:in `<module:App>'
web_1  |   /usr/share/passenger/helper-scripts/rack-preloader.rb:30:in `<module:PhusionPassenger>'
web_1  |   /usr/share/passenger/helper-scripts/rack-preloader.rb:29:in `<main>'
web_1  |
web_1  |
web_1  | [ E 2018-04-04 21:46:57.1212 32/T7 age/Cor/Con/CheckoutSession.cpp:285 ]: [Client 1-1] Cannot checkout session because a spawning error occurred. The identifier of the error is 02a10dad. Please see earlier logs for details about the error.
```
