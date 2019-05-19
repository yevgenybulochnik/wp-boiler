

resource "aws_key_pair" "wp" {
    key_name = "wp-key"
    public_key = "${file("ssh/wp-key.pub")}"
}
