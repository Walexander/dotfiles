function ec2_get_id_by_instance_name(){
	local instance_name="$1"
	aws ec2 describe-instances --filters \
		"Name=tag:Name,Values=$instance_name" "Name=instance-state-code,Values=16" |\
			jq -r '.Reservations[].Instances[].InstanceId'
}
function ec2_get_dns_by_instance_name(){
	local instance_name="$1"
	aws ec2 describe-instances --filters \
		"Name=tag:Name,Values=$instance_name" "Name=instance-state-code,Values=16" |\
			jq -r '.Reservations[].Instances[].PublicDnsName'
}

function ec2_get_dns_by_instance_id(){
	local id=$1
	aws ec2 describe-instances --instance-ids $id |\
		jq -r '.Reservations[0].Instances[0].PublicDnsName'
}
function ec2_get_ami_id_by_name(){
	local ami_name=$1
	aws ec2 describe-images --filters Name=name,Values=$ami_name | jq -r '.Images[0].ImageId'

}
