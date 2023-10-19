/*
c 2023-10-18
m 2023-10-18
*/

void Main() {
    OnSettingsChanged();
}

void OnSettingsChanged() {
    if (S_DigColors) {
        S_DigWeekdayColorStr = "\\" + Text::FormatGameColor(S_DigWeekdayColor);
        S_DigDateColorStr    = "\\" + Text::FormatGameColor(S_DigDateColor);
        S_DigTimeColorStr    = "\\" + Text::FormatGameColor(S_DigTimeColor);
        S_DigAmPmColorStr    = "\\" + Text::FormatGameColor(S_DigAmPmColor);
    } else {
        S_DigWeekdayColorStr = "\\$G";
        S_DigDateColorStr    = "\\$G";
        S_DigTimeColorStr    = "\\$G";
        S_DigAmPmColorStr    = "\\$G";
    }
}

void Render() {
    if (
        !S_Enabled ||
        (S_HideWithGame && !UI::IsGameUIVisible()) ||
        (S_HideWithOP && !UI::IsOverlayShown())
    )
        return;

    if (!S_ShowInMenu) {
        CTrackMania@ app = cast<CTrackMania@>(GetApp());

        CSmArenaClient@ playground = cast<CSmArenaClient@>(app.CurrentPlayground);

        if (playground is null)
            return;
    }

    RenderAnalog();
    RenderDigital();
}

void RenderMenu() {
    if (UI::MenuItem("\\$FAF" + Icons::ClockO + "\\$G Too Many Clocks", "", S_Enabled))
        S_Enabled = !S_Enabled;
}

void Update(float dt) {
    g_dt = dt;
}