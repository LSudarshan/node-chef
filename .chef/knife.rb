current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sudarshan"
client_key               "#{current_dir}/sudarshan.pem"
validation_client_name   "sudarshan-inc-validator"
validation_key           "#{current_dir}/sudarshan-inc-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/sudarshan-inc"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
