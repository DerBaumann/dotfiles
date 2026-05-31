#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
# DEFAULT='#00897bE6'
DEFAULT='#94e2d5'
# TEXT='#00897bE6'
TEXT='#94e2d5'
WRONG='#f38ba8'
VERIFYING='#74c7ec'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
--color=#00000044 \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--screen 1                   \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %d.%m.%Y"    \
# --keylayout 1                \
