#!/bin/bash

echo Which website would you like to scrape?

read varname

echo I shall now scrape $varname

lynx -accept_all_cookies -dump $varname | awk '/linkedin/{print $2}' >> $varname.socialmedialinks.txt && lynx -accept_all_cookies -dump $varname | awk '/twitter/{print $2}' >> $varname.socialmedialinks.txt && lynx -accept_all_cookies -dump $varname | awk '/youtube/{print $2}' >> $varname.socialmedialinks.txt lynx -accept_all_cookies -dump $varname | awk '/mastodon/{print $2}' >> $varname.socialmedialinks.txt
