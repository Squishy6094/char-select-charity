local ACT_WALL_CLIMB = allocate_mario_action(ACT_GROUP_AIRBORNE | ACT_FLAG_AIR)

gCherryStates = {}
for i = 0, MAX_PLAYERS - 1 do
    gCherryStates[i] = {
        wallClimbs = 3
    }
end

local wallRange = 100
---@param m MarioState
local function act_wall_climb(m)
    local e = gCherryStates[m.playerIndex]
    local step = perform_air_step(m, AIR_STEP_NONE)

    if step == AIR_STEP_LANDED then
        return set_mario_action(m, ACT_FREEFALL_LAND, 0)
    end

    local bottomWall = collision_find_surface_on_ray(m.pos.x, m.pos.y + 30, m.pos.z, sins(m.faceAngle.y)*wallRange, 0, coss(m.faceAngle.y)*wallRange).surface
    local topWall = collision_find_surface_on_ray(m.pos.x, m.pos.y + 80, m.pos.z, sins(m.faceAngle.y)*wallRange, 0, coss(m.faceAngle.y)*wallRange).surface

    if bottomWall and not topWall then
        m.forwardVel = 10
        return set_mario_action(m, ACT_FORWARD_ROLLOUT, 0)
    end

    if m.actionState == 0 then
        m.vel.y = 50
        m.actionState = m.actionState + 1
        m.actionTimer = 0
    elseif m.actionState == 1 then
        if m.input & INPUT_A_PRESSED ~= 0 then
            m.vel.y = 50
            m.forwardVel = 30
            m.faceAngle.y = m.faceAngle.y + 0x8000
            return set_mario_action(m, ACT_WALL_KICK_AIR, 0)
        end

        if m.actionTimer < 45 then
            set_character_animation(m, CHAR_ANIM_CRAWLING)
            local wallAngle = atan2s(m.wallNormal.z, m.wallNormal.x) + 0x8000
            m.marioObj.header.gfx.angle.y = wallAngle
            m.marioObj.header.gfx.angle.x = -0x4000
            m.marioObj.header.gfx.pos.y = m.pos.y + 80
            m.marioObj.header.gfx.pos.x = m.pos.x + sins(wallAngle)*50
            m.marioObj.header.gfx.pos.z = m.pos.z + coss(wallAngle)*50

            local climbAccel = math.clamp(1 - (m.actionTimer/40), 0, 1)
            m.vel.y = climbAccel*25
            m.marioObj.header.gfx.animInfo.animAccel = 0x10000*(0.5 - climbAccel*0.5)*40
            if math.round(m.marioObj.header.gfx.animInfo.animAccel)%0x20000 < 1/30 then
                play_sound(SOUND_ACTION_QUICKSAND_STEP, m.marioObj.header.gfx.cameraToObject)
            end
        else
            set_character_animation(m, CHAR_ANIM_START_WALLKICK)
            m.marioObj.header.gfx.angle.y = m.faceAngle.y + 0x8000
            m.particleFlags = m.particleFlags | PARTICLE_DUST
            m.vel.y = math.max(m.vel.y - 1, -30)
        end

        if m.input & INPUT_B_PRESSED ~= 0 and e.wallClimbs > 0 then
            play_character_sound(m, CHAR_SOUND_YAH_WAH_HOO)
            m.vel.y = math.max(m.vel.y, 0) + 30
            e.wallClimbs = e.wallClimbs - 1
            m.actionState = m.actionState + 1
        end
    elseif m.actionState == 2 then
        set_character_animation(m, CHAR_ANIM_DOUBLE_JUMP_RISE)
        m.vel.y = m.vel.y - 3
        if m.vel.y <= -5 then
            m.actionState = 0
        end
    end

    m.forwardVel = 0
    m.vel.x = 0
    m.vel.z = 0
    m.actionTimer = m.actionTimer + 1
end

local function act_wall_climb_gravity(m)
    return 0
end

hook_mario_action(ACT_WALL_CLIMB, {every_frame = act_wall_climb, gravity = act_wall_climb_gravity})

local function cherry_update(m)
    local e = gCherryStates[m.playerIndex]
    if m.action & ACT_FLAG_AIR == 0 then
        e.wallClimbs = 3
    end
end

local function cherry_before_action(m, nextAct)
    if nextAct == ACT_SOFT_BONK then
        return set_mario_action(m, ACT_WALL_CLIMB, 0)
    end
end

charSelect.character_hook_moveset(CT_CHERRY, HOOK_MARIO_UPDATE, cherry_update)
charSelect.character_hook_moveset(CT_CHERRY, HOOK_BEFORE_SET_MARIO_ACTION, cherry_before_action)