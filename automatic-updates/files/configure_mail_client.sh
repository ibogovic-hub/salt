#!/bin/bash

# Install mutt (if not already installed)
apt-get install -y mutt

# Configure mutt
cat << EOF > /etc/Muttrc
# Set email sending options
set from = "bogovic.ivan7@gmail.com"
set realname = "Patch User"
set smtp_url = "smtps://smtp.gmail.com:465/"
set smtp_pass = "brb"

# Configure email format
set header_cache = "~/.mutt/cache/headers"
set message_cachedir = "~/.mutt/cache/bodies"
set certificate_file = "~/.mutt/certificates"
set move = no
set include
set edit_headers

# Set default mailbox
set mbox = "+INBOX"

# Configure Gmail-specific settings
set imap_user = "bogovic.ivan7@gmail.com"
set imap_pass = "brb"
set imap_keepalive = 900
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"

# Specify the trash and sent folders
set trash = "+[Gmail]/Trash"
set postponed = "+[Gmail]/Drafts"
set record = "+[Gmail]/Sent Mail"

# Avoid saving duplicates in Sent folder
set copy = no
EOF
