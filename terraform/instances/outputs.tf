output "mongo_instance_id" {
 value = "${aws_instance.mongodb.id}"
}
output "private_ip" {
 value = "${aws_instance.mongodb.private_ip}"
}
