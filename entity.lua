local components_table = {
    AIAttackComponent = {
        use_probability = {},
        min_distance = {},
        max_distance = {},
        angular_range_deg = {},
        state_duration_frames = {},
        frames_between = {},
        frames_between_global = {},
        animation_name = {},
        attack_landing_ranged_enabled = {},
        attack_ranged_action_frame = {},
        attack_ranged_offset_x = {},
        attack_ranged_offset_y = {},
        attack_ranged_root_offset_x = {},
        attack_ranged_root_offset_y = {},
        attack_ranged_use_message = {},
        attack_ranged_predict = {},
        attack_ranged_entity_file = {},
        attack_ranged_entity_count_min = {},
        attack_ranged_entity_count_max = {},
        attack_ranged_use_laser_sight = {},
        attack_ranged_aim_rotation_enabled = {},
        attack_ranged_aim_rotation_speed = {},
        attack_ranged_aim_rotation_shooting_ok_angle_deg = {},
        mRangedAttackCurrentAimAngle = {},
        mNextFrameUsable = {},
    },
    AIComponent = {
        TEMP_TEMP_TEMP = {},
        data = {},
    },
    AbilityComponent = {
        cooldown_frames = {},
        entity_file = {},
        sprite_file = {},
        entity_count = {},
        never_reload = {},
        reload_time_frames = {},
        mana = {},
        mana_max = {},
        mana_charge_speed = {},
        rotate_in_hand = {},
        rotate_in_hand_amount = {},
        rotate_hand_amount = {},
        fast_projectile = {},
        swim_propel_amount = {},
        max_charged_actions = {},
        charge_wait_frames = {},
        item_recoil_recovery_speed = {},
        item_recoil_max = {},
        item_recoil_offset_coeff = {},
        item_recoil_rotation_coeff = {},
        base_item_file = {},
        use_entity_file_as_projectile_info_proxy = {},
        click_to_use = {},
        stat_times_player_has_shot = {},
        stat_times_player_has_edited = {},
        shooting_reduces_amount_in_inventory = {},
        throw_as_item = {},
        simulate_throw_as_item = {},
        max_amount_in_inventory = {},
        amount_in_inventory = {},
        drop_as_item_on_death = {},
        ui_name = {},
        use_gun_script = {},
        is_petris_gun = {},
        add_these_child_actions = {},
        current_slot_durability = {},
        slot_consumption_function = {},
        mChargeCount = {},
        mIsInitialized = {},
        gun_config = {
            actions_per_round = {},
            shuffle_deck_when_empty = {},
            reload_time = {},
            deck_capacity = {},
        },
        gunaction_config = {
            fire_rate_wait = {},
        },
        mNextFrameUsable = {},
        mCastDelayStartFrame = {},
        mAmmoLeft = {},
        mReloadFramesLeft = {},
        mReloadNextFrameUsable = {},
        mNextChargeFrame = {},
        mItemRecoil = {},
    },
    AdvancedFishAIComponent = {
        move_check_range_min = {},
        move_check_range_max = {},
        flock = {},
        avoid_predators = {},
        mHasTargetDirection = {},
        mTargetPos = {},
        mTargetVec = {},
        mLastFramesMovementAreaMin = {},
        mLastFramesMovementAreaMax = {},
        mNumFailedTargetSearches = {},
        mNextFrameCheckAreWeStuck = {},
        mNextFrameCheckFlockWants = {},
        mNextFramePredatorAvoidance = {},
        mScared = {},
        mWantsToBeInFlock = {},
    },
    AltarComponent = {
        recognized_entity_tags = {},
        uses_remaining = {},
        good_fx_material = {},
        neutral_fx_material = {},
        evil_fx_material = {},
        m_recognized_entity_tags = {},
        m_recognized_entity_tags_count = {},
        m_current_entity_tags = {},
    },
    AnimalAIComponent = {
        ai_state = {},
        ai_state_timer = {},
        preferred_job = {},
        escape_if_damaged_probability = {},
        attack_if_damaged_probability = {},
        eye_offset_x = {},
        eye_offset_y = {},
        attack_only_if_attacked = {},
        dont_counter_attack_own_herd = {},
        creature_detection_range_x = {},
        creature_detection_range_y = {},
        creature_detection_angular_range_deg = {},
        creature_detection_check_every_x_frames = {},
        max_distance_to_cam_to_start_hunting = {},
        pathfinding_max_depth_no_target = {},
        pathfinding_max_depth_has_target = {},
        aggressiveness_min = {},
        aggressiveness_max = {},
        tries_to_ranged_attack_friends = {},
        attack_melee_enabled = {},
        attack_dash_enabled = {},
        attack_landing_ranged_enabled = {},
        attack_ranged_enabled = {},
        attack_knockback_multiplier = {},
        is_static_turret = {},
        attack_melee_max_distance = {},
        attack_melee_action_frame = {},
        attack_melee_frames_between = {},
        attack_melee_damage_min = {},
        attack_melee_damage_max = {},
        attack_melee_impulse_vector_x = {},
        attack_melee_impulse_vector_y = {},
        attack_melee_impulse_multiplier = {},
        attack_melee_offset_x = {},
        attack_melee_offset_y = {},
        attack_melee_finish_enabled = {},
        attack_melee_finish_action_frame = {},
        attack_dash_distance = {},
        attack_dash_frames_between = {},
        attack_dash_damage = {},
        attack_dash_speed = {},
        attack_dash_lob = {},
        attack_ranged_min_distance = {},
        attack_ranged_max_distance = {},
        attack_ranged_action_frame = {},
        attack_ranged_offset_x = {},
        attack_ranged_offset_y = {},
        attack_ranged_use_message = {},
        attack_ranged_predict = {},
        attack_ranged_entity_file = {},
        attack_ranged_entity_count_min = {},
        attack_ranged_entity_count_max = {},
        attack_ranged_use_laser_sight = {},
        attack_ranged_laser_sight_beam_kind = {},
        attack_ranged_aim_rotation_enabled = {},
        attack_ranged_aim_rotation_speed = {},
        attack_ranged_aim_rotation_shooting_ok_angle_deg = {},
        attack_ranged_state_duration_frames = {},
        hide_from_prey = {},
        hide_from_prey_target_distance = {},
        hide_from_prey_time = {},
        food_eating_create_particles = {},
        eating_area_radius_x = {},
        eating_area_radius_y = {},
        mouth_offset_x = {},
        mouth_offset_y = {},
        defecates_and_pees = {},
        butt_offset_x = {},
        butt_offset_y = {},
        pee_velocity_x = {},
        pee_velocity_y = {},
        needs_food = {},
        sense_creatures = {},
        sense_creatures_through_walls = {},
        can_fly = {},
        can_walk = {},
        path_distance_to_target_node_to_turn_around = {},
        path_cleanup_explosion_radius = {},
        max_distance_to_move_from_home = {},
        attack_melee_finish_config_explosion = {
            camera_shake = {},
            explosion_radius = {},
            explosion_sprite = {},
            explosion_sprite_lifetime = {},
            create_cell_probability = {},
            hole_destroy_liquid = {},
            hole_enabled = {},
            particle_effect = {},
            damage = {},
            damage_mortals = {},
            physics_explosion_power = {
                min = {},
                max = {},
            },
            physics_throw_enabled = {},
            shake_vegetation = {},
            sparks_enabled = {},
            sparks_count_min = {},
            sparks_count_max = {},
            stains_radius = {},
            stains_enabled = {},
        },
        attack_ranged_frames_between = {},
        food_material = {},
        food_particle_effect_material = {},
        mAggression = {},
        mAiStateStack = {},
        mAiStateLastSwitchFrame = {},
        mAiStatePrev = {},
        mCreatureDetectionNextCheck = {},
        mGreatestThreat = {},
        mGreatestPrey = {},
        mSelectedMultiAttack = {},
        mHasFoundPrey = {},
        mHasBeenAttackedByPlayer = {},
        mHasStartedAttacking = {},
        mNearbyFoodCount = {},
        mEatNextFrame = {},
        mEatTime = {},
        mFrameNextGiveUp = {},
        mLastFramesMovementAreaMin = {},
        mLastFramesMovementAreaMax = {},
        mFoodMaterialId = {},
        mFoodParticleEffectMaterialId = {},
        mNextJumpLob = {},
        mNextJumpTarget = {},
        mNextJumpHasVelocity = {},
        mLastFrameJumped = {},
        mFramesWithoutTarget = {},
        mLastFrameCanDamageOwnHerd = {},
        mHomePosition = {},
        mLastFrameAttackWasDone = {},
        mNextFrameCanCallFriend = {},
        mNextFrameRespondFriend = {},
        mHasNoticedPlayer = {},
        mRangedAttackCurrentAimAngle = {},
        mRangedAttackNextFrame = {},
        mMeleeAttackNextFrame = {},
        mNextMeleeAttackDamage = {},
        mMeleeAttacking = {},
        mMeleeAttackDashNextFrame = {},
        mCurrentJob = {},
    },
    ArcComponent = {
        lifetime = {},
        type = {
            LIGHTNING = {},
        },
        material = {},
        mArcTarget = {},
    },
    AreaDamageComponent = {
        circle_radius = {},
        damage_per_frame = {},
        update_every_n_frame = {},
        entity_responsible = {},
        death_cause = {},
        entities_with_tag = {},
        aabb_min = {
            x = {},
            y = {},
        },
        aabb_max = {
            x = {},
            y = {},
        },
        damage_type = {
            DAMAGE_CURSE = {},
            DAMAGE_ICE = {},
            DAMAGE_ELECTRICITY = {},
            DAMAGE_PROJECTILE = {},
            DAMAGE_MELEE = {},
            DAMAGE_EXPLOSION = {},
            DAMAGE_FIRE = {},
            DAMAGE_SLICE = {},
        },
    },
    AudioComponent = {
        file = {},
        event_root = {},
        audio_physics_material = {},
        set_latest_event_position = {},
        remove_latest_event_on_destroyed = {},
        send_message_on_event_dead = {},
        play_only_if_visible = {},
        m_audio_physics_material = {},
        m_latest_source = {},
    },
    AudioListenerComponent = {
        z = {},
    },
    AudioLoopComponent = {
        file = {},
        event_name = {},
        auto_play = {},
        auto_play_if_enabled = {},
        play_on_component_enable = {},
        calculate_material_lowpass = {},
        set_speed_parameter = {},
        set_speed_parameter_only_based_on_x_movement = {},
        set_speed_parameter_only_based_on_y_movement = {},
        volume_autofade_speed = {},
        m_volume = {},
        m_intensity = {},
        m_source = {},
    },
    BlackHoleComponent = {
        radius = {},
        particle_attractor_force = {},
        damage_probability = {},
        damage_amount = {},
        m_particle_attractor_id = {},
    },
    BookComponent = {
        TEMP_TEMPY = {},
        TEMP_TEMP_TEMP = {},
    },
    BossDragonComponent = {
        speed = {},
        speed_hunt = {},
        acceleration = {},
        direction_adjust_speed = {},
        direction_adjust_speed_hunt = {},
        gravity = {},
        tail_gravity = {},
        part_distance = {},
        ground_check_offset = {},
        eat_ground_radius = {},
        eat_ground = {},
        hitbox_radius = {},
        bite_damage = {},
        target_kill_radius = {},
        target_kill_ragdoll_force = {},
        hunt_box_radius = {},
        random_target_box_radius = {},
        new_hunt_target_check_every = {},
        new_random_target_check_every = {},
        jump_cam_shake = {},
        jump_cam_shake_distance = {},
        eat_anim_wait_mult = {},
        projectile_1 = {},
        projectile_1_count = {},
        projectile_2 = {},
        projectile_2_count = {},
        ragdoll_filename = {},
        mTarget = {},
        mTargetVec = {},
        mGravVelocity = {},
        mSpeed = {},
        mRandomTarget = {},
        mLastLivingTargetPos = {},
        mNextTargetCheckFrame = {},
        mNextHuntTargetCheckFrame = {},
        mOnGroundPrev = {},
        mMaterialIdPrev = {},
        mPhase = {},
        mNextPhaseSwitchTime = {},
        mPartDistance = {},
        mIsInitialized = {},
    },
    CameraBoundComponent = {
        enabled = {},
        distance = {},
        distance_border = {},
        max_count = {},
        freeze_on_distance_kill = {},
        freeze_on_max_count_kill = {},
    },
    CardinalMovementComponent = {
        horizontal_movement = {},
        vertical_movement = {},
        intercardinal_movement = {},
        mPrevPos = {},
    },
    CellEaterComponent = {
        radius = {},
        eat_probability = {},
        only_stain = {},
        eat_dynamic_physics_bodies = {},
        limited_materials = {},
        ignored_material_tag = {},
        ignored_material = {},
        materials = {},
    },
    CharacterCollisionComponent = {
        getting_crushed_threshold = {},
        moving_up_before_getting_crushed_threshold = {},
        getting_crushed_counter = {},
        stuck_in_ground_counter = {},
        mCollidedHorizontally = {},
    },
    CharacterDataComponent = {
        platforming_type = {},
        mass = {},
        buoyancy_check_offset_y = {},
        liquid_velocity_coeff = {},
        gravity = {},
        fly_recharge_spd = {},
        fly_recharge_spd_ground = {},
        flying_needs_recharge = {},
        flying_in_air_wait_frames = {},
        flying_recharge_removal_frames = {},
        climb_over_y = {},
        check_collision_max_size_x = {},
        check_collision_max_size_y = {},
        is_on_ground = {},
        is_on_slippery_ground = {},
        ground_stickyness = {},
        effect_hit_ground = {},
        eff_hg_damage_min = {},
        eff_hg_damage_max = {},
        eff_hg_position_x = {},
        eff_hg_position_y = {},
        eff_hg_size_x = {},
        eff_hg_size_y = {},
        eff_hg_velocity_min_x = {},
        eff_hg_velocity_max_x = {},
        eff_hg_velocity_min_y = {},
        eff_hg_velocity_max_y = {},
        eff_hg_offset_y = {},
        eff_hg_update_box2d = {},
        eff_hg_b2force_multiplier = {},
        destroy_ground = {},
        send_transform_update_message = {},
        collision_aabb_min_x = {},
        collision_aabb_max_x = {},
        collision_aabb_min_y = {},
        collision_aabb_max_y = {},
        fly_time_max = {},
        mFramesOnGround = {},
        mLastFrameOnGround = {},
        mVelocity = {},
        mFlyingTimeLeft = {},
        mCollidedHorizontally = {},
    },
    CharacterPlatformingComponent = {
        jump_velocity_x = {},
        jump_velocity_y = {},
        jump_keydown_buffer = {},
        fly_speed_mult = {},
        fly_speed_change_spd = {},
        fly_model_player = {},
        fly_smooth_y = {},
        accel_x = {},
        accel_x_air = {},
        pixel_gravity = {},
        swim_idle_buoyancy_coeff = {},
        swim_down_buoyancy_coeff = {},
        swim_up_buoyancy_coeff = {},
        swim_drag = {},
        swim_extra_horizontal_drag = {},
        mouse_look = {},
        mouse_look_buffer = {},
        keyboard_look = {},
        turning_buffer = {},
        animation_to_play = {},
        animation_to_play_next = {},
        run_animation_velocity_switching_threshold = {},
        run_animation_velocity_switching_enabled = {},
        turn_animation_frames_between = {},
        precision_jumping_max_duration_frames = {},
        velocity_min_x = {},
        velocity_max_x = {},
        velocity_min_y = {},
        velocity_max_y = {},
        run_velocity = {},
        fly_velocity_x = {},
        fly_speed_max_up = {},
        fly_speed_max_down = {},
        mExAnimationPos = {},
        mFramesInAirCounter = {},
        mIsPrecisionJumping = {},
        mPrecisionJumpingTime = {},
        mPrecisionJumpingSpeedX = {},
        mPrecisionJumpingTimeLeft = {},
        mFlyThrottle = {},
        mSmoothedFlyingTargetY = {},
        mJetpackEmitting = {},
        mNextTurnAnimationFrame = {},
        mFramesNotSwimming = {},
        mFramesSwimming = {},
        mShouldCrouch = {},
        mShouldCrouchPrev = {},
        mLastPostureSwitchFrame = {},
        mLookOverrideLastFrame = {},
        mLookOverrideDirection = {},
    },
    CharacterStatsComponent = {
        stats = {},
    },
    CollisionTriggerComponent = {
        width = {},
        height = {},
        radius = {},
        required_tag = {},
        remove_component_when_triggered = {},
        destroy_this_entity_when_triggered = {},
        timer_for_destruction = {},
        self_trigger = {},
        skip_self_frames = {},
        mTimer = {},
    },
    ConsumableTeleportComponent = {
        create_other_end = {},
        is_at_home = {},
        collision_radius = {},
        target_id = {},
        id = {},
        mNextUsableFrame = {},
        mHasOtherEnd = {},
        target_location = {},
    },
    ControllerGoombaAIComponent = {
        auto_turn_around_enabled = {},
        wait_to_turn_around = {},
        wall_hit_wait = {},
        check_wall_detection = {},
        wall_detection_aabb_min_x = {},
        wall_detection_aabb_max_x = {},
        wall_detection_aabb_min_y = {},
        wall_detection_aabb_max_y = {},
        check_floor_detection = {},
        floor_detection_aabb_min_x = {},
        floor_detection_aabb_max_x = {},
        floor_detection_aabb_min_y = {},
        floor_detection_aabb_max_y = {},
        mChangingDirectionCounter = {},
    },
    ControlsComponent = {
        polymorph_hax = {},
        polymorph_next_attack_frame = {},
        enabled = {},
        gamepad_indirect_aiming_enabled = {},
        gamepad_fire_on_thumbstick_extend = {},
        gamepad_fire_on_thumbstick_extend_threshold = {},
        mButtonDownFire = {},
        mButtonFrameFire = {},
        mButtonLastFrameFire = {},
        mButtonDownFire2 = {},
        mButtonFrameFire2 = {},
        mButtonDownAction = {},
        mButtonFrameAction = {},
        mButtonDownThrow = {},
        mButtonFrameThrow = {},
        mButtonDownInteract = {},
        mButtonFrameInteract = {},
        mButtonDownLeft = {},
        mButtonFrameLeft = {},
        mButtonDownRight = {},
        mButtonFrameRight = {},
        mButtonDownUp = {},
        mButtonFrameUp = {},
        mButtonDownDown = {},
        mButtonFrameDown = {},
        mButtonDownJump = {},
        mButtonFrameJump = {},
        mButtonDownRun = {},
        mButtonFrameRun = {},
        mButtonDownFly = {},
        mButtonFrameFly = {},
        mButtonDownDig = {},
        mButtonFrameDig = {},
        mButtonDownChangeItemR = {},
        mButtonFrameChangeItemR = {},
        mButtonCountChangeItemR = {},
        mButtonDownChangeItemL = {},
        mButtonFrameChangeItemL = {},
        mButtonCountChangeItemL = {},
        mButtonDownInventory = {},
        mButtonFrameInventory = {},
        mButtonDownHolsterItem = {},
        mButtonFrameHolsterItem = {},
        mButtonDownDropItem = {},
        mButtonFrameDropItem = {},
        mButtonDownKick = {},
        mButtonFrameKick = {},
        mButtonDownEat = {},
        mButtonFrameEat = {},
        mButtonDownLeftClick = {},
        mButtonFrameLeftClick = {},
        mButtonDownRightClick = {},
        mButtonFrameRightClick = {},
        mButtonDownTransformLeft = {},
        mButtonFrameTransformLeft = {},
        mButtonDownTransformRight = {},
        mButtonFrameTransformRight = {},
        mButtonDownTransformUp = {},
        mButtonFrameTransformUp = {},
        mButtonCountTransformUp = {},
        mButtonDownTransformDown = {},
        mButtonFrameTransformDown = {},
        mButtonCountTransformDown = {},
        mFlyingTargetY = {},
        mAimingVector = {},
        mAimingVectorNormalized = {},
        mAimingVectorNonZeroLatest = {},
        mGamepadAimingVectorRaw = {},
        mJumpVelocity = {},
        mMousePosition = {},
        mMousePositionRaw = {},
        mMousePositionRawPrev = {},
        mMouseDelta = {},
        mGamepadIndirectAiming = {},
        mGamePadCursorInWorld = {},
    },
    CrawlerAnimalComponent = {
        ray_length = {},
        ray_count = {},
        gravity = {},
        terminal_velocity = {},
        speed = {},
        give_up_area_radius = {},
        give_up_time = {},
        attack_from_ceiling_check_ray_length = {},
        attack_from_ceiling_check_every_n_frames = {},
        collision_damage = {},
        collision_damage_radius = {},
        collision_damage_frames_between = {},
        animate = {},
        mDir = {},
        mFrameNextGiveUp = {},
        mFrameNextDamage = {},
        mFrameNextAttackFromCeilingCheck = {},
        mMin = {},
        mMax = {},
        mPrevNonSnappedPosition = {},
        imPrevCellPosition = {},
        imPrevCellPosition2 = {},
        imPrevCellPosition3 = {},
        imPrevCellPosition4 = {},
        imPrevCellPosition5 = {},
        imPrevCellPosition6 = {},
        imPrevCellPosition7 = {},
        imPrevCellPosition8 = {},
        imLatestPosition = {},
        mPrevFalling = {},
        mIsInitialized = {},
        mVelocityY = {},
        mAngle = {},
        mMovementStepAccumulator = {},
    },
    CutThroughWorldDoneHereComponent = {
        id_of_done_cut = {},
    },
    DamageModelComponent = {
        hp = '',
        max_hp = '',
        max_hp_cap = '',
        max_hp_old = '',
        critical_damage_resistance = '',
        invincibility_frames = '',
        falling_damages = '',
        falling_damage_height_min = '',
        falling_damage_height_max = '',
        falling_damage_damage_min = '',
        falling_damage_damage_max = '',
        air_needed = '',
        air_in_lungs = '',
        air_in_lungs_max = '',
        air_lack_of_damage = '',
        minimum_knockback_force = '',
        materials_damage = '',
        material_damage_min_cell_count = '',
        materials_that_damage = '',
        materials_how_much_damage = '',
        materials_damage_proportional_to_maxhp = '',
        physics_objects_damage = '',
        materials_create_messages = '',
        materials_that_create_messages = '',
        ragdoll_filenames_file = '',
        ragdoll_material = '',
        ragdoll_offset_x = '',
        ragdoll_offset_y = '',
        blood_material = '',
        blood_spray_material = '',
        blood_spray_create_some_cosmetic = '',
        blood_multiplier = '',
        ragdoll_blood_amount_absolute = '',
        blood_sprite_directional = '',
        blood_sprite_large = '',
        healing_particle_effect_entity = '',
        create_ragdoll = '',
        ragdollify_child_entity_sprites = '',
        ragdollify_root_angular_damping = '',
        ragdollify_disintegrate_nonroot = '',
        wait_for_kill_flag_on_death = '',
        kill_now = '',
        drop_items_on_death = '',
        ui_report_damage = '',
        ui_force_report_damage = '',
        in_liquid_shooting_electrify_prob = '',
        wet_status_effect_damage = '',
        is_on_fire = '',
        fire_probability_of_ignition = '',
        fire_how_much_fire_generates = '',
        fire_damage_ignited_amount = '',
        fire_damage_amount = '',
        mLastElectricityResistanceFrame = '',
        mLastFrameReportedBlock = '',
        mLastMaxHpChangeFrame = '',
        damage_multipliers = {
            melee = {},
            projectile = {},
            explosion = {},
            electricity = {},
            fire = {},
            slice = {},
            ice = {},
            radioactive = {},
            physics_hit = {},
            poison = {},
            drill = {},
        },
        ragdoll_fx_forced = {},
        mIsOnFire = '',
        mFireProbability = '',
        mFireFramesLeft = '',
        mFireDurationFrames = '',
        mFireTriedIgniting = '',
        mLastCheckX = '',
        mLastCheckY = '',
        mLastCheckTime = '',
        mLastMaterialDamageFrame = '',
        mFallIsOnGround = '',
        mFallHighestY = '',
        mFallCount = '',
        mAirAreWeInWater = '',
        mAirFramesNotInWater = '',
        mAirDoWeHave = '',
        mTotalCells = '',
        mLiquidCount = '',
        mDamageMaterials = {},
        mDamageMaterialsHowMuch = {},
        mCollisionMessageMaterials = {},
        mCollisionMessageMaterialCountsThisFrame = {},
        mMaterialDamageThisFrame = {},
        mFallDamageThisFrame = '',
        mElectricityDamageThisFrame = '',
        mPhysicsDamageThisFrame = '',
        mPhysicsDamageVecThisFrame = {},
        mPhysicsDamageLastFrame = '',
        mPhysicsDamageEntity = '',
        mPhysicsDamageTelekinesisCasterEntity = '',
        mLastDamageFrame = '',
        mHpBeforeLastDamage = '',
        mFireDamageBuffered = '',
        mFireDamageBufferedNextDeliveryFrame = '',
    },
    DamageNearbyEntitiesComponent = {
        radius = {},
        damage_min = {},
        damage_max = {},
        target_vec_max_len = {},
        knockback_multiplier = {},
        time_between_damaging = {},
        damage_description = {},
        target_tag = {},
        damage_type = {},
        ragdoll_fx = {},
        mVelocity = {},
        mNextDamageFrame = {},
    },
    DebugFollowMouseComponent = {

    },
    DebugLogMessagesComponent = {
        TEMP_TEMPY = {},
        TEMP_TEMP_TEMP = {},
    },
    DebugSpatialVisualizerComponent = {
        min_x = {},
        min_y = {},
        max_x = {},
        max_y = {},
        color = {},
    },
    DieIfSpeedBelowComponent = {
        min_speed = {},
        mMinSpeedSquared = {},
    },
    DroneLauncherComponent = {
        drone_entity_file = {},
    },
    DrugEffectComponent = {
        drug_fx_target = {},
        m_drug_fx_current = {},
    },
    DrugEffectModifierComponent = {
        fx_add = {
            color_amount = {},
            doublevision_amount = {},
            nightvision_amount = {},
            fractals_amount = {},
            fractals_size = {},
        },
        fx_multiply = {},
    },
    ElectricChargeComponent = {
        charge_time_frames = {},
        fx_velocity_max = {},
        electricity_emission_interval_frames = {},
        fx_emission_interval_min = {},
        fx_emission_interval_max = {},
        charge = {},
    },
    ElectricityComponent = {
        energy = {},
        probability_to_heat = {},
        speed = {},
        splittings_min = {},
        splittings_max = {},
        splitting_energy_min = {},
        splitting_energy_max = {},
        hack_is_material_crack = {},
        hack_crack_ice = {},
        hack_is_set_fire = {},
        mSplittingsLeft = {},
        mSplittingEnergy = {},
        mAvgDir = {},
        imPrevPos = {},
        mPrevMaterial = {},
        mShouldPlaySound = {},
    },
    ElectricityReceiverComponent = {
        offset_x = {},
        offset_y = {},
        radius = {},
        active_time_frames = {},
        switch_on_msg_interval_frames = {},
        electrified_msg_interval_frames = {},
        mLastFrameElectrified = {},
        mNextElectrifiedMsgFrame = {},
        mNextSwitchOnMsgFrame = {},
    },
    ElectricitySourceComponent = {
        radius = {},
        emission_interval_frames = {},
        mNextFrameEmitElectricity = {},
    },
    EndingMcGuffinComponent = {
        TEMP_TEMPY = {},
        TEMP_TEMP_TEMP = {},
    },
    EnergyShieldComponent = {
        radius = {},
        damage_multiplier = {},
        max_energy = {},
        energy_required_to_shield = {},
        recharge_speed = {},
        sector_degrees = {},
        energy = {},
        mPrevPosition = {},
    },
    ExplodeOnDamageComponent = {
        explode_on_death_percent = {},
        explode_on_damage_percent = {},
        physics_body_modified_death_probability = {},
        physics_body_destruction_required = {},
        config_explosion = {
            never_cache = {},
            damage = {},
            camera_shake = {},
            explosion_radius = {},
            explosion_sprite = {},
            explosion_sprite_lifetime = {},
            create_cell_probability = {},
            hole_destroy_liquid = {},
            load_this_entity = {},
            hole_enabled = {},
            ray_energy = {},
            particle_effect = {},
            damage_mortals = {},
            physics_explosion_power = {
                min = {},
                max = {},
            },
            physics_throw_enabled = {},
            shake_vegetation = {},
            sparks_count_max = {},
            sparks_count_min = {},
            sparks_enabled = {},
            stains_enabled = {},
            stains_radius = {},
            delay = {
                min = {},
                max = {},
            },
            explosion_delay_id = {},
            audio_event_name = {},
        },
        mDone = {},
    },
    ExplosionComponent = {

    },
    FishAIComponent = {

    },
    FlyingComponent = {

    },
    FogOfWarRadiusComponent = {

    },
    FogOfWarRemoverComponent = {

    },
    GameAreaEffectComponent = {

    },
    GameEffectComponent = {

    },
    GameLogComponent = {

    },
    GameStatsComponent = {

    },
    GasBubbleComponent = {

    },
    GenomeDataComponent = {

    },
    GhostComponent = {

    },
    GodInfoComponent = {

    },
    GunComponent = {

    },
    HealthBarComponent = {

    },
    HitEffectComponent = {

    },
    HitboxComponent = {

    },
    HomingComponent = {

    },
    HotspotComponent = {

    },
    IKLimbAttackerComponent = {

    },
    IKLimbComponent = {

    },
    IKLimbWalkerComponent = {

    },
    IKLimbsAnimatorComponent = {

    },
    IngestionComponent = {

    },
    InheritTransformComponent = {

    },
    InteractableComponent = {

    },
    Inventory2Component = {

    },
    InventoryComponent = {

    },
    InventoryGuiComponent = {

    },
    ItemAIKnowledgeComponent = {

    },
    ItemActionComponent = {

    },
    ItemAlchemyComponent = {

    },
    ItemChestComponent = {

    },
    ItemComponent = {

    },
    ItemCostComponent = {

    },
    ItemPickUpperComponent = {

    },
    ItemRechargeNearGroundComponent = {

    },
    ItemStashComponent = {

    },
    KickComponent = {

    },
    LaserEmitterComponent = {

    },
    LevitationComponent = {

    },
    LifetimeComponent = {

    },
    LightComponent = {

    },
    LightningComponent = {

    },
    LimbBossComponent = {

    },
    LiquidDisplacerComponent = {

    },
    LoadEntitiesComponent = {

    },
    LocationMarkerComponent = {

    },
    LooseGroundComponent = {

    },
    LuaComponent = {

    },
    MagicConvertMaterialComponent = {

    },
    MagicXRayComponent = {

    },
    ManaReloaderComponent = {

    },
    MaterialAreaCheckerComponent = {

    },
    MaterialInventoryComponent = {

    },
    MaterialSeaSpawnerComponent = {

    },
    MaterialSuckerComponent = {

    },
    MoveToSurfaceOnCreateComponent = {

    },
    MusicEnergyAffectorComponent = {

    },
    NinjaRopeComponent = {

    },
    OrbComponent = {

    },
    ParticleEmitterComponent = {

    },
    PathFindingComponent = {

    },
    PathFindingGridMarkerComponent = {

    },
    PhysicsAIComponent = {

    },
    PhysicsBody2Component = {

    },
    PhysicsBodyCollisionDamageComponent = {

    },
    PhysicsBodyComponent = {

    },
    PhysicsImageShapeComponent = {

    },
    PhysicsJoint2Component = {

    },
    PhysicsJoint2MutatorComponent = {

    },
    PhysicsJointComponent = {

    },
    PhysicsPickUpComponent = {

    },
    PhysicsRagdollComponent = {

    },
    PhysicsShapeComponent = {

    },
    PhysicsThrowableComponent = {

    },
    PixelSceneComponent = {

    },
    PixelSpriteComponent = {

    },
    PlatformShooterPlayerComponent = {

    },
    PlayerCollisionComponent = {

    },
    PlayerStatsComponent = {

    },
    PositionSeedComponent = {

    },
    PotionComponent = {

    },
    PressurePlateComponent = {

    },
    ProjectileComponent = {

    },
    RotateTowardsComponent = {

    },
    SetLightAlphaFromVelocityComponent = {

    },
    SetStartVelocityComponent = {

    },
    ShotEffectComponent = {

    },
    SimplePhysicsComponent = {

    },
    SineWaveComponent = {

    },
    SpriteAnimatorComponent = {

    },
    SpriteComponent = {

    },
    SpriteOffsetAnimatorComponent = {

    },
    SpriteParticleEmitterComponent = {

    },
    SpriteStainsComponent = {

    },
    StatusEffectDataComponent = {

    },
    StreamingKeepAliveComponent = {

    },
    TelekinesisComponent = {

    },
    TeleportComponent = {

    },
    TeleportProjectileComponent = {

    },
    TextLogComponent = {

    },
    TorchComponent = {

    },
    UIIconComponent = {

    },
    UIInfoComponent = {

    },
    VariableStorageComponent = {
        name = '',
        value_string = '',
        value_int = '',
        value_bool = '',
    },
    VelocityComponent = {

    },
    VerletPhysicsComponent = {

    },
    VerletWeaponComponent = {

    },
    VerletWorldJointComponent = {

    },
    WalletComponent = {

    },
    WalletValuableComponent = {

    },
    WorldStateComponent = {

    },
    WormAIComponent = {

    },
    WormAttractorComponent = {

    },
    WormComponent = {

    },
    WormPlayerComponent = {
        mPrevPosition = {},
        mDirection = {},
    },
}

