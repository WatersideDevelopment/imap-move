#!/bin/bash -x

s_user="old.name@example.net"
s_pass="some-secret-word"
s_host="imap.gmail.com:993"

t_user="old.name@example.com"
t_pass="some-secret-word"
t_host="imap.gmail.com:993"

s="imap-ssl://${s_user}:${s_pass}@${s_host}/"
t="imap-ssl://${t_user}:${t_pass}@${t_host}/"

# Show what would happen between Move Mailbox to Mailbox
php ./imap-move.php --fake --source $s --target $t

# That's the end of the same demo -- now some examples that can kill.
#
# The more you read, the more dangerous they get...
#
# Uncomment as you feel brave enough / at your own risk!

# Or Copy Source
#php ./imap-move.php --copy --source $s --target $d


# Move Mailbox to Mailbox
#php ./imap-move.php --wipe --source $s --target $t

# Move Mailbox to Subfolder
#php ./imap-move.php --wipe --source $s --target "$t/some-folder"

