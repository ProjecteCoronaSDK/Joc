
local composer = require( "composer" )
local scene = composer.newScene()
local widget = require ("widget")
function scene:create( event )

    local sceneGroup = self.view
    local background = display.newImageRect( sceneGroup, "img/joc2.png", _W, _H )
    background.x = _centerX
    background.y = _centerY
    local button = widget.newButton{
        x = _centerX,
        y = _centerY-140,
        label = "Next",
        shape = "roundedRect",
        width = 200,
        height = 40,
        fillColor = { default={ 1, 0, 0, 1 }, over={ 1, 0.1, 0.7, 0.4 } },
        onRelease = function()composer.gotoScene( "pantalla4" ) end
    }
    button:setFillColor( 0,0,0 )
    sceneGroup:insert( button )
   
end



-- "scene:show()"
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        print( "holaaa" )
    elseif ( phase == "did" ) then
        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end
end


-- "scene:hide()"
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.
    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end
end


-- "scene:destroy()"
function scene:destroy( event )

    local sceneGroup = self.view

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end


-- -------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-- -------------------------------------------------------------------------------

return scene