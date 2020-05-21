--######################################################################################
--############################## Finder Functions ######################################
--######################################################################################
---@public
---@param type_name string A type name as specified in the XML code
---@return GameObject|nil
---Returns the first GameObject of the given type name
function Find_First_Object(type_name)
end

---@public
---@param type_or_category string A type or category name as specified in the XML code
---@param filter PlayerObject|string PlayerObject or CategoryMask
---@return GameObject[]
---Returns a table of all GameObjects. Filters by owner if filter is a PlayerObject or by CategoryMask if filter is a string
function Find_All_Objects_Of_Type(type_or_category, filter)
end

---@public
---@param source_object GameObject The GameObject to which the nearest object shall be found
---@param type_name string
---@param category string Limits the result to the given category
---@param faction PlayerObject
---@param allied boolean Limits the result to allied or enemy units
---@overload fun(source_object: GameObject, category: string, faction: PlayerObject, allied: boolean)
---@overload fun(source_object: GameObject, faction: PlayerObject, allied: boolean)
---@return GameObject|nil
---Returns the GameObject nearest to the source object matching the given input
function Find_Nearest(source_object, type_name)
end

---@public
---@param planet_name string The name of the planet
---@return PlanetObject|nil
---Returns the PlanetObject matching the given planet name
function FindPlanet(planet_name)
end

---@public
---@param faction_name string The name of the faction
---@return PlayerObject|nil
---Returns the PlayerObject matching the given faction name
function Find_Player(faction_name)
end

---@public
---@param type_name string The type name
---@return GameObjectType|nil
---Returns the GameObjectType matching the given type name
function Find_Object_Type(type_name)
end

---@public
---@param hint string The hint
---@return GameObject|nil
---Returns the GameObject with the given hint. Hints can be set in the map editor.
function Find_Hint(hint)
end


--######################################################################################
--############################### Spawn Functions ######################################
--######################################################################################

---@public
---@param unit_type GameObjectType The type of the unit
---@param location PlanetObject|GameObject|Position The location the unit is supposed to spawn at
---@param owner PlayerObject The owner of the unit
---@return GameObject[]
---Spawns a unit and returns a table containing only the unit
function Spawn_Unit(unit_type, location, owner)
end

---@public
---@param object_type GameObjectType The  GameObjectType of the unit to spawn
---@param location PlanetObject|GameObject|Position|nil The location the unit is supposed to spawn at. If nil, adds unit to reinforcement pool
---@param allow_ai_usage boolean Determines whether the AI is allowed to control the unit
---@param ignore_reinforcement_rules boolean Ignores reinforcement rules when set to true
---@return CommandBlock
---Spawns a unit with Hyperspace/landing Transport animation. Returns a CommandBlock with a table containing the spawned unit
function Reinforce_Unit(object_type, location, player, allow_ai_usage, ignore_reinforcement_rules) end