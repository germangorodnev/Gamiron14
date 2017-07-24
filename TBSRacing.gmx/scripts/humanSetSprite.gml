////humanSetSprite(0-torso\1-lhand\2-rhand\3-lleg\4-rleg\5-head, sprite)
switch (argument[0])
{
case 0:
    torsoSpr = argument[1];
    torsoI = 0;
    torsoNumb = sprite_get_number(torsoSpr);
    break;
case 1:
    handLSpr = argument[1];
    handLI = 0;
    handLNumb = sprite_get_number(handLSpr);
    break;
case 2:
    handRSpr = argument[1];
    handRI = 0;
    handRNumb = sprite_get_number(handRSpr);
    break;
case 3:
    legLSpr = argument[1];
    legLI = 0;
    legLNumb = sprite_get_number(legLSpr);
    break;
case 4:
    legRSpr = argument[1];
    legRI = 0;
    legRNumb = sprite_get_number(legRSpr);
    break;
case 5:
    headSpr = argument[1];
    headI = 0;
    headNumb = sprite_get_number(headSpr);
    break;
}
