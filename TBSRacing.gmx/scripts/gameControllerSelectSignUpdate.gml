// selected sign upd
switch (selectedSignXpath)
{
case 0:
    if (selectedSignXscale == -selectedSignMaxXscale)
        selectedSignXpath = 1;
    selectedSignXscale = max(-selectedSignMaxXscale, selectedSignXscale - .05);
    break;
case 1:
    if (selectedSignXscale == selectedSignMaxXscale)
        selectedSignXpath = 0;
    selectedSignXscale = min(selectedSignMaxXscale, selectedSignXscale + .05);
    break;
}
