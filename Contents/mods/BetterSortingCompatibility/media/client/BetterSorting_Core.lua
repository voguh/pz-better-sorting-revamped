if not getActivatedMods():contains("ItemTweakerAPI") then
    print("BetterSortingCompatibility: ItemTweakerAPI not found, using built-in ItemTweakerAPI.")

    -- DarkSlayerEX's Item Tweaker API
    -- https://steamcommunity.com/sharedfiles/filedetails/?id=566115016
    local ItemTweaker = ItemTweaker or {};
    local TweakItemData = TweakItemData or {};

    --Prep code to make the changes to all item in the TweakItemData table.
    local function tweakItems()
        local item;
        for k,v in pairs(TweakItemData) do
            for t,y in pairs(v) do
                item = ScriptManager.instance:getItem(k);
                if item ~= nil then
                    item:DoParam(t.." = "..y);
                    print(k..": "..t..", "..y);
                end
            end
        end
    end

    function TweakItem(itemName, itemProperty, propertyValue)
        print("Using ItemTweakerAPI (BetterSortingCC compatibility) to tweak item: "..itemName..", "..itemProperty..", "..propertyValue);
        if not TweakItemData[itemName] then
            TweakItemData[itemName] = {};
        end
        TweakItemData[itemName][itemProperty] = propertyValue;
    end

    Events.OnGameBoot.Add(tweakItems);
    -- End of DarkSlayerEX's Item Tweaker API
end
