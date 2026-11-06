// movement
xSpd = 0
ySpd = 0

// friction
moveSpd = 6
_dir = 0
prevDir = 0
prevDir2 = false
_dirheld = 0
_friction = 0.20
_gravity = 0.35 
_gravityMax = 24
acceleration = 0
maxAcceleration = 1
accelerationCount = 0.075
spd = 0

transDir = ""
trans = false
gonext = false
dead = false

// jump logic
onGround = 0
prevOnGround = 0
groundBuffer = 2
jumpBuffer = 10
jump = -11
jumpDown = 0.8

wallJumpHeight = -16.5
wallJumpDistance = 6.5
wallJumpDelay = 0
wallJumpDelayMax = 8
onWallPrev = 0
onWallCount = 0
wallJumped = false
_gravityWall = 0.2
_gravityWallMax = 27

runsfx = 0

face = 0
sprite[0] = MPlayerTest3

//sprites and anims
//face = 0;
//sprite[0] = testplayeridle
//sprite[1] = testplayerjump
//sprite[2] = testplayerrun
//sprite[3] = testplayerwall
//sprite[4] = endanim
//sprite[5] = endanimidle
//sprite[6] = endanimclap