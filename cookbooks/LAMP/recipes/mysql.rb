
mysqlpass = data_bag_item('mysql', 'mysql')

mysql_service "mysqldefault" do
  version '5.7'
  initial_root_password mysqlpass["root_password"]
  action [:create, :start]
end


