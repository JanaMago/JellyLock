if (trans)
{
    switch (transDir)
    {
        case "right":
            x = (x - bbox_left) - 20
        break;

        case "left":
            x = (room_width - (bbox_right - x)) + 20
        break;

        case "up":
            y = (room_height - (bbox_bottom - y)) + 20
        break;

        case "down":
            y = (y - bbox_top) + 20
        break;
    }

    trans = false
    transDir = ""
}

onGround = place_meeting(x, y + groundBuffer, oMWall)
prevOnGround = onGround