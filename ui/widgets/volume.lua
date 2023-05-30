local gears = require("gears")
local volume_widget = require('modules.awesome-wm-widgets.volume-widget.volume')
local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = beautiful.colors

local volume_widget_container = {
        {
          {
              spacing = 5,
              layout=wibox.layout.fixed.horizontal,
              {
                  {
                      text=" ",
                      font="JetBrainsMono Nerd Font 15",
                      widget=wibox.widget.textbox
                  },
                  fg = colors.fg,
                  widget = wibox.container.background,
              },
              {
                volume_widget{
                    main_color=colors.green,
                    widget_type = 'horizontal_bar',
                    shape = 'rounded_bar',
                    width = 50,
                    height = 7,
                    bg_color=colors.gray.."df"
                },
                top = 1, bottom = 1,
                widget = wibox.container.margin
              },
          },
          left = 7,
          right = 7,
          widget = wibox.container.margin
        },
        shape = gears.shape.rounded_bar,
        widget = wibox.container.background
    }
return volume_widget_container
