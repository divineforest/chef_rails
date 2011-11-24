execute "uninstall old bundlers" do
  command "gem uninstall -a bundler"
  only_if "gem list bundler | grep ,"
end

gem_package "bundler"

execute "Symlink bundler to /usr/local/bin" do
  command "ln -fs /opt/ruby-enterprise-1.8.7-2011.03/bin/bundle /usr/local/bin"
end
