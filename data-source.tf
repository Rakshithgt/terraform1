data "aws_vpc" "data-source" {
  id = "vpc-06f55d2a23d5130da"
}

resource "aws_internet_gateway" "data-source-igw" {
  vpc_id = data.aws_vpc.data-source.id

  tags = {
    Name = "data-source-igw"
  }
}
