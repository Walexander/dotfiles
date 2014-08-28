function get_helix_boxes() {
	aws ec2 describe-instances\
		--filter Name=tag:Name,Values=helix3 \
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
function check_update {
	url=$1
	minutes=$2
	while true; do
		last_modified=$(curl -v -o /dev/null $url 2>&1 | egrep 'Last-Modified')
		last_modified=$(echo $last_modified | gsed -r 's/[^:]+://')
		last_modified_epoch=$(gdate --date "$last_modified" +%s)

		delta=$(expr $(date +%s) - $last_modified_epoch)
		delta_minutes=$(expr $delta / 60)
		echo url updated $delta_minutes minutes ago

		if test $delta_minutes -lt $minutes; then
			echo url is up-to-date within $minutes minutes
			break;
		fi
		sleep 10
	done

}

function get_dfp_response() {
	sed 's/callbackProxy/console.log(JSON.stringify/'  | sed 's/);$/));/' | node | jq -r '.'
}
