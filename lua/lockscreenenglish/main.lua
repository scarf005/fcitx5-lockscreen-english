-- kscreenlocker's password field reports only Sensitive (not Password) to fcitx5,
-- so fcitx5 does not disable Hangul there. Force the English layout on focus.
local fcitx = require("fcitx")

local programs = { kscreenlocker_greet = true, ["org.kde.kscreenlocker_greet"] = true }

fcitx.watchEvent(fcitx.EventType.FocusIn, "lockscreen_focus_in")

function lockscreen_focus_in()
    if programs[fcitx.currentProgram()] then
        fcitx.setCurrentInputMethod("keyboard-us", true)
    end
end
