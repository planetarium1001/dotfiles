# Keybindings

## Basic Keybindings

### Common Settings

|Keybinding|Flag|Detail|
|:--|:--:|:--:|
|Super q|-|Close Focused Window|
|Super Shift q|-|Kill Focused Window|
|Super Ctrl Shift Alt q|-|Exit Hyprland|

### Windows Types

|Keybinding|Flag|Detail|
|:--|:--:|:--:|
|Super u|-|Maximize Focused Window|
|Super Shift u|-|Fullscreen|
|Super i|-|Split Mode|
|Super o|-|Floating Mode|
|Super p|-|pseudo|
|Super b|-|Switch between Workspace and Scratchpad|
|Super n|-|Move to Scratchpad|
|Super m|-|Move out Scratchpad|
|Alt b|-|Fast Move Mode|
|Alt b -- b|e|Switch between Workspace and Scratchpad|
|Alt b -- n|e|Move Window from Workspace to Scratchpad|
|Alt b -- m|e|Move Window from Scratchpad to Workspace|
|Alt b -- Esc|-|Return to Global|

### Windows Settings

|Keybinding|Flag|Detail|
|:--|:--:|:--:|
|Super h|e|Focus to Left Window|
|Super l|e|Focus to Right Window|
|Super k|e|Focus to Up Window|
|Super j|e|Focus to Down Window|
|Super Shift h|e|Move Focused Window to Left|
|Super Shift l|e|Move Focused Window to Right|
|Super Shift k|e|Move Focused Window to Up|
|Super Shift j|e|Move Focused Window to Down|
|Super Ctrl h|e|Resize Focused Window Orienting Left|
|Super Ctrl l|e|Resize Focused Window Orienting Right|
|Super Ctrl k|e|Resize Focused Window Orienting Up|
|Super Ctrl j|e|Resize Focused Window Orienting Down|
|Alt u|-|Fast Resize Mode|
|Alt u -- h|e|Resize Focused Window Orienting Left|
|Alt u -- l|e|Resize Focused Window Orienting Right|
|Alt u -- k|e|Resize Focused Window Orienting Up|
|Alt u -- j|e|Resize Focused Window Orienting Down|
|Alt u -- Esc|-|Return to Global|
|Super Shift o|-|Center Focused Window(Floating Only)|

### Workspace Settings

|Keybinding|Flag|Detail|
|:--|:--:|:--:|
|Super 1|-|Switch to Workspace 1|
|Super 2|-|Switch to Workspace 2|
|Super 3|-|Switch to Workspace 3|
|Super 4|-|Switch to Workspace 4|
|Super 5|-|Switch to Workspace 5|
|Super 6|-|Switch to Workspace 6|
|Super 7|-|Switch to Workspace 7|
|Super 8|-|Switch to Workspace 8|
|Super 9|-|Switch to Workspace 9|
|Super 10|-|Switch to Workspace 10|
|Super Shift 1|-|Move Focused Window to Workspace 1|
|Super Shift 2|-|Move Focused Window to Workspace 2|
|Super Shift 3|-|Move Focused Window to Workspace 3|
|Super Shift 4|-|Move Focused Window to Workspace 4|
|Super Shift 5|-|Move Focused Window to Workspace 5|
|Super Shift 6|-|Move Focused Window to Workspace 6|
|Super Shift 7|-|Move Focused Window to Workspace 7|
|Super Shift 8|-|Move Focused Window to Workspace 8|
|Super Shift 9|-|Move Focused Window to Workspace 9|
|Super Shift 10|-|Move Focused Window to Workspace 10|

## Applications

|Keybinding|Flag|Detail|
|:--|:--:|:--:|
|Super Up|e|Turn Volume Up|
|Super Down|e|Turn Volume Down|
|Super Right|e|Turn Brightness Up|
|Super Left|e|Turn Brightness Down|
|Super Enter|-|Execute `kitty`|
|Super Esc|-|Execute `~/.scripts/settings.sh`|
|Super r|-|Execute `wofi`|
|Super w|-|Execute `firefox`|
|Super s|-|Screenshot(Region) using `hyprshot` and Copy to Clipboard|
|Alt s|-|Fast Screenshot Mode|
|Alt s -- h|-|Screenshot(Output) using `hyprshot` and Only Copy to Clipboard| 
|Alt s -- j|-|Screenshot(Window) using `hyprshot` and Only Copy to Clipboard| 
|Alt s -- k|-|Screenshot(Region) using `hyprshot` and Only Copy to Clipboard| 
|Alt s -- l|-|Screenshot(Active) using `hyprshot` and Only Copy to Clipboard| 
|Alt s -- Shift h|-|Screenshot(Output) using `hyprshot` and Save to Disk and Copy to Clipboard| 
|Alt s -- Shift j|-|Screenshot(Window) using `hyprshot` and Save to Disk and Copy to Clipboard| 
|Alt s -- Shift k|-|Screenshot(Region) using `hyprshot` and Save to Disk and Copy to Clipboard| 
|Alt s -- Shift l|-|Screenshot(Active) using `hyprshot` and Save to Disk and Copy to Clipboard| 
|Alt s -- Esc|-|Return to Global|

***Notes*** *: Scratchpad is the special workspace.*

## Ref

```bind[flags] = ...```
|Flag|Details|
|:--:|:--:|
l|locked, will also work when an input inhibitor (e.g. a lockscreen) is active.
r|release, will trigger on release of a key.
o|longPress, will trigger on long press of a key.
e|repeat, will repeat when held.
n|non-consuming, key/mouse events will be passed to the active window in addition to triggering the dispatcher.
m|mouse, see below.
t|transparent, cannot be shadowed by other binds.
i|ignore mods, will ignore modifiers.
s|separate, will arbitrarily combine keys between each mod/key, see [Keysym combos](#keysym-combos) above.
d|has description, will allow you to write a description for your bind.
p|bypasses the app's requests to inhibit keybinds.
