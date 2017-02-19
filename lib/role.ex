defmodule RoleQemuGuest do
	def role(_tags \\ []) do
		%{
			desired_packages: [
				# Necessary for the host to be able to shut down the guest (without e.g. ssh)
				"qemu-guest-agent",
			],
		}
	end
end
