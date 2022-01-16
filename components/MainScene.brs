sub init()
  m.background = m.top.findNode("background")
  m.rowlist = m.top.findNode("contentRowList")
  populateRowList()
end sub

sub populateRowList()
  ? "populateRowList"
  ContentNode_object = createObject("RoSGNode","ContentNode")
  ContentNode_child_object = ContentNode_object.createChild("ContentNode")
  ContentNode_child_object.title = "Container"
  For i = 1 to 6
    ContentNode_child_child = ContentNode_child_object.createChild("ContentNode")
    ContentNode_child_child.title = "Title"
    i = i + 1
  end for
  m.rowlist.content = ContentNode_object
  m.rowlist.setFocus(true)
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