#!/usr/bin/env bats

@test "greetings prints hostname" {
    run bash linux/greetings.sh
    host=$(hostname)
    [[ "$output" == Hello,* ]] && [[ "$output" == *"$host." ]]
}
