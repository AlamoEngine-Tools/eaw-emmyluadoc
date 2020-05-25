-- ------------------------------------------------------------------
-- ------------------------------------------------------------------
--  _____                _                  _     _    _
-- |  ___|              (_)                | |   | |  | |
-- | |__ _ __ ___  _ __  _ _ __ ___    __ _| |_  | |  | | __ _ _ __
-- |  __| '_ ` _ \| '_ \| | '__/ _ \  / _` | __| | |/\| |/ _` | '__|
-- | |__| | | | | | |_) | | | |  __/ | (_| | |_  \  /\  / (_| | |
-- \____/_| |_| |_| .__/|_|_|  \___|  \__,_|\__|  \/  \/ \__,_|_|
--                | |
--                |_|
--  _____                          _                ______
-- |  ___|                        | |               |  _  \
-- | |__ _ __ ___  _ __ ___  _   _| |    _   _  __ _| | | |___   ___
-- |  __| '_ ` _ \| '_ ` _ \| | | | |   | | | |/ _` | | | / _ \ / __|
-- | |__| | | | | | | | | | | |_| | |___| |_| | (_| | |/ / (_) | (__
-- \____/_| |_| |_|_| |_| |_|\__, \_____/\__,_|\__,_|___/ \___/ \___|
--                            __/ |
--                           |___/
-- ------------------------------------------------------------------
-- ------------------------------------------------------------------

-- ------------------------------------------------------------------
-- Finders as sorted by SGMG documentation
-- ------------------------------------------------------------------
---@public
---Finds the game object that currently attacks the given game object and deals the highest damage.
---@param gameObject GameObject|TaskForce
---@return GameObject
function FindDeadlyEnemy(gameObject)
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
---Literally finds all objects of this type. That may include projectiles or other unexpected objects. Categories can be piped together (e.g. `"Frigate | Capital"`)
---Filters by owner if filter is a `PlayerObject` or by `CategoryMask` if filter is a `string`
---@overload fun(propertyOrPlayer:string)
---@overload fun(propertyOrPlayer:string, playerOrCategory:PlayerObject)
---@overload fun(propertyOrPlayer:PlayerObject, playerOrCategory:string)
---@param propertyOrPlayer string|PlayerObject A property flag if used with a single parameter or with a player wrapper as second parameter
---@param playerOrCategory PlayerObject|string A player wrapper if the first parameter is a property flag, otherwise a category mask
---@return table<number, GameObject>
function Find_All_Objects_Of_Type(propertyOrPlayer, playerOrCategory)
end
---@public
--- Returns the first object of the given type. Possibly finds objects in reverse spawn order.
---@param typeName string A type name as specified in the XML code
---@return GameObject|nil
function Find_First_Object(typeName)
end
---@public
---@param hint string The hint
---@return GameObject|nil
---Returns the GameObject with the given hint. Hints can be set in the map editor.
function Find_Hint(hint)
end
---@public
---@param hint string The object hint as set in the map editor.
---@return GameObject[]
function Find_All_Objects_With_Hint(hint)
end
---@public
--- Returns the nearest object that has the given properties. May return nil. The two argument version takes as second parameter an object type name. The four argument version takes as second parameter a property flag string. The `isFriendly`parameter filters for friendlies or enemies, respectively.
---@overload fun(gameObject:GameObject|TaskForce, typeNameOrProperty:string)
---@overload fun(gameObject:GameObject|TaskForce, player:PlayerObject, isFriendly:boolean)
---@overload fun(gameObject:GameObject|TaskForce, typeNameOrProperty:string, player:PlayerObject, isFriendly:boolean)
---@param gameObject GameObject|TaskForce
---@param typeNameOrProperty string
---@param player PlayerObject
---@param isFriendly boolean
---@return GameObject
function Find_Nearest(gameObject, typeNameOrProperty, player, isFriendly)
end
---@public
---@param gameObject GameObject|TaskForce
---@param spaceFieldType string Can be "Asteroid", "Nebula" or "Ion_Storm".
---@return GameObject
function Find_Nearest_Space_Field(gameObject, spaceFieldType)
end
---@public
--- Returns position and combined threat of units (from the unit list) in range of the position.
---@param unitList table<number, GameObject>
---@param distance number
---@return Position
function Find_Best_Local_Threat_Center(unitList, distance)
end
---@public
---@param gameObject GameObject
---@param player PlayerObject
---@return Position
function Get_Most_Defended_Position(gameObject, player)
end
---@public
---Returns a position outside the range of the object that is given as first parameter.
---@param enemyObject GameObject The object whose weapon range is considered
---@param gameObject GameObject|TaskForce The object or task force looking to flee outside the range of the first object.
---@return Position
function Project_By_Unit_Range(enemyObject, gameObject)
end
---@public
--- GC only. Only for AI players. Returns a list of planet objects.
---@param player PlayerObject
---@param startingPlanet PlanetObject
---@param destinationPlanet PlanetObject
---@return PlanetObject[]
function Find_Path(player, startingPlanet, destinationPlanet)
end

---@type table|fun(planetName:string):PlanetObject
---@public
---Can be called directly with a planet name or can be indexed to call the function `Get_All_Planets`.
---@param planetName string
---@return PlanetObject
FindPlanet = {}
---@public
--- Returns all planets in the current GC game.
---@return PlanetObject[]
function FindPlanet.Get_All_Planets()
end

-- ------------------------------------------------------------------
-- ------------------------ Spawn  Functions ------------------------
-- ------------------------------------------------------------------

---@public
---Spawns a unit and returns a table containing only the unit
---@param unit_type GameObjectType The type of the unit
---@param location PlanetObject|GameObject|Position The location the unit is supposed to spawn at
---@param owner PlayerObject The owner of the unit
---@return GameObject[]
function Spawn_Unit(unit_type, location, owner)
end

---@public
---Spawns a unit with Hyperspace/landing Transport animation.
---@param object_type GameObjectType The  GameObjectType of the unit to spawn
---@param location PlanetObject|GameObject|Position|nil The location the unit is supposed to spawn at. If nil, adds unit to reinforcement pool
---@param allow_ai_usage boolean Determines whether the AI is allowed to control the unit
---@param ignore_reinforcement_rules boolean Ignores reinforcement rules when set to true
---@return CommandBlock
---Returns a CommandBlock with a table containing the spawned unit
function Reinforce_Unit(object_type, location, player, allow_ai_usage, ignore_reinforcement_rules)
end