function Z:Entity(entity)
    local obj = {}
    obj.id = entity

    obj.name = {
        --[[
            Взаимодействие с именем сущности
        --]]
        set = function(name)
            --[[
                Устанавливает имя для сущности

                name: устанавлимое имя
            --]]
            EntitySetName(entity, name)
        end,
        get = function()
            --[[
                Получает текущее имя

                Возвращает имя или nil
            --]]
            local name = EntityGetName(entity)
            return name == '' and nil or name
        end,
        remove = function()
            --[[
                Удаляет текущее имя
            --]]
            EntitySetName(entity, '')
        end
    }

    function _tags_add(tags)
        if type(tags) ~= 'table' then  -- если передаём единственное значение
            EntityAddTag(entity, tags)
        else  -- если передаётся таблица с тегами
            for key, val in pairs(tags) do
                EntityAddTag(entity, val)
            end
        end
    end
    function _tags_clear(tags)
        for key, val in pairs(tags:split(',')) do
            EntityRemoveTag(entity, val)
        end
    end

    obj.tags = {
        --[[
            Взаоимодействие с тегами сущности
        --]]
        -- Установка тегов. Метод set перезаписывает ранее существующие теги
        set = function(tags)
            error(tags ~= nil, 'tags.set: tags argument cannot be empty')
            -- Удаляем ранее установленные теги
            local _tags = EntityGetTags(entity)
            _tags_clear(_tags)
            -- Вносим новые теги
            _tags_add(tags)
        end,
        -- Добавление новых тегов к уже существующим
        add = function(tags)
            _tags_add(tags)
        end,
        -- Получение списка тегов в виде строги
        get = function()
            return tostring(EntityGetTags(entity))
        end,
        -- Получение списка тегов в виде таблицы
        get_table = function()
            local _tags = EntityGetTags(entity)
            local tags = {}
            for key, value in pairs(_tags:split(',')) do  -- нужно для того, чтобы IDE определало возвращаемое значение как table
                table.insert(tags, value)
            end
            return tags
        end,
        has = function(tag)
            return EntityHasTag(entity, tag) == true and true or false  -- нужно для того, чтобы IDE определяло возвращаемое значение как boolean
        end,
        remove = function(tags)
            if type(tags) ~= 'table' then  -- удаляет указанный тег (строка)
                EntityRemoveTag(entity, tags)
            else  -- удаляет указанные теги (таблица)
                _tags_clear(tags)
            end
        end,
        remove_all = function()
            local _tags = EntityGetTags(entity)
            _tags_clear(_tags)
        end
    }

    local function _get_component(name, tag)
        --[[
            Получает компонент у сущности

            name: название компонента
            tag: тег компонента

            Возвращает id компонента или nil
        --]]
        local _component_id = EntityGetFirstComponentIncludingDisabled(entity, name)
        if tag then
            _component_id = EntityGetFirstComponentIncludingDisabled(entity, name, tag)
        end
        return _component_id
    end
    local function _get_component_fields(component)
        --[[
            Получает список полей компонента включая вложенные свойства

            component: компонент

            Возвращает таблицу
        --]]
        local components = {}
        -- для обращения к вложенным полям (comp.damage_multipliers.explosion)
        setmetatable(components, {__index = function(self, key, value)
            components[key] = value ~= nil and value or nil
            return self
        end})
        -- так как встроенные функции не возвращают тип поля, то приходится использовать сформированную таблицу для этих целей
        -- иначе без этого появляется много предупреждений
        for k, v in pairs(components_table[ComponentGetTypeName(component)]) do
            if type(v) == 'table' then
                components[k] = v
                for k2, v2 in pairs(v) do
                    components[k][k2] = ComponentObjectGetValue2(component, k, k2)
                end
            else
                components[k] = ComponentGetValue2(component, k)
            end
        end
        return components
    end
    local function _edit_component(component, value)
        --[[
            Редактрует существующий компонент

            value: таблица с данными, которые необходимо внести в компонент

            Таблица может быть вложенной, например:
            {hp=1, damage_multipliers={melee=0}}
        --]]

        local components = value

        -- Если в качестве значения передаём функцию
        if type(value) == 'function' then
            components = _get_component_fields(component)
            value(components)
        end

        -- Устанавлиаем значения для свойств
        for k, v in pairs(components) do
            if type(v) ~= 'table' then
                ComponentSetValue2(component, k, v)
            else
                for k2, v2 in pairs(v) do
                    ComponentObjectSetValue2(component, k, k2, v2)
                end
            end
        end


    end

    obj.component = {
        --[[
            Взаимодействие с компонентами сущности
        --]]
        add = function(name, value, tag)
            --[[
                Добавляет новый компонент в сущность

                name: имя компонента
                value: таблица со значениями
                tag: тег компонента
            --]]
            local component = EntityAddComponent(entity, name)

            if tag then
                ComponentAddTag(component, tag)
            end

            _edit_component(component, value)
        end,
        get = function(name, tag)
            --[[
                Получает компонент в виде таблица ключ-значение

                name: имя получаемого компонента
                tag: тег компонента
            --]]
            return _get_component_fields(_get_component(name, tag))
        end,
        foreach = function(name, fn)
            --[[
                Циклично проходит по всем компонентам и выполняет код в функци fn

                name: название компонетов
                fn: функция, в которой происходит взаимодействие с полями компонента
            --]]
            local components = EntityGetComponent(entity, name)
            for i, comp in ipairs(components) do
                local vars = _get_component_fields(comp)
                -- встроенные поля для каких-либо действий
                vars.index = i  -- индекс текущей итерации
                vars.remove = function()  -- удаление текущего компонента
                    EntityRemoveComponent(entity, comp)
                end
                fn(vars)
                -- удаляем ключи, так как будут ошибки во время обращения к несуществующим полям
                vars.index = nil
                vars.remove = nil
                _edit_component(comp, vars)
            end
        end,
        set = function(name, value, tag)
            --[[
                Обновляет существующий компонент
                Если компонента не существует, то ничего не делает

                name: имя компонента
                value: таблица со значениями
                tag: тег компонента
            --]]
            local component = _get_component(name, tag)
            if component ~= nil then -- проверяем, существует ли компонент
                _edit_component(component, value)
            end
        end,
        remove = function(name, tag)
            --[[
                Удаляет компонент, если он существует

                name: имя компонента
                tag: тег компонента
            --]]
            local component = _get_component(name, tag)
            if component ~= nil then
                EntityRemoveComponent(entity, component)
            end
        end,
    }

    return setmetatable(obj, {__index = self})
end

function Z:EntityCreate(name)
    --[[
        Создаёт новую сущность

        name: имя сущности

        Возвращает объект класса Z:Entity
    --]]

    return Z:Entity(EntityCreateNew(name))
end

function Z:Player()
    return Z:Entity(EntityGetWithTag('player_unit')[1])
end
