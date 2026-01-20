-- Load defined Image Sets
local settouse = settings.startup["cirnoscience-theme-selection"].value
-- dynamically load
local themepath = "graphics."..settouse
local success, module = pcall(require, themepath)
if (themeset == nil) then
  require("graphics.nochange")
end

-- Util Functions
-- Adjust from .icon to .icons.icon
function clean_up_icon(name)
  if (data.raw.tool[name]) then
    -- Tool Exists
    if (data.raw.tool[name].icon and not data.raw.tool[name].icons ) then
      -- icon exists but icons does not
      -- So convert to icons
      data.raw.tool[name].icons = { {
        icon = data.raw.tool[name].icon,
        icon_size = data.raw.tool[name].icon_size or 64 
      } }
      data.raw.tool[name].icon = nil
    end -- if icon
  end -- if tool
end -- func clean_up_icon

-- Adjustment function
function switch_out_packs(list)
  for k, v in pairs(list) do
    if (data.raw.tool[k]) then
      --clean_up_icon(k)
      if (data.raw.tool[k].icons) then
        data.raw.tool[k].icons[1].icon = v.icon
      else
        data.raw.tool[k].icon = v.icon
      end
      if (v.locale_suffix) then
        data.raw.tool[k].localised_name = {"", {"science-rawnames."..k}, {"cirnoscience-packnames."..v.locale_suffix} }
      end
    end
  end
end

-- Switch out listed science packs
switch_out_packs(themeset.list)


