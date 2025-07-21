#!/bin/bash

# 현재 스페이스의 레이아웃을 확인
current=$(yabai -m query --spaces --space | jq -r .type)

# 레이아웃 순환
case $current in
    "bsp")
        yabai -m space --layout stack
        ;;
    "stack")
        yabai -m space --layout float
        ;;
    "float")
        yabai -m space --layout bsp
        ;;
esac
