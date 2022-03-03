
sub init()
  m.numberLabel = m.top.findNode("number")
  m.outline = m.top.findNode("outline")
  m.numberOptions = ["-", "1", "2", "3", "4", "5", "6", "7", "8","9"]
  m.currentOption = 0
end sub

sub updateFocus(focused as boolean)
  if focused
    m.outline.color = "#ffffff"
    m.top.setFocus(true)
  else
    m.outline.color = "#000000"
  end if
end sub


function onKeyEvent(key, press) as boolean
  handled = false
  if press
    if "OK" = key
      m.currentOption = (m.currentOption +1)mod m.numberOptions.count()
      m.numberLabel.text = m.numberOptions[m.currentOption]
      handled = true
    end if
  end if
  return handled
end function