#!/usr/bin/bash
killall conky
conky -bc ~/.config/conky/systemstats/systemstat.conky &!
conky -bc ~/.config/conky/informant/inf-cyan.conkyrc &!
