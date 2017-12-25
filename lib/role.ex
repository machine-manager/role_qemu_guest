defmodule RoleQemuGuest do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				# We could install qemu-guest-agent here, but apparently we do not need it.
				# `virsh shutdown VMNAME` can shut down a guest just fine as long as 
				# HandlePowerKey=poweroff is in /etc/systemd/logind.conf
			],
			boot_time_kernel_modules: [
				# Needed for VirtFS mounting to work at boot time; fixes:
				# 9pnet: Could not find request transport: virtio
				"9pnet_virtio"
			],
		}
	end
end
