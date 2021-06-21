#!/usr/bin/env bats

@test "dry run: successful" {
  run helm install --dry-run --debug awx .
  echo -e "$output" | tee /dev/stderr

  [ "$status" -eq 0 ]
}
