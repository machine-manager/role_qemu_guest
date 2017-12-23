defmodule RoleQemuGuest do
	def role(_tags \\ []) do
		%{
			# We could install qemu-guest-agent here, but apparently we do not need it.
			# `virsh shutdown VMNAME` can shut down a guest just fine as long as 
			# HandlePowerKey=poweroff is in /etc/systemd/logind.conf
		}
	end
end
