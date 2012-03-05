name "webserver"
description "This is the web server role"
run_list(
  "recipe[apache2]"
)
override_attributes "apache" => { "listen_ports" => [ "80", "8080", "443" ] }