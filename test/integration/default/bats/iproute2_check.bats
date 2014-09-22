#!/usr/bin/env bats

@test "Check iproute2 is installed" {
  result="$(dpkg -l | grep iproute2 | wc -l)"
  [ "$result" -eq 1 ]
}

@test "Check starting iproute2" {
  run sudo service iproute2 start
  [ "$status" -eq 0 ]
}

@test "Check stoping iproute2" {
  run sudo service iproute2 stop
  [ "$status" -eq 0 ]
}

