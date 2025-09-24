group "default" {
  targets = ["ros2base"]
}

target "ros2base" {
  context = "base_images/ros_base"
  dockerfile = "Dockerfile"
  tags = ["ros_base:2509"]
  platforms = ["linux/arm64", "linux/amd64"]
}
