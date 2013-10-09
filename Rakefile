RAKE_ROOT = File.expand_path(File.dirname(__FILE__))
task :default => [:list_vm]

desc "list vms for current vSphere host"
task :list_vms do
  puts `#{RAKE_ROOT}/bin/vsphere_helper list_vms`
end

desc "find a particular vm on current vSphere host"
task :find_vm, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper find_vm "#{vm_name}"`
end

desc "get the power status of a particular vm"
task :status, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper status "#{vm_name}"`
end

desc "see the snapshots of a particular vm"
task :list_snapshots, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper list_snapshots "#{vm_name}"`
end

desc "get the ip address of a particular vm"
task :get_ip, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper get_ip "#{vm_name}"`
end

desc "power on a particular vm"
task :power_on, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper power_on "#{vm_name}"`
end

desc "power off a particular vm"
task :power_off, [:vm_name] do |task, args|
  vm_name = args[:vm_name].to_s
  puts `#{RAKE_ROOT}/bin/vsphere_helper power_off "#{vm_name}"`
end
