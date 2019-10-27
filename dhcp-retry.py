import subprocess
import time

commands = [
	"sudo dhclient  -v  -r enp6s0f1",
	"sudo dhclient  -v   enp6s0f1"
]

search_term = "172.17"

i = 0
while True:
	time.sleep(1)
	output = subprocess.getoutput(commands[i])
	print(output)

	if i == 1 and search_term in output:
		print("...SUCCESS...")
		break

	i = (i+1) % len(commands)
