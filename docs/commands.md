# Commands

## takeoff(callback) → nil

Public: Sets the internal ´fly´ state to ´true´, ´callback´ is invoked after the 
drone reports that it is hovering.

- **callback** - The callback for which to return data

Returns nil.

## land(callback) → nil

Public: Sets the internal ´fly´ state to ´false´, ´callback´ is invoked after 
the drone reports it has landed.

- **callback** - The callback for which to return data

Returns nil.

## stop → nil

Public: Sets all drone movement commands to ´0´, making it effectively hover in place.

- **callback** - The callback for which to return data

Returns nil

## up(speed) → integer

Public: Makes the drone gain altitude. 
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## down(speed) → integer

Public: Makes the drone reduce altitude. 
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## left(speed) → integer

Public: Causes the drone to bank to the left, controls the roll, which is 
a horizontal movement using the camera as a reference point.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## right(speed) → integer

Public: Causes the drone to bank to the right, controls the roll, which is 
a horizontal movement using the camera as a reference point.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## front(speed) → integer

Public: Causes the drone to bank forward, controls the pitch, which a horizontal 
movement using the camera as a reference point.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data
- **forward(speed)** - The speed for which to return data

Returns nil

## back(speed) → integer

Public: Causes the drone to bank to the back, controls the pitch, which a horizontal 
movement using the camera as a reference point.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## clockwise(speed) → integer

Public: Causes the drone to spin.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## counterClockwise(speed) → integer

Public: Causes the drone to spin.
speed can be a value from ´0´ to ´1´.

- **speed** - The speed for which to return data

Returns nil

## calibrate(device_num) → integer

Public: Causes the drone to spin.
speed can be a value from ´0´ to ´1´.

- **device_num** - The device number for which to return data

Returns nil

## config(key,value,callback) → nil

Public: Sends a config command to the drone.
speed can be a value from ´0´ to ´1´.

- **key** - params
- **value** - params
- **callback** - params

Returns nil

## animate(animation,duration) → nil

Public: Performs a pre-programmed flight sequence for a given duration (in ms).
speed can be a value from ´0´ to ´1´.

- **animation** - params
- **duration** - params

Returns nil

## animateLeds(animation,hz,duration) → nil

Public: Performs a pre-programmed led sequence at given hz frequency and duration (in sec!). 
speed can be a value from ´0´ to ´1´.

- **animation** - params
- **hz** - params
- **duration** - params

Returns nil

## disableEmergency() → nil

Public: Causes the emergency REF bit to be set to 1 until 
´navdata.droneState.emergencyLanding´ is ´0.´ This recovers a drone that has 
flipped over and is showing red lights to be flyable again and show green 
lights. It is also done implicitly when creating a new high level client. 

Returns nil

## forward() → nil

Public: Causes the drone to go forward.

Returns nil

## frontFlip() → nil

Public: Tells the drone to do a front-flip. 

Example:
	animate('flipAhead', 150)

Returns nil

## backFlip() → nil

Public: Tells the drone to do a back-flip.

Example:
	animate("flipBehind", 150)

Returns nil

## leftFlip() → nil

Public: Tells the drone to do a left-flip.

Example:
	animate("flipLeft", 150)

Returns nil

## rightFlip() → nil

Public: Tells the drone to do a right-flip.

Example:
	animate("flipRight", 150)

Returns nil

## wave() → nil

Public: Tells the drone to do a wave.

Example:
	animate("wave", 750)

Returns nil
