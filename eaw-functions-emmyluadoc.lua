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
---Spawns a unit and returns a table containing only the unit. Respects collision. If something blocks the spawn, the unit will be spawned as close as possible to the given position.
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

---@public
--- Spawns an object without regard for collision.
---@param object_type GameObjectType|string Object type or type xml name
---@param position Position A game object is also possible but can cause script crashes
---@param player PlayerObject
---@return GameObject The spawned object
function Create_Generic_Object(object_type, position, player)
end

---@public
--- Spawns a unit from the reinforcement pool without hyperspace animation while respecting collision. Returns a list containing the spawned object. If the required unit is not in the reinforcement pool, it does nothing. The unit faces toward the center of the map.
---@param object_type GameObjectType
---@param position Position|GameObject
---@param player PlayerObject
---@return GameObject[]
function Spawn_From_Reinforcement_Pool(object_type, position, player)
end

---@public
--- Space only. Spawns a ground to space weapon for the given player and returns it. Can be fired using `Fire_Special_Weapon` but is not available to the player.
---@param type_name string
---@param player PlayerObject
---@return GameObject The spawned weapon
function Spawn_Special_Weapon(type_name, player)
end

-- -----------------------------------------------------------
-- ------------------------ Game time ------------------------
-- -----------------------------------------------------------

--- Returns game time of the current game mode in seconds if called. Can be indexed for additional functions.
---
---@type fun():number
---@public
---@return number
GetCurrentTime = {}

---@public
--- The current frame
---@return number
function GetCurrentTime.Frame()
end

---@public
---@return number
function GetCurrentTime.Galactic_Time()
end
