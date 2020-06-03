-- ==================================================================
-- ==================================================================
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
-- ==================================================================
-- ==================================================================

---@class TaskForce
local TaskForce = {}
---@public
---@param targetingPrioritySetName string The name of the Targeting Priority Set as defined in the XML.
---@param categoryMask string The Category Mask of the units contained within the TaskForce to attach the Targeting Priority Set to.
---Attaches a given Targeting Priority Set to all units in the TaskForce that match the given Category Mask.
function TaskForce.Set_Targeting_Priorities(targetingPrioritySetName, categoryMask)
end
---@public
---@return GameObject[] The units contained within the Task Force.
---Returns all units that are part of the task force. WARNING: The units may not be valid.
function TaskForce.Get_Unit_Table()
end
---@public
---@return number The amount of units in the TaskForce's unit table.
---Returns the number of units in a task force.
function TaskForce.Get_Force_Count()
end
---@public
---@param target GameObject The object to get the distance to.
---@return number The distance to the given game object.
function TaskForce.Get_Distance(target)
end
---@public
---@overload fun()
---@overload fun(stage:PlanetObject)
---@param stage PlanetObject The planet to produce the taskforce on.
---@param unknownArgument boolean TODO: Find out what this does.
---Produces a task force.
function TaskForce.Produce_Force(stage, unknownArgument)
end
---@public
---@param target GameObject The target to attack.
---Orders the task force to attack a given target.
function TaskForce.Attack_Target(target)
end
---@public
---@param target GameObject The target to attack.
---@param unknownArgument number TODO: Find out what this does.
---@param shouldPathThroughObstacle boolean Should the task force ignore space obstacles.
---Orders the task force to attack a given target.
function TaskForce.Attack_Target(target, unknownArgument, shouldPathThroughObstacle)
end
---@public
---@param target GameObject The target to guard.
---Orders the task force to guard a given target.
function TaskForce.Guard_Target(target)
end
---@public
---@param target GameObject The target to reinforce (usually a position).
-----Orders the task force to reinforce (at) a given target.
function TaskForce.Reinforce(target)
end
---@public
---@param target GameObject The target to move to (usually a position).
-----Orders the task force to move to a given target.
function TaskForce.Move_To(target)
end
---@public
---@param gameObject GameObject The object to release.
---Releases a given unit from the task force.
function TaskForce.Release_Unit(gameObject)
end
---@public
---@param abilityName string The ability to (de-)activate.
---@param shouldActivate boolean Activates the ability if true, deactivates if false.
---Activates or deactivates a given ability.
function TaskForce.Activate_Ability(abilityName, shouldActivate)
end
---@public
---@return (PlanetObject|Position) The task force's staging area.
---Returns the task force's staging area.
function TaskForce.Get_Stage()
end
---@public
---Lands the task force's units
function TaskForce.Land_Units()
end
---@public
---Launches the task force's units into orbit.
function TaskForce.Launch_Units()
end
---@public
---@return boolean Returns true if the invasion succeeded, false if the invasion failed.
---Invades a planet.
function TaskForce.Invade()
end
---@public
---@param isRemovable boolean
---Adjusts whether the Goal the task force is associated with can be removed before it's been achieved.
function TaskForce.Set_As_Goal_System_Removable(isRemovable)
end

---@class GameObject
---A wrapper around a single instance of a generic GameObjectType
local GameObject = {}
---@public
---@return GameObjectType
---Gets the type of the current game object wrapper.
function GameObject.Get_Type()
end
---@public
---@param propertyFlag string A string representation of 1..n properties.
---@return boolean
---Tests if a GameObject has 1..n flags of the bitfield defined in GameObjectPropertiesType.xml set. Valid inputs are single items `"Turret"` or many `"Turret | InBase"`.
function GameObject.Has_Property(propertyFlag)
end
---@public
---@return PlayerObject The PlayerObject owning the GameObject
---Returns the owner of the game object.
function GameObject.Get_Owner()
end
---@public
---@return Position
---Returns the current position of the object in the world.
function GameObject.Get_Position()
end
---@public
---@param categoryMask string The category mask to test for. Can be a single mask, or a combination: "CAPITAL" or "CAPITAL | SPACE_HERO"
---@return boolean
---Tests whether a given game object has a given category mask assigned to it.
function GameObject.Is_Category(categoryMask)
end
---@public
---@return (GameObject|nil)
---Returns a game object if the unit has an attack target, nil else.
function GameObject.Get_Attack_Target()
end
---@public
---@param abilityName string The ability to (de-)activate.
---@param shouldActivate boolean Activates the ability if true, deactivates if false.
---Activates or deactivates a given ability.
function GameObject.Activate_Ability(abilityName, shouldActivate)
end
---@public
---@return boolean
---Tests whether a unit has active orders.
function GameObject.Has_Active_Orders()
end
---@public
---@return number
---Returns a number between 0 and 1 representing the current percentage of hull points left.
function GameObject.Get_Hull()
end
---@public
---@return number
---Returns a number between 0 and 1 representing the current percentage of shield points left.
function GameObject.Get_Shield()
end
---@public
---@param target GameObject|Position
---@return number
function GameObject.Get_Distance(target)
end
---@public
---@overload fun(target:Position|GameObject|PlanetObject):CommandBlock
---@param unit_list GameObject[]
---@param target Position|GameObject|PlanetObject
---@return CommandBlock
---Orders the GameObject to move to the given target. Returns a CommandBlock is marked as finished when the GameObject has arrived at target
function GameObject.Move_To(unit_list, target)
end
---@public
---Despawns the GameObject
function GameObject.Despawn()
end
---@public
---@param new_owner PlayerObject The PlayerObject the ownership will be transferred to
---Transfers ownership of a GameObject over to another Player
function GameObject.Change_Owner(new_owner)
end
---@public
---@param behavior_id int The ID of the behavior
---@param enable boolean Enables the behavior if set to true. Disables it if it's false.
---Enables or disables a behavior defined in the XML entry of the GameObject
function GameObject.Enable_Behavior(behavior_id, enable)
end
---@public
---@return GameObject Returns the parent object of the given GameObject. In galactic conquest this will return either a planet, a company or a container. In tactical mode it returns the squadron for single fighters.
function GameObject.Get_Parent_Object()
end
---@public
---@return PlanetObject
---Returns the Planet the GameObject is located on. Can be nil if the GameObject is in Hyperspace
function GameObject.Get_Planet_Location()
end
---@public
---@param hidden boolean Determines whether the GameObject is visible or invisible
---Makes the GameObject visible or invisible
function GameObject.Hide(hidden)
end
---@public
---@param animation_name string The name of the animation
---@param should_repeat boolean Determines whether the animation gets repeated
---@param animation_index number The index of the animation, e.g. `3` to play `deploy_03.ala`
---Plays an animation on a GameObject. The animation must be present in the 3D model
function GameObject.Play_Animation(animation_name, should_repeat, animation_index)
end
---@public
---@param abilityName string
---@return boolean
function GameObject.Is_Ability_Autofire(abilityName)
end
---@public
---@param sfxEventName string
function GameObject.Play_SFX_Event(sfxEventName)
end
---@public
---@return boolean
function GameObject.Is_Transport()
end
---@public
---@param planet PlanetObject
---@return boolean
function GameObject.Can_Land_On_Planet(planet)
end
---@public
function GameObject.Get_Game_Scoring_Type()
end
---@public
---@param abilityName string
---@return boolean
function GameObject.Is_Ability_Ready(abilityName)
end
---@public
---@param position Position|GameObject
function GameObject.Divert(position)
end
---@public
---@return boolean
function GameObject.Is_On_Diversion()
end
---@public
---@return GameObject[]
function GameObject.Get_Garrisoned_Units()
end
---@public
---@param target GameObject
---@return boolean
function GameObject.Should_Switch_Weapons(target)
end
---@public
---@param allow_spawn boolean
function GameObject.Set_Garrison_Spawn(allow_spawn)
end
---@public
---@param disable boolean
function GameObject.Disable_Capture(disable)
end
---@public
---@overload fun(damageAmount:number)
---@param damageAmount number
---@param hardpoint string
function GameObject.Take_Damage(damageAmount, hardpoint)
end
---@public
---@overload fun(callbackFunction:function, range:number)
---@param callbackFunction fun(obj:GameObject, trigger:GameObject)
---@param range number
---@param player PlayerObject
function GameObject.Event_Object_In_Range(callbackFunction, range, player)
end
---@public
---@param callbackFunction function
function GameObject.Cancel_Event_Object_In_Range(callbackFunction)
end

---@class Position
---Represents a position in the world.
local Position = {}

---@class GameObjectType
---A generic GameObjectType that represents a C++ GameObjectTypeClass
local GameObjectType = {}
---@public
---@return string
---Retrieves the XML name of a GameObjectType
function GameObjectType.Get_Name()
end
---@public
function GameObjectType.Is_Hero()
end
---@public
function GameObjectType.Get_Build_Cost()
end

---@class GameObjectWrapper
---A generic wrapper around a GameObject
local GameObjectWrapper = {}
---@public
---Returns `true` if the contained game object is valid.
---@return boolean
function GameObjectWrapper.Is_Valid()
end

---@class PlayerObject
---A wrapper around a player (AI or human) taking control of a faction.
local PlayerObject = {}
---@public
---@return boolean
---Tests whether a PlayerObject is human.
function PlayerObject.Is_Human()
end
---@public
---@param playerObject PlayerObject
---@return boolean
---Tests whether a player object is an enemy of another player object.
function PlayerObject.Is_Enemy(playerObject)
end
---@public
---@param amount number
function PlayerObject.Give_Money(amount)
end
---@public
function PlayerObject.Get_ID()
end
---@public
function PlayerObject.Is_Ally(playerObject)
end

---@class PlanetObject
local PlanetObject = {}
---@public
---@return boolean
function PlanetObject.Get_Is_Planet_AI_Usable()
end

---@class GameScoringType
local GameScoringType = {}
---@public
---@return number
function GameScoringType.Get_Score_Cost_Credits()
end
---@public
---@return number
function GameScoringType.Get_Combat_Rating()
end
---@public
---@return number
function GameScoringType.Get_Build_Cost()
end

---@class CommandBlock
local CommandBlock = {}

---@public
---@return table
---Returns the result of the CommandBlock
function CommandBlock.Result()
end

---@public
---@return boolean
---Returns a boolean indicating whether the CommandBlock has finished its command
function CommandBlock.IsFinished()
end

--return TaskForce, GameObject, Position, GameObjectType, GameObjectWrapper, PlayerObject, PlanetObject, GameScoringType, CommandBlock
