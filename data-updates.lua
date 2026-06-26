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
  if (data.raw.item[name]) then
    -- Tool Exists
    if (data.raw.item[name].icon and not data.raw.item[name].icons ) then
      -- icon exists but icons does not
      -- So convert to icons
      data.raw.item[name].icons = { {
        icon = data.raw.item[name].icon,
        icon_size = data.raw.item[name].icon_size or 64 
      } }
      data.raw.item[name].icon = nil
    end -- if icon
  end -- if tool
end -- func clean_up_icon

-- Adjustment function
function switch_out_packs(list)
  for k, v in pairs(list) do
    if (data.raw.item[k]) then
      --clean_up_icon(k)
      if (data.raw.item[k].icons) then
        data.raw.item[k].icons[1].icon = v.icon
      else
        data.raw.item[k].icon = v.icon
      end
      if (v.locale_suffix) then
        data.raw.item[k].localised_name = {"", {"science-rawnames."..k}, {"cirnoscience-packnames."..v.locale_suffix} }
      end
    end
  end
end

-- Switch out listed science packs
switch_out_packs(themeset.list)


