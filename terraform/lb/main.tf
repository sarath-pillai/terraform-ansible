resource "aws_alb" "alb_front" {
	name		=	"${var.alb_name}"
	internal	=	false
	security_groups	=	["${var.lb_sg_id}"]
	subnets		=	["${var.lb_pub_sub1}", "${var.lb_pub_sub2}"]
	enable_deletion_protection	=	false
}
