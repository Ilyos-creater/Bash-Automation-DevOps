#!/bin/bash

declare -r PASSWDFILE=/etc/passwd

die() {
	local nachricht="$1"
	local exitCode="$2"
	echo "$nachricht"
	[ "$exitCode" == "" ] && exit 1 || exit $exitCode
}

existiert_user() {
	local u=$1
	grep -qEw "^$u" $PASSWDFILE && die "Username $u existiert bereits" 1
}
ist_root_user() {
	
	[ "$(id -u)" != "0" ] && die "Sie sind nicht der Root user" 2
}
ist_root_user
existiert_user $1
