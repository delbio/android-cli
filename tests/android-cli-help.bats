#!/usr/bin/env bats

load test_helper

@test "without args, show help for root android-cli command" {
  run android-cli-help

  assert_success

  assert_line "Usage: android-cli <command> [<args>]"
}

@test "shows help for a specific command" {
  cat > "${ANDROID_CLI_TMP_BIN}/android-cli-hello" <<SH
#!shebang
# Usage: android-cli hello <world>
# Summary: Says "hello" to you
# This command is useful for saying hello.
echo hello
SH

  run android-cli-help hello

  assert_success
  assert_output <<SH
Usage: android-cli hello <world>

This command is useful for saying hello.
SH
}
