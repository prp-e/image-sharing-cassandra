require 'sinatra'
require 'cassandra' 

# This is the main app file, everything usable will be here. 

cluster = Cassandra.cluster

#This is just to make sure cluster is connected and works fine : 

print "Starting application."
sleep 0.25
print "."
sleep 0.25
print "."
sleep 0.25
print "."
sleep 0.25 
puts "."
sleep 1
cluster.each_host do |host| 
 puts "Host: #{host.ip}"
 sleep 0.5
 puts "ID: #{host.id}" 
 sleep 0.5 
 puts "Datacenter: #{host.datacenter}" 
 sleep 0.5 
 puts "Rack: #{host.rack}" 
 sleep 0.5
 puts ":----------------------------:" 
 sleep 0.5 
 puts "The cluster is OK." 
end 

sleep 2

enable :sessions 


