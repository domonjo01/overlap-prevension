require "date"

### Insert before
x = File.exist?("/tmp/lockfile")
d = DateTime.now

if x == true then
  log = File.open("/root/Tools/log/redmine_ticket.log","a")
  log.print d
  log.puts " The lockfile exists. So this script finish."
  log.close
  exit!
end

File.open("/tmp/lockfile","w").close()

### Insert last
File.unlink("/tmp/lockfile")
