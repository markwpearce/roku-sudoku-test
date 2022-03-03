sub init()
  m.focusedCellId = invalid
  m.focusedRow = 0
  m.focusedCol = 0
  focusCell(0,0)
  observeCells()
end sub


function onKeyEvent(key, press) as boolean
  handled = false
  if press
    if "down" = key
      focusCell(1,0)
      handled = true
    else if "up" = key
      focusCell(-1,0)
      handled = true
    else if "left" = key
      focusCell(0,-1)
      handled = true
    else if "right" = key
      focusCell(0,1)
      handled = true
    end if
  end if
  return handled
end function


function focusCell(deltaRow as integer, deltaCol as integer) as boolean
  if invalid <> m.focusedCellId
   oldCell = m.top.findNode(m.focusedCellId)
   oldCell.callFunc("updateFocus", false)
  end if
  m.focusedRow = (m.focusedRow + deltaRow + 3) mod 3
  m.focusedCol = (m.focusedCol + deltaCol + 3) mod 3
  m.focusedCellId = getCellId(m.focusedRow,m.focusedCol)
  newCell =  m.top.findNode(m.focusedCellId)
  newCell.callFunc("updateFocus", true)
end function

sub observeCells()
  for row = 0 to 2
    for col = 0 to 2
       cellId = getCellId(row, col)
       m.top.findNode(cellId).observeFieldScoped("text", "onCellChange")
    end for
  end for
end sub


function getCellId(row as integer, col as integer) as string
  return  row.toStr().trim()+"_"+col.toStr().trim()
end function


sub onCellChange()
  print "------"
  for row = 0 to 2
    rowText = ""
    for col = 0 to 2
      cellId = getCellId(row, col)
      rowText += m.top.findNode(cellId).text +" "
    end for
    print rowText
  end for
  print "------"
end sub