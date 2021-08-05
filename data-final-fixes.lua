if mods["IndustrialRevolution"] and mods["Hovercrafts"] then
	local prototypes = {
		data.raw["car"]["hcraft-entity"],
		data.raw["car"]["mcraft-entity"],
	}

	for _,prototype in pairs(prototypes) do
		if prototype and prototype.burner then
			prototype.burner.fuel_category = nil
			prototype.burner.fuel_categories = {"chemical","battery"}
			prototype.burner.burnt_inventory_size = 1
		end
	end
end

if mods["DeadlockLargerLamp"] and mods["Hovercrafts"] then
	data.raw["lamp"]["deadlock-large-lamp"].collision_mask = {"item-layer", "object-layer", "player-layer", "water-tile", "train-layer"}
end