sub init()
    bottomRectangle = m.top.findNode("bottomRectangle")
end sub

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false
    if press then
      if (key = "back") then
        handled = true
      end if
    end if
    return handled
end function