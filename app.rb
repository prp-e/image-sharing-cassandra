require 'sinatra'
require 'cassandra' 

# This is the main app file, everything usable will be here. 

cluster = Cassandra.cluster

#This is just to make sure cluster is connected and works fine : 
cluster.each_host do |host| 
 puts "Host: #{host.ip}"
 puts "ID: #{host.id}" 
 puts "Datacenter: #{host.datacenter}" 
 puts "Rack: #{host.rack}" 
 puts ":----------------------------:" 
 puts "The cluster is OK." 
end 


