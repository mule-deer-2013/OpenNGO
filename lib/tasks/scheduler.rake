desc "This task is called by the Heroku scheduler add-on"
task :scheduled_reindexing => :environment do
  puts "Scheduled Reindexing..."
  %x[rake sunspot:reindex]
end
