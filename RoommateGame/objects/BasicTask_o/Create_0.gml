room_speed = 60;

//starting values
currValue = 0;
maxTotal = 600;

barWidth = 100;
barHeight = 10;

barX = x;
barY = y;

showBar = false;

//all values should be overriden for each specific task
taskName = "generic task";
taskTTC = 10;
taskAction = 0;
taskHunger = 0;
taskStress = 0;
taskMoney = 0;
taskTrash = 0;
taskStudy = 0;
taskScorePoints = 0;
taskSound = GettinMoney_snd;
player = ParentPlayer_o;
taskCanInteract = true;
requirements = ["some requirement"];

isInteracting = false;

shakeSpeed = 0.25 * room_speed;
shakeDist = 1;
moveIndex = irandom_range(0, 3);
alarm[3] = shakeSpeed;

