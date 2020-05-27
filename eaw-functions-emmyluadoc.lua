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

-- ---------------------------------------------------------------
-- ------------------------ Randomization ------------------------
-- ---------------------------------------------------------------

--- Returns a random integer between the given integers when called (uses game time as seed). 
--- Can be indexed to access further functions.
---
---@type fun(lower:number, upper:number):number
---@public
---@param lower number
---@param upper number
---@return number
GameRandom = {}

---@public
--- Returns a random float between the given bounds or between zero and one if no bounds are given.
---@overload fun():number
---@param lower number
---@param upper number
---@return number
function GameRandom.Get_Float(lower, upper)
end

---@public
--- Returns a random integer within the given bounds (uses real time or some other game independent value as seed).
---@param lower number
---@param upper number
---@return number
function GameRandom.Free_Random(lower, upper)
end

-- -----------------------------------------------------------------------
-- ------------------------ Camera and Cinematics ------------------------
-- -----------------------------------------------------------------------

---@public
--- Teleports all units of the given player capable of retreating into retreat position and starts the retreat. 
--- The actual hyperspace jump is executed only after the given delay. This neither starts a countdown nor does it end the battle.
---@param playerID number
---@param delay number
function Start_Cinematic_Space_Retreat(playerID, delay)
end

---@public
--- Ends the automatic cinematic camera.
function End_Cinematic_Mode()
end

---@public
--- Starts the automatic cinematic camera.
function Start_Cinematic_Mode()
end

---@public
--- Used in campaign openings to have a cinematic space scene when a ground map is loaded.
---@param on boolean
function Set_Cinematic_Environment(on)
end

---@public
--- Used in campaign openings to have a cinematic space scene when a ground map is loaded.
---@param object GameObject
function Promote_To_Space_Cinematic_Layer(object)
end

---@public
---@param type_name string
---@param player_id number
---@param transport_pos GameObject|Position
---@param zangle number
---@param phase_mode number Landing = 1, Unloading = 2, Leaving = 3
---@param anim_delta number
---@param idle_time number
---@param persist number
---@param hint any Unknown
---@return GameObject The spawned transport
function Create_Cinematic_Transport(type_name, player_id, transport_pos, zangle, phase_mode, anim_delta, idle_time, persist, hint)
end

---@public
--- Zooms the cinematic camera in or out.
---@param transition_time number The time that the transition to the zoomed state takes
---@param magnification number Greater than 1 zooms out, less than 1 zooms in
function Cinematic_Zoom(transition_time, magnification)
end

---@public
--- Transition from the cinematic camera back to the tactical view.
---@param time number
function Transition_To_Tactical_Camera(time)
end

---@public
--- Transition the camera position to a new position. The position new is determined as an offset from some reference position.
---@param position GameObject|Position A reference position for the coordinate parameters
---@param transition_time number
---@param x_offset number Offset from the given position in x direction, or the distance to the given position depending on the following parameter
---@param y_offset number Offset from the given position in y direction, or pitch depending on the following parameter
---@param z_offset number Offset from the given position in y direction, or yaw depending on the following parameter
---@param euler_angles number Sets the previous parameters to cartesian coordinates (0), or spherical coordinates (1)
---@param attach_object GameObject|number A game object to attach the camera to. The camera will move with the object. Set to 0 to use no object
---@param use_object_orientation number Sets orientation of the used coordinate system to default (0) as seen in the map editor or to the orientation of the given object
---@param cinematic_animation number Play the given objects cinematic animation (1) or not (0)
function Transition_Cinematic_Camera_Key(position, transition_time, x_offset, y_offset, z_offset, euler_angles, attach_object, use_object_orientation, cinematic_animation)
end

---@public
--- Set the camera position. The position is determined as an offset from some reference position.
---@param position GameObject|Position A reference position for the coordinate parameters
---@param x_offset number Offset from the given position in x direction, or the distance to the given position depending on the following parameter
---@param y_offset number Offset from the given position in y direction, or pitch depending on the following parameter
---@param z_offset number Offset from the given position in y direction, or yaw depending on the following parameter
---@param euler_angles number Sets the previous parameters to cartesian coordinates (0), or spherical coordinates (1)
---@param attach_object GameObject|number A game object to attach the camera to. The camera will move with the object. Set to 0 to use no object
---@param use_object_orientation number Sets orientation of the used coordinate system to default (0) as seen in the map editor or to the orientation of the given object
---@param cinematic_animation number Play the given objects cinematic animation (1) or not (0)
function Set_Cinematic_Camera_Key(position, x_offset, y_offset, z_offset, euler_angles, attach_object, use_object_orientation, cinematic_animation)
end

