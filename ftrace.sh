# !/bin/bash

debugfs=/sys/kernel/debug
adb shell "echo nop > $debugfs/tracing/current_tracer"
adb shell "echo 0 > $debugfs/tracing/tracing_on"
adb shell "echo $$ > $debugfs/tracing/set_ftrace_pid"
adb shell "echo function_graph > $debugfs/tracing/current_tracer" 
adb shell "echo mmc_blk_issue_rq > $debugfs/tracing/set_graph_function"
adb shell "echo 1 > $debugfs/tracing/tracing_on"
exec "$@"
