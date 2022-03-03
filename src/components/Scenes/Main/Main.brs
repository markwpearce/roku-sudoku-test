' Each component has an "init" function that is called at the beginning of the lifecycle

function init()
  ' bs:disable-next-line: 1090
  #if DEBUG
    m.top.createChild("TrackerTask")
  #end if
  m.grid = m.top.findNode("grid")
  m.grid.setFocus(true)
end function