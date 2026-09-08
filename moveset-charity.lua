-- Wavedashing Moveset
gCharityStates = {}
for i = 0, MAX_PLAYERS - 1 do
    gCharityStates[i] = {
        wavedashVelX = 0,
        wavedashVelY = 0,
        wavedashVelZ = 0,
    }
end

local ACT_CHARITY_WAVEDASH = allocate_mario_action(ACT_GROUP_AIRBORNE | ACT_FLAG_AIR)
local ACT_CHARITY_WAVEDASH_SLIDE = allocate_mario_action(ACT_GROUP_MOVING | ACT_FLAG_MOVING)

local wavedashMaxSpeed = 60
local wavedashDecelGround = 0.7
local wavedashDecelAirMult = 0.85
local wavedashDisableActs = {
    [ACT_CHARITY_WAVEDASH] = true,
    [ACT_DIVE] = true,
    [ACT_BACKWARD_ROLLOUT] = true,
    [ACT_STEEP_JUMP] = true,
}
local wavedashKillActs = {
    [ACT_WALL_KICK_AIR] = true,
    [ACT_SOFT_BONK] = true,
    [ACT_GROUND_BONK] = true
}
local function act_charity_wavedash(m)
    local e = gCharityStates[m.playerIndex]
    if m.actionTimer == 0 then
        local dodgeMultY = -0.7
        if m.controller.buttonDown & A_BUTTON ~= 0 then
            dodgeMultY = 1
        end
        e.wavedashVelX = sins(m.intendedYaw)*wavedashMaxSpeed*(m.intendedMag/32)
        e.wavedashVelY = dodgeMultY*wavedashMaxSpeed
        e.wavedashVelZ = coss(m.intendedYaw)*wavedashMaxSpeed*(m.intendedMag/32)

        set_mario_animation(m, CHAR_ANIM_WING_CAP_FLY)
    end

    e.wavedashVelX = e.wavedashVelX * wavedashDecelAirMult
    e.wavedashVelY = e.wavedashVelY * wavedashDecelAirMult
    e.wavedashVelZ = e.wavedashVelZ * wavedashDecelAirMult

    m.vel.x = 0
    m.vel.y = 0
    m.vel.z = 0
    m.forwardVel = 0
    m.slideVelX = 0
    m.slideVelZ = 0

    m.marioObj.header.gfx.angle.y = m.faceAngle.y + 0x8000
    m.marioObj.header.gfx.angle.x = m.faceAngle.x + 0x8000
    
    if m.actionTimer > 15 then
        set_mario_action(m, ACT_BACKWARD_ROLLOUT, 0)
    end

    local step = perform_air_step(m, AIR_STEP_NONE)
    if step == AIR_STEP_LANDED then
        set_mario_action(m, ACT_CHARITY_WAVEDASH_SLIDE, 0)
    end
    m.actionTimer = m.actionTimer + 1

    if m.pos.y + e.wavedashVelX + m.marioObj.hitboxHeight < m.ceilHeight then
        m.pos.y = m.pos.y + e.wavedashVelY
    else
        m.pos.y = m.ceilHeight - m.marioObj.hitboxHeight
    end

    m.pos.x = m.pos.x + e.wavedashVelX
    m.pos.z = m.pos.z + e.wavedashVelZ
end

local function act_charity_wavedash_slide(m)
    local e = gCharityStates[m.playerIndex]
    if math.sqrt(e.wavedashVelX^2 + e.wavedashVelZ^2) > 1 then
        e.wavedashVelX = clamp_soft(e.wavedashVelX, 0, 0, wavedashDecelGround)
        e.wavedashVelZ = clamp_soft(e.wavedashVelZ, 0, 0, wavedashDecelGround)
        e.wavedashVelY = 0
    else
        set_mario_action(m, ACT_CROUCHING, 0)
    end

    perform_ground_step(m)
    set_mario_animation(m, CHAR_ANIM_CROUCHING)

    if m.controller.buttonPressed & A_BUTTON ~= 0 then
        m.vel.x = e.wavedashVelX
        m.vel.z = e.wavedashVelZ
        mario_update_forward_vel_to_x_y(m)
        set_mario_action(m, ACT_DOUBLE_JUMP, 0)
    end

    if m.controller.buttonPressed & B_BUTTON ~= 0 then
        m.vel.x = e.wavedashVelX
        m.vel.z = e.wavedashVelZ
        mario_update_forward_vel_to_x_y(m)
        set_mario_action(m, ACT_MOVE_PUNCHING, 0)
    end

    m.pos.x = m.pos.x + e.wavedashVelX
    m.pos.y = m.pos.y + e.wavedashVelY
    m.pos.z = m.pos.z + e.wavedashVelZ
end

hook_mario_action(ACT_CHARITY_WAVEDASH, act_charity_wavedash)
hook_mario_action(ACT_CHARITY_WAVEDASH_SLIDE, act_charity_wavedash_slide)

local function charity_update(m)
    local e = gCharityStates[m.playerIndex]
    if m.controller.buttonPressed & L_TRIG ~= 0 and m.action & ACT_FLAG_AIR ~= 0 and not wavedashDisableActs[m.action] then
        set_mario_action(m, ACT_CHARITY_WAVEDASH, 0)
    end

    -- Update Wavedash

    if wavedashKillActs[m.action] then
        e.wavedashVelX = 0
        e.wavedashVelY = 0
        e.wavedashVelZ = 0
    end
end

local function charity_before_action(m, nextAct)
    if nextAct == ACT_RIDING_SHELL_GROUND then
        return set_mario_action(m, ACT_SHELL_RUSH_RIDING_SHELL_GROUND, 0)
    end
end

_G.charSelect.character_hook_moveset(CT_CHARITY, HOOK_MARIO_UPDATE, charity_update)
_G.charSelect.character_hook_moveset(CT_CHARITY, HOOK_BEFORE_SET_MARIO_ACTION, charity_before_action)