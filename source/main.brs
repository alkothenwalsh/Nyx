sub Main(input as Dynamic)
    ? "in main"
    showaMainScreen()
end sub

sub showaMainScreen()
    print "main.brs - [showMainScreen]"
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    scene = screen.CreateScene("MainScene")
    screen.show()
  
    while(true)
      msg = wait(0, m.port)
      msgType = type(msg)
      if msgType = "roSGScreenEvent"
        if msg.isScreenClosed() then return
      end if
    end while
  end sub