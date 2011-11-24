execute "Create postgres 'app' role" do
  command "createuser app --no-superuser --createdb --no-createrole 2>/dev/null"
  returns [0, 1]
  user "postgres"
end
