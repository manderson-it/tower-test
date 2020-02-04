# r7_postpatch_services

1. Write current service facts to disk on remote system (filtered for running services only)
1. Write current service facts to disk on remote system (filtered for enabled services only)
1. Archive the two resulting files with -ddMMyyyyTHHmmss suffix to archive folder on remote system
1. Create diff to prepatch files
1. Start/Enable services delta
