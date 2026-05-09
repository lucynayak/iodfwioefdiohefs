#!/system/bin/sh
# Attempt to make Scudo allocator more permissive for old native code
export SCUDO_OPTIONS="DeallocationTypeMismatch=false:DeleteSizeMismatch=false:quarantine_size_kb=0:thread_local_quarantine_size_kb=0:release_to_os_interval_ms=-1"
exec "$@"
