## Support Engineer Take-home Assessment

Important: While working on this assessment, you can consult external sources, but you must cite them.
We are looking for answers in your own words.

1. Write a Ruby or Bash script that will print usernames of all users on a Linux system together with
   their home directories. Here's some example output:

gitlab:/home/gitlab
nobody:/nonexistent
.
.
Each line is a concatenation of a username, the colon character (:), and the home directory path
for that username. Your script should output such a line for each user on the system.
Next, write a second script that:
● Takes the output of your first script and converts it to an MD5 hash.
● On its first run stores the MD5 checksum into the /var/log/current_users file.
● On subsequent runs, if the MD5 checksum changes, the script should add a line in the /var/
log/user_changes file with the message, DATE TIME changes occurred, replacing DATE
and TIME with appropriate values, and replaces the old MD5 checksum in /var/log/
current_users file with the new MD5 checksum.

Finally, write a crontab entry that runs these scripts hourly.
Provide both scripts and the crontab entry for the answer to be complete.

### Solution Index

[First Script](/user.sh)

- Each line is a concatenation of a username, the colon character : and the home directory path for that username. Your script should output such a line for each user on the system.
  [Output of First Script](/log.txt)

[Second Script](/hash.sh)

- Takes the output of your first script and converts it to an MD5 hash.
- On its first run stores the MD5 checksum into the /var/log/current_users file.
  [log: current_users](/var/log/current_users.md5)
- On subsequent runs, if the MD5 checksum changes, the script should add a line in the /var/log/user_changes file with the message, DATE TIME changes occurred, replacing DATE and TIME with appropriate values, and replaces the old MD5 checksum in /var/log/current_users file with the new MD5 checksum.
  [log: user_changes](/var/log/current_users.md5)
  [log: current_users](/var/log/current_users.md5)

[Crontab Entry](/crontab_entry.md)

- Markdown Article with detailed flow to create hourly crontab entry for both scripts
