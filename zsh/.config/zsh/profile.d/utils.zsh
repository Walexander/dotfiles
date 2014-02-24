function get_helix_boxes() {
	aws ec2 describe-instances\
		--filter Name=tag:Name,Values=\*helix\*\
		"Name=instance-state-code,Values=16" \
		| jq -r '.Reservations[].Instances[] | .PublicDnsName'
}
function get_url {
	url=$1
	echo $url;
	while true; do
		curl -v -o /dev/null $url 2>&1 | egrep 'Date|Last';
		date;
		sleep 5;
	done
}

