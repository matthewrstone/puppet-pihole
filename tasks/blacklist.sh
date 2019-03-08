#!/bin/sh
if [ $PT_delete = 'true' ]
then
    pihole --regex $PT_regex --delmode
else
    pihole --regex $PT_regex
fi