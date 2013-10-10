require 'rbvmomi'

$snap_num = 0

def delete(name, number)
  name = name.first if name.kind_of?(Array)
  number =~ /\A\d+\Z/ or die "#{number} is not an integer."
  number = number.to_i
  connection = connect
  data_center = connection.serviceInstance.find_datacenter
  vm = recursive_find_vm(data_center.vmFolder, name, true).first or die("No vm found with name matching <#{name}>.")
  top_level_snapshots = vm.snapshot.rootSnapshotList or die("The given vm has no snapshots.")
  snapshot_to_delete = find_snapshot(top_level_snapshots, number) or die "No snapshot found with number <#{number}>."

  if yes_or_no_prompt("Are you sure you want to delete snapshot <#{snapshot_to_delete.name}>? ", false)
    snapshot_to_delete.snapshot.RemoveSnapshot_Task(:removeChildren => false).wait_for_completion
    puts "Snapshot deleted."
  end
end
