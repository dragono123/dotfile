#!/bin/sh
rofi -show run -modi run -location 1 -width 100 \
		 -lines 1 -line-margin 0 -line-padding 1 \
		 -separator-style none -font "mono 10" -columns 9 -bw 0 \
		 -hide-scrollbar \
		 -color-window "#111111, #111111, #b1b4b3" \
		 -color-normal "#111111, #b1b4b3, #111111, #990000, #b1b4b3" \
		 -color-active "#111111, #b1b4b3, #111111, #007763, #b1b4b3" \
		 -color-urgent "#111111, #b1b4b3, #111111, #77003d, #b1b4b3" \
		 -kb-row-select "Tab" -kb-row-tab ""
