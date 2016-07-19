
-- list of fluids that can be turned into fluid biomass
itemlist = {

	-- Farmtorio
	{name = "potato", energy=1, amount=1, result = 1},
	{name = "pumpkin", energy=3, amount=1, result = 3},
	{name = "chopped-potato", energy=1, amount=8, result = 1},
	{name = "sunflower", energy=1, amount=1, result = 1},
	{name = "wheat", energy=1, amount=1, result = 1},
	{name = "hay", energy=1, amount=3, result = 1},
	{name = "bottled-milk", energy=1, amount=1, result = 1},
	{name = "egg", energy=1, amount=1, result = 1},
	{name = "butter", energy=1, amount=1, result = 1},
	{name = "cookiedough", energy=1, amount=1, result = 1},
	{name = "cookie", energy=1, amount=1, result = 1},
	{name = "flour", energy=1, amount=1, result = 1},
	{name = "steak", energy=1, amount=1, result = 3},

}

-- recipes for fluid biomass
function createItemBiomassRecipe(item)
	if data.raw.item[item.name] then
		data:extend({
			{
				type = "recipe",
				name = item.name.."-biomass-processing",
				category = "item-biomass-processing",
				enabled = true,
				hidden = true,
				energy_required = item.energy,
				ingredients =
				{
				  {type="item", name=item.name, amount=item.amount}
				},
				results =
				{
				  {type="item", name="biomass", amount=item.result}
				},
				icon = "__farmtorio__/graphics/icons/biomass.png",
				subgroup = "fluid-recipes",
				order = "z[venting]"
			}
		})
	end
end

for i, item in pairs(itemlist) do
	createItemBiomassRecipe(item)
end



