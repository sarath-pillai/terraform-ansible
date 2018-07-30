output "alb_front_dns" {
 value = "${aws_alb.alb_front.dns_name}"
}
output "alb_front_arn" {
 value = "${aws_alb.alb_front.arn}"
}

