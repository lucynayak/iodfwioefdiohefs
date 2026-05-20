// Gravity (improved)
// v2.0
// Improvements over v1.0 (TriggerTrash):
//   - removed raw Memory.setBoolean(playerAddr, 0x56C, ...) writes — that
//     offset doesn't correspond to a no-gravity flag in current MCPE builds
//     and writing arbitrary bytes there is unsafe.
//   - replaced Memory.setFloat(playerAddr, 0x70, ...) with the native
//     LocalPlayer.setVelocityY(...) wrapper which is type-safe and version
//     independent.
//   - parseFloat input is validated (NaN, Infinity, range clamp).
//   - state restore is idempotent and survives missing globals.
//   - no global pollution: everything is inside a closure.

(function() {
    var MODULE_NAME = "Gravity";
    var NATIVE_GRAVITY = 0.08;

    var gravityModule = new Module(MODULE_NAME, true, false, ModuleCategory.PLAYER);

    var state = {
        engine: false,
        classicFlight: false,
        wasOnGround: true,
        jumpMultiplier: 1.0,
        gravity: NATIVE_GRAVITY,
        flightSpeed: 1.5
    };

    function clamp(v, lo, hi) {
        if (v < lo) return lo;
        if (v > hi) return hi;
        return v;
    }

    function safeParseFloat(text, fallback) {
        if (typeof text !== "string") return fallback;
        var n = parseFloat(text);
        if (isNaN(n) || !isFinite(n)) return fallback;
        return n;
    }

    var engineToggle      = new StateSetting("Engine", false);
    var flightModeToggle  = new StateSetting("Flight", false);
    var flightSpeedSlider = new SliderSetting("FlightSpeed", [state.flightSpeed, 1.0, 10.0, 0.5]);
    var jumpSlider        = new SliderSetting("JumpMultiplier", [state.jumpMultiplier, 1.0, 20.0, 0.5]);
    var gravityField      = new TextFieldSetting("GravityStrength", "0.08 = default", state.gravity.toString());
    var applyGravityButton = new ButtonSetting("Apply", function() {
        var newGravity = safeParseFloat(gravityField.getText(), NATIVE_GRAVITY);
        state.gravity = clamp(newGravity, -2.0, 2.0);
        Level.displayClientMessage("\u00a7aGravity set to: \u00a7f" + state.gravity);
    });

    gravityModule.addSettings([
        engineToggle,
        flightModeToggle,
        flightSpeedSlider,
        jumpSlider,
        gravityField,
        applyGravityButton
    ]);

    function updateVisibility() {
        Setting.setVisibility(MODULE_NAME, "Flight", state.engine);
        Setting.setVisibility(MODULE_NAME, "FlightSpeed", state.engine && state.classicFlight);
        Setting.setVisibility(MODULE_NAME, "JumpMultiplier", state.engine && !state.classicFlight);
        Setting.setVisibility(MODULE_NAME, "GravityStrength", state.engine && !state.classicFlight);
        Setting.setVisibility(MODULE_NAME, "Apply", state.engine && !state.classicFlight);
    }

    function onScriptEnabled() {
        ModuleManager.addModule(gravityModule);
        updateVisibility();

        engineToggle.setOnStateToggleListener(function(s) {
            state.engine = !!s;
            if (!state.engine) state.classicFlight = false;
            updateVisibility();
        });
        flightModeToggle.setOnStateToggleListener(function(s) {
            state.classicFlight = !!s;
            updateVisibility();
        });
        flightSpeedSlider.setOnCurrentValueChangedListener(function(v) {
            state.flightSpeed = clamp(v, 1.0, 10.0);
        });
        jumpSlider.setOnCurrentValueChangedListener(function(v) {
            state.jumpMultiplier = clamp(v, 1.0, 20.0);
        });
    }

    function classicFlightTick() {
        var speed = 0.5 * state.flightSpeed;
        var velY = 0;
        if (LocalPlayer.isMoveButtonPressed(MoveButton.JUMP))       velY =  speed;
        else if (LocalPlayer.isMoveButtonPressed(MoveButton.SHIFT)) velY = -speed;

        LocalPlayer.setVelocityY(velY);

        if (LocalPlayer.isMovingForward()) {
            var yawRad   = LocalPlayer.getYaw()   * Math.PI / 180.0;
            var pitchRad = LocalPlayer.getPitch() * Math.PI / 180.0;
            LocalPlayer.setVelocityX(-Math.sin(yawRad) * Math.cos(pitchRad) * speed);
            LocalPlayer.setVelocityZ( Math.cos(yawRad) * Math.cos(pitchRad) * speed);
        }
    }

    function gravityTick() {
        var isOnGroundNow = LocalPlayer.isOnGround();
        var currentVelY = LocalPlayer.getVelocityY
            ? LocalPlayer.getVelocityY()
            : 0;

        if (state.wasOnGround && !isOnGroundNow && currentVelY > 0 && state.jumpMultiplier !== 1.0) {
            LocalPlayer.setVelocityY(currentVelY * state.jumpMultiplier);
            currentVelY = currentVelY * state.jumpMultiplier;
        }

        if (!isOnGroundNow) {
            var gravityCorrection = NATIVE_GRAVITY - state.gravity;
            LocalPlayer.setVelocityY(currentVelY + gravityCorrection);
        }

        state.wasOnGround = isOnGroundNow;
    }

    function onLevelTick() {
        if (!LocalPlayer.isInGame() || !state.engine) return;
        try {
            if (state.classicFlight) classicFlightTick();
            else                     gravityTick();
        } catch (e) {
            // never crash the tick loop
        }
    }

    function onScriptDisabled() {
        if (gravityModule) {
            try { ModuleManager.removeModule(gravityModule); } catch (e) {}
        }
    }

    this.onScriptEnabled  = onScriptEnabled;
    this.onScriptDisabled = onScriptDisabled;
    this.onLevelTick      = onLevelTick;
})();
