name "webserver"
description "This is the web server role"
run_list(
  "recipe[apache2]"
)
default_attributes "apache2" => { "listen_ports" => [ "80", "8080", "443" ] }