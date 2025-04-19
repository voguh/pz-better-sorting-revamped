if not BetterSorting then BetterSorting = {} end

local categorizedItems = {};
function BetterSorting.CategorizeItem(itemName, category)
    local item = ScriptManager.instance:getItem(itemName);

    if item ~= nil then
        item:DoParam("DisplayCategory = "..category);
        categorizedItems[itemName] = category;
    end
end

local function autoCategorizeItem(item)
    local category = "";

    if item:getCanStoreWater() then
        if item:getTypeString() ~= "Drainable" then
            category = "Container";
        else
            category = BS_CATEGORIES.FOOD_B;
        end

    elseif item:getDisplayCategory() == "Water" then
        category = BS_CATEGORIES.FOOD_B;

    elseif item:getTypeString() == "Food" then
        if item:getDaysTotallyRotten() > 0 and item:getDaysTotallyRotten() < 1000000000 then
            category = BS_CATEGORIES.FOOD_P;
        else
            category = BS_CATEGORIES.FOOD_N;
        end

    elseif item:getTypeString() == "Literature" then
        if string.len(item:getSkillTrained()) > 0 then
            category = BS_CATEGORIES.LIT_S;
        elseif item:getTeachedRecipes() and not item:getTeachedRecipes():isEmpty() then
            category = BS_CATEGORIES.LIT_R;
        elseif item:getStressChange() ~= 0 or item:getBoredomChange() ~= 0 or item:getUnhappyChange() ~= 0 then
            category = BS_CATEGORIES.LIT_E;
        else
            category = BS_CATEGORIES.LIT_W;
        end

    elseif item:getTypeString() == "Weapon" then
        if item:getDisplayCategory() == "Explosives" or item:getDisplayCategory() == "Devices" then
            category = BS_CATEGORIES.WEP_BOMB;
        end
    end

    if string.len(category) > 0 then
        BetterSorting.CategorizeItem(item:getFullName(), category);
    end
end

local function onGameBoot()
  print("--- BetterSorting Start ---");
  local items = getAllItems();
  for i = 0, items:size() - 1, 1 do
    local item = items:get(i);

    if categorizedItems[item:getFullName()] == nil then
        autoCategorizeItem(item);
    end
  end
  print("--- BetterSorting End ---");
end

Events.OnGameBoot.Add(onGameBoot);
