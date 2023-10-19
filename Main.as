/*
c 2023-10-18
m 2023-10-18
*/

void RenderMenu() {
    if (UI::MenuItem("\\$FAF" + Icons::ClockO + "\\$G Too Many Clocks", "", S_Enabled))
        S_Enabled = !S_Enabled;
}

void Main() {
    ;
}

void Render() {
    if (!S_Enabled)
        return;

    ;
}