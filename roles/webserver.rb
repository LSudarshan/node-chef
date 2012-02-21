name "webserver"
description "This is the web server role"
run_list(
  "recipe[apache2]"
)