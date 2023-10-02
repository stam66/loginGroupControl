script "loginGroupScript"

#### PROPERTIES ####
// dark text color
getProp uTextColorDark
    local tColor
    put the uTextColorDark of me into tColor
    if tColor is empty then put "40,40,40" into tColor
    return tColor
end uTextColorDark

setProp uTextColorDark pColor
    set the uTextColorDark of me to pColor
    updateVisualControls
end uTextColorDark

// light text color
getProp uTextColorLight
    local tColor
    put the uTextColorLight of me into tColor
    if tColor is empty then put "240,240,240" into tColor
    return tColor
end uTextColorLight

setProp uTextColorLight pColor
    set the uTextColorLight of me to pColor
    updateVisualControls
end uTextColorLight

//  disabled dark text color
getProp uTextColorDarkDisabled
    local tColor
    put the uTextColorDarkDisabled of me into tColor
    if tColor is empty then put "180,180,180" into tColor
    return tColor
end uTextColorDarkDisabled

setProp uTextColorDarkDisabled pColor
    set the uTextColorDarkDisabled of me to pColor
    updateVisualControls
end uTextColorDarkDisabled

// disabled light text color
getProp uTextColorLightDisabled
    local tColor
    put the uTextColorLightDisabled of me into tColor
    if tColor is empty then put "180,180,180" into tColor
    return tColor
end uTextColorLightDisabled

setProp uTextColorLightDisabled pColor
    set the uTextColorLightDisabled of me to pColor
    updateVisualControls
end uTextColorLightDisabled

// border color
getProp uBorderColor
    local tColor
    put the uBorderColor of me into tColor
    if tColor is empty then put "180,180,180" into tColor
    return tColor
end uBorderColor

setProp uBorderColor pColor
    set the uBorderColor of me to pColor
    updateVisualControls
end uBorderColor

// hilite color
getProp uHiliteColor 
    local tColor
    put the uHiliteColor of me into tColor
    if tColor is empty then put "66,148,248" into tColor
    return tColor
end uHiliteColor

setProp uHiliteColor pColor
    set the uHiliteColor of me to pColor
    updateVisualControls
end uHiliteColor

// notHilite color
getProp uNotHiliteColor 
    local tColor
    put the uNotHiliteColor of me into tColor
    if tColor is empty then put "136,136,136" into tColor
    return tColor
end uNotHiliteColor

setProp uNotHiliteColor pColor
    set the uNotHiliteColor of me to pColor
    updateVisualControls
end uNotHiliteColor

// pressed color
getProp uPressedColor 
    local tColor
    put the uPressedColor of me into tColor
    if tColor is empty then put "0,0,140" into tColor
    return tColor
end uPressedColor

setProp uPressedColor pColor
    set the uPressedColor of me to pColor
    updateVisualControls
end uPressedColor

// disabled textStyle
getProp uDisabledStyle
    local tStyle
    put the uDisabledStyle of me into tStyle
    if tStyle is empty then put "italic" into tStyle
end uDisabledStyle

setProp uDisabledStyle pStyle
    set the uDisabledStyle of me to pStyle
    exitFields
end uDisabledStyle

// enabled textStyle
getProp uEnabledStyle
    local tStyle
    put the uEnabledStyle of me into tStyle
    if tStyle is empty then put "plain" into tStyle
    return tStyle
end uEnabledStyle

setProp uEnabledStyle pStyle
    set the uEnabledStyle of me to pStyle
    exitFields
end uEnabledStyle

// text scale factor
getProp uScaleFactor
    local tFactor
    put the uScaleFactor of me into tFactor
    if tFactor is empty then put 0.5 into tFactor
    return tFactor
end uScaleFactor

setProp uScaleFactor pFactor
    set the uScaleFactor of me to pFactor
    exitFields
end uScaleFactor

// background style : roundRect | rect | invisible
getProp uBackgroundStyle
    local tStyle
    put the uBackgroundStyle of me into tStyle
    if tStyle is empty then put "roundRect" into tStyle
    return tStyle
end uBackgroundStyle

setProp uBackgroundStyle pStyle
    set the uBackgroundStyle of me to pStyle
    updateVisualControls
end uBackgroundStyle

// backgroundColor
getProp uBackgroundColor 
    local tColor
    put the uBackgroundColor of me into tColor
    if tColor is empty then put "255,255,255" into tColor 
    return tColor
end uBackgroundColor

setProp uBackgroundColor pColor
    set the uBackgroundColor of me to pColor
    updateVisualControls
end uBackgroundColor

// app label
getProp uAppLabel
    return the uAppLabel of me // can be empty
end uAppLabel

setProp uAppLabel pLabel
    set the uAppLabel of me to pLabel
    updateVisualControls
end uAppLabel

// button style : standard | transparent | opaque | roundRect
getProp uButtonStyle
    local tStyle
    put the uButtonStyle of me into tStyle
    if tStyle is empty then put "roundRect" into tStyle
    return tStyle
end uButtonStyle

setProp uButtonStyle pStyle
    set the uButtonStyle of me to pStyle
    updateVisualControls
end uButtonStyle
#### /PROPERTIES ####


### update appearance ###
command layoutVisualControls
    local tRect, tWidth, tHeight
    put the rect of me into tRect
    add 4 to item 1 of tRect
    add 4 to item 2 of tRect
    subtract 4 from item 3 of tRect
    subtract 4 from item 4 of tRect
    set the rect of grc "background" of me to tRect
    
    put 0.69 * the width of grc "background" of me into tWidth
    put 0.08 * the height of grc "background" of me into tHeight
    // signInLabel
    set the width of field "signInLabel" of me to tWidth
    set the height of field "signInLabel" of me to tHeight
    set the loc of field "signInLabel" of me to the loc of grc "background" of me
    set the top of field "signInLabel" of me to the top of grc "background" of me + tHeight
    // field username
    set the width of field "username" of me to tWidth
    set the height of field "username" of me to tHeight
    set the loc of field "username" of me to the loc of grc "background" of me
    set the top of field "username" of me to the bottom of field "signInLabel" of me + 10
    // field password
    set the width of field "password" of me to tWidth
    set the height of field "password" of me to tHeight
    set the loc of field "password" of me to the loc of grc "background" of me
    set the top of field "password" of me to the bottom of field "username" of me + tHeight
    // widget username
    set the loc of widget "username" of me to the loc of field "username" of me
    set the right of widget "username" of me to the left of field "username" of me - 6
    // widget password
    set the loc of widget "password" of me to the loc of field "password" of me
    set the right of widget "password" of me to the left of field "password" of me - 6
    // widget showPassword
    set the loc of widget "showPassword" of me to the loc of field "password" of me
    set the left of widget "showPassword"  of me to the right of field "password" of me + 6
    // field resetPassword
    set the top of field "resetPassword" of me to the bottom of field "password" of me + 2
    set the right of field "resetPassword" of me to the right of field "password" of me
    // button login
    set the height of button "Login" of me to tHeight + 4
    set the width of button "Login" of me to 0.5 * tWidth
    set the loc of button "Login" of me to the loc of grc "background" of me
    set the bottom of button "Login" of me to the bottom of grc "background" of me - tHeight - 10
    // button loginBehavior (invisible)
    set the loc of button "loginBehavior" of me to the loc of grc "background" of me
    
    formatFieldText fieldTextSize(), empty, empty
    centerAllFieldsVertically
    exitFields
end layoutVisualControls

command updateVisualControls
    // background
    if the uBackgroundStyle of me is "invisible" then 
        set the visible of graphic "background" of me to false
    else
        set the visible of graphic "background" of me to true
    end if
    set the style of graphic "background" of me to the uBackgroundStyle of me
    set the backgroundColor of graphic "background" of me to the uBackgroundColor of me
    set the borderColor of graphic "background" of me to the uBorderColor of me
    // fields
    set the borderColor of field "username" of me to the uBorderColor of me
    set the borderColor of field "password" of me to the uBorderColor of me
    setTextStyle "close"
    // widgets
    set the foregroundColor of widget "username" of me to  the uBorderColor of me
    set the foregroundColor of widget "password" of me to  the uBorderColor of me
    set the foregroundColor of widget "showPassword" of me to  the uBorderColor of me
    // sign in label
    set the text of field "signInLabel" of me to "Sign  in"
    if the uAppLabel of me is not empty then put "to" && the uAppLabel of me after field "signInLabel" of me
    set the textColor of field "signInLabel" of me to the uHiliteColor of me
    // resetPassword
    set the textColor of field "resetPassword" of me to the uHiliteColor of me
    // login button
    set the borderColor of button "Login" of me to the uBorderColor of me
    set the style of button "Login" of me to the uButtonStyle of me
    // update layout
    layoutVisualControls
end updateVisualControls


# set text sizes and colors
private command formatFieldText pSize, pTextColor, pBorderColor
    if pBorderColor is empty then put the uBorderColor of me into pBorderColor
    if pTextColor is empty then put the uTextColorDark of me into pTextColor
    // fields
    set the textColor of field "username" of me to pTextColor
    set the textSize of field "username" of me to pSize
    set the borderColor of field "username" of me to pBorderColor
    set the textColor of field "password" of me to pTextColor
    set the borderColor of field "password" of me to pBorderColor
    set the textSize of field "password" of me to pSize
    set the textSize of field "signInLabel" of me to pSize + 6
    set the textSIze of field "resetPassword" of me to pSize - 6
    //widgets
    set the width of widget "username" of me to pSize
    set the height of widget "username" of me to pSize
    set the width of widget "password" of me to pSize
    set the height of widget "password" of me to pSize
    set the width of widget "showPassword" of me to pSize
    set the height of widget "showPassword" of me to pSize
    set the foregroundColor of widget "username" to pBorderColor
    set the foregroundColor of widget "password" to pBorderColor
    set the foregroundColor of widget "showPassword" to pBorderColor
    // buttons
    set the textsize of button "Login" of me to pSize
    // create image to obscure password
    createCircle pSize, pTextColor, pBorderColor
    // center text vertically
    centerAllFieldsVertically
end formatFieldText

private command centerAllFieldsVertically
    local tTextHeight, tFieldY, tFormatRect, tFormatheight, tFormatHalfHeight, tCurrFormatTop, tCenterField_To_TopTextDiff
    repeat with x = 1 to the number of fields of me
        if the short name of field x of me is not "resetPassword" then
            put the effective textHeight of field x of me into tTextHeight
            put item 2 of the loc of field x of me into tfieldY
            put the formattedRect of line 1 to - 1 of field x of me into tFormatRect
            put item 4 of tFormatRect - item 2 of tFormatRect into tFormatHeight
            put tFormatHeight div 2 into tFormatHalfHeight
            put item 2 of tFormatRect into tCurrFormatTop
            put tfieldY - tCurrFormatTop into tCenterField_To_TopTextDiff
            set the topMargin of field x of me to the topMargin of field x of me + tCenterField_To_TopTextDiff - tFormatHalfHeight
        end if
    end repeat
    send "exitField" to field "username"
    send "exitField" to field "password"
end centerAllFieldsVertically

private command createCircle pSize, pTextColor, pBorderColor
    local tPic
    if there is a graphic "blackCircle" of me then delete graphic "blackCircle" of me
    if there is an image "blackCircle" of me then delete image "blackCircle" of me
    if pTextColor is empty then put the uTextColorDark of me into pTextColor
    if pBorderColor is empty then put the uBorderColor of me into pBorderColor
    
    create invisible graphic "blackCircle" in me
    set the style of grc "blackCircle" of me to "oval"
    set the opaque of grc "blackCircle" of me to true
    set the backgroundColor of grc "blackCircle" of me to pTextColor
    set the foregroundColor of grc "blackCircle" of me to pBorderColor
    set the height of grc "blackCircle" of me to pSize
    set the width of grc "blackCircle" of me to pSIze
    set the loc of grc "blackCircle" of me to the left of me + 20, item 2 of the loc of me
    local tImage
    export snapshot from grc "blackCircle" of me to tImage as PNG 
    create invisible image "blackCircle" in me
    put tImage into image "blackCircle" of me
    set the loc of image "blackCircle" of me to the loc of me
    delete graphic "blackCircle" of me
end createCircle

private function fieldTextSize
    local tRect, tFHeight, tTargetSize
    put the rect of field 1 of me into tRect
    put the height of field "username" of me into tFHeight
    put round (the height of field "username" * the uScaleFactor of me) into tTargetSize
    repeat with x = 6 to 50
        if x = tTargetSize then exit repeat
    end repeat
    if x is empty then put 12 into x
    return x
end fieldTextSize

on openControl
    initWidget
    focus on nothing
end openControl

command initWidget
    set the hilite of widget "showPassword" of me to false
    set the showPassword of field "password" of me to false
    set the iconPresetName of widget "showPassword" of me to "eye close"
    disable button "login"
    set the text of  field "username" of me to empty
    set the text of field "password" of me to empty
    select after field "username" of me
    select after field "password" of me
    focus on nothing
end initWidget

on resizeControl
    layoutVisualControls
end resizeControl


on mouseDown
    switch the short name of the target
        case "resetPassword"
            set the textColor of field "resetPassword" of me to the uPressedColor of me
            break
            
        case "login"
            if button "login" of me is disabled then exit mouseDown
            set the backgroundColor of button "login" of me to the uHiliteColor of me
            set the textColor of button "login" of me to textColorForBackground(the uHiliteColor of me, false)
            break
    end switch
    
    pass mouseDown
end mouseDown

on mouseRelease
    switch the short name of the target
        case "resetPassword"
            set the textColor of field "resetPassword" of me to the uHiliteColor of me
            break
            
        case "login"
            if button "login" of me is disabled then exit mouseRelease
            set the backgroundColor of button "login" of me to the uBackgroundColor of me
            set the textColor of button "login" of me to textColorForBackground(the uBackgroundColor of me, false)
            break
    end switch
end mouseRelease

on mouseUp
    switch the short name of the target
        case "Login"
            if button "login" of me is disabled then exit mouseUp
            set the backgroundColor of button "login" of me to the uBackgroundColor of me
            set the textColor of button "login" of me to textColorForBackground(the uBackgroundColor of me, false)
            loginWithUsernameAndPassword field "username" of me, field "password" of me
            break
            
        case "showPassword"
            if the mouseLoc is not within the rect of widget "showPassword" of me then pass mouseUp
            set the hilite of widget "showPassword" of me to not the hilite of widget "showPassword" of me
            if the hilite of widget "showPassword" of me  then 
                set the iconPresetName of widget "showPassword" me to "eye open"
            else
                set the iconPresetName of widget "showPassword" me to "eye close"
            end if
            set the showPassword of field "password" of me to the hilite of widget "showPassword" of me
            dispatch "showHideText" to field "password" of me
            break
            
        case "resetPassword"
            set the textColor of field "resetPassword" of me to the uHiliteColor of me
            resetPasswordForUsername field "username"
            break
    end switch
    
    pass mouseUp
end mouseUp


# return dark textColor for light backgrounds & vice versa
function textColorForBackground pColor, pDisabled
    local hsp, r, g, b
    if char 1 of pColor is "#" and length(pColor) = 7 then  // hex in format #xxxxxx
        put baseConvert(char 2 to 3 of pColor, 16, 10) into r
        put baseConvert(char 4 to 5 of pColor, 16, 10) into g
        put baseConvert(char 6 to 7 of pColor, 16, 10) into b
    else if length(pColor) = 6 then                         // hex in format xxxxxx
        put baseConvert(char 1 to 2 of pColor, 16, 10) into r
        put baseConvert(char 3 to 4 of pColor, 16, 10) into g
        put baseConvert(char 5 to 6 of pColor, 16, 10) into b
    else if pColor contains ","  then                       // rbg triplet
        put item 1 of pColor into r
        put item 2 of pColor into g
        put item 3 of pColor into b
    else                                                    // colorName
        put RGBFromColorName (pColor) into pColor
        if pColor = "Error: not a color" then return "red"  // red text signifies error(s)...
        put item 1 of pColor into r
        put item 2 of pColor into g
        put item 3 of pColor into b
    end if
    // put sqrt(0.299 * (r * r) + 0.587 * (g * g) + 0.114 * (b * b)) into hsp
    put (0.299 * (r * r) + 0.587 * (g * g) + 0.114 * (b * b))/255 into hsp
    if hsp >  0.5 then // 127.5 then
        if pDisabled then
            return the uTextColorDarkDisabled of me
        else
            return the uTextColorDark of me
        end if
    else
        if pDisabled then
            return the uTextColorLightDisabled of me
        else
            return the uTextColorLIght of me
        end if
    end if
end textColorForBackground

function RGBFromColorName pColorName
	local tRGBColor
	if pColorName is not a color then return "Error: not a color"
	create invisible button 
	set the backgroundColor of last button to pColorName
   	set the backgroundPixel of last button to the backgroundPixel of last button
   	put the backgroundColor of last button into tRGBColor
	delete last button
	return tRGBColor
end RGBFromColorName

##################################
##   PLACEHOLDERTEXT FUNCTIONS  ##
##################################

local sFieldID // the long id of the current field, set on openField

function textFieldIsEmpty pID
    if pID is empty then exit to top
    get the text of pID
    if it = "" or it = the uPlaceholderText of pID then
        return true
    else
        return false
    end if
end textFieldIsEmpty

on setTextStyle pMode ## pMode: open - for when entering field | close - for when leaving field
    if sFieldID is empty then exit to top
    if textFieldIsEmpty(sFieldID) then
        if pMode = "open" then
            set the text of sFieldID to empty
            set the textColor of sFieldID to textColorForBackground(the backgroundColor of grc "background" of me, false)
            set the textStyle of sFieldID to the uEnabledStyle of me
        else 
            set the text of sFieldID to the uPlaceholderText of sFieldID
            set the textColor of sFieldID to textColorForBackground(the backgroundColor of grc "background" of me, true)
            set the textStyle of sFieldID to the uDisabledStyle of me
        end if      
    else //field not empty or placeholder text
        set the textColor of sFieldID to textColorForBackground(the backgroundColor of grc "background" of me, false)
        set the textStyle of sFieldID to the uEnabledStyle of me
    end if
end setTextStyle

on openField
    if word 1 of the long id of the target is "field"  then 
        put the long id of the target into sFieldID
    else
        put empty into sFieldID
    end if
    setTextStyle "open"
end openField

on closeField
    setTextStyle "close"
end closeField

on exitField
    setTextStyle "close"
end exitField

on textChanged
    if sFieldID is empty then exit to top
    if field "username" of me is empty or field "password" of me is empty then
        set the enabled of button "login" of me to false
    else
        set the enabled of button "login" of me to true
    end if
   if the showPassword of sFieldID is not empty then showHideText
end textChanged


####################################
##   BULLETPOINT TEXT FUNCTIONS   ##
####################################
command showHideText
   lock screen
   if the showPassword of sFieldID is false then
      repeat with x = 1 to the length of sFieldID
         set the imageSource of character x of sFieldID to the id of image "blackCircle" of me
      end repeat
   else
      repeat with x = 1 to the length of sFieldID
         set the imageSource of character x of sFieldID to empty
      end repeat
   end if
end showHideText

on copyKey // suspend development tools to use this in iDE
   --   trap copy
end copyKey

on cutKey // suspend development tools to use this in iDE
   --trap cut
end cutKey

on pasteKey // suspend development tools to use this in iDE
   local temp
   put the clipboardData["text"] into temp
   set the text of sFieldID to temp
   showHideText
   select after sFieldID
end pasteKey

on rawKeyDown pKeyCode // trap return/enter in fields
    switch pKeyCode
        case 65293 // return
        case 65421 // enter
            if not textFieldIsEmpty(the long id of field "username" of me) and not textFieldIsEmpty(the long id of field "password" of me) then
                click at the loc of button "Login" of me
            else
                if "username" is in the long name of sFieldID then 
                    select after field "password" of me
                else
                    select after field "username" of me
                end if
            end if
            break
        case 65307 // escape
            exitFields
            focus on nothing
            break
        default 
            pass rawKeyDown
    end switch
end rawKeyDown

command exitFields
    lock screen
    send "openField" to field "username" of me
    send "exitField" to field "username" of me
    send "closeField" to field "username" of me
    
    send "openField" to field "password" of me
    send "exitField" to field "password" of me
    send "closeField" to field "password" of me
end exitFields