---@public
--- Transition the camera target to a new position. The new position is determined as an offset from some reference position.
---@param position GameObject|Position A reference position for the coordinate parameters
---@param transition_time number
---@param x_offset number Offset from the given position in x direction, or the distance to the given position depending on the following parameter
---@param y_offset number Offset from the given position in y direction, or pitch depending on the following parameter
---@param z_offset number Offset from the given position in y direction, or yaw depending on the following parameter
---@param euler_angles number Sets the previous parameters to cartesian coordinates (0), or spherical coordinates (1)
---@param attach_object GameObject|number A game object to attach the camera to. The camera will move with the object. Set to 0 to use no object
---@param use_object_orientation number Sets orientation of the used coordinate system to default (0) as seen in the map editor or to the orientation of the given object
---@param cinematic_animation number Play the given objects cinematic animation (1) or not (0)
function Transition_Cinematic_Target_Key(position, transition_time, x_offset, y_offset, z_offset, euler_angles, attach_object, use_object_orientation, cinematic_animation)
end

---@public
--- Set the camera target. The target position is determined as an offset from some reference position.
---@param position GameObject|Position A reference position for the coordinate parameters
---@param x_offset number Offset from the given position in x direction, or the distance to the given position depending on the following parameter
---@param y_offset number Offset from the given position in y direction, or pitch depending on the following parameter
---@param z_offset number Offset from the given position in y direction, or yaw depending on the following parameter
---@param euler_angles number Sets the previous parameters to cartesian coordinates (0), or spherical coordinates (1)
---@param attach_object GameObject|number A game object to attach the camera to. The camera will move with the object. Set to 0 to use no object
---@param use_object_orientation number Sets orientation of the used coordinate system to default (0) as seen in the map editor or to the orientation of the given object
---@param cinematic_animation number Play the given objects cinematic animation (1) or not (0)
--- Set a target position for the camera to point at. If W is given, the camera will follow its movements. Without W the parameters R and S(?) won't work. If R is 1, the function uses W's coordinate system.
function Set_Cinematic_Target_Key(position, x_offset, y_offset, z_offset, euler_angles, attach_object, use_object_orientation, cinematic_animation)
end

---@public
--- End the cinematic camera and enable the command bar again.
function End_Cinematic_Camera()
end

---@public
--- Start the cinematic camera disabling the command bar.
---@param unknown boolean Default is true
function Start_Cinematic_Camera(unknown)
end

---@public
--- Point the camera to the given position. Can be used during camera sequences but only affects the tactical camera.
---@param position GameObject|Position
function Point_Camera_At(position)
end

---@public
--- Rotate the camera to the given angle. Takes the shortest direction. Can be used during camera sequences, but 
--- only affects the tactical camera.
---@param z_angle number The angle around the z axis giving the new orientation
---@param transition_time number The duration of the transition
function Rotate_Camera_To(z_angle, transition_time)
end

---@public
--- Rotates the camera around the z axis by the given amount of degrees. The sign of the angle determines the direction of the rotation. The rotation takes the given amount of time. 
---@param z_angle number
---@param transition_time number
function Rotate_Camera_By(z_angle, transition_time)
end

---@public
--- Zoom in the tactical camera either immediately or with a short transition.
---@param zoom number Float between 0 (zoomed in) and 1 (zoomed out)
---@param immediate number Set the zoom immediately (1) or use a short transition (0)
function Zoom_Camera(zoom, immediate)
end

---@public
--- Function and parameters unknown.
function Camera_To_Follow(...)
end

---@public
--- Scroll the tactical camera to the given position.
---@param position GameObject|Position
function Scroll_Camera_To(position)
end

---@public
--- Fade screen into blackness.
---@param time number
function Fade_Screen_Out(time)
end

---@public
--- Fade screen back in from blackness
---@param time number
function Fade_Screen_In(time)
end

---@public
--- Turn off blackness from fade
function Fade_Off()
end

---@public
--- Make screen black immediately
function Fade_On()
end

---@public
--- Move black bars at the top and bottom out of the screen
---@param time number
function Letter_Box_Out(time)
end

---@public
--- Move black bars at the top and bottom into the screen
---@param time number
function Letter_Box_In(time)
end

---@public
--- Get rid of black bars immediately
function Letter_Box_Off()
end

---@public
--- Show black bars immediately
function Letter_Box_On()
end

---@public
--- Hides and disables all units not marked by In_End_Cinematic. Ignores space stations and structures.
function Do_End_Cinematic_Cleanup()
end

