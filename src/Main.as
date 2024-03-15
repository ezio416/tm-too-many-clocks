// c 2023-10-18
// m 2024-03-15

const string title = "\\$FAF" + Icons::ClockO + "\\$G Too Many Clocks";

void Main() {
    OnSettingsChanged();
}

void OnSettingsChanged() {
    digWeekdayColor = "\\$" + S_DigWeekdayColor;
    digDateColor    = "\\$" + S_DigDateColor;
    digTimeColor    = "\\$" + S_DigTimeColor;
    digAmPmColor    = "\\$" + S_DigAmPmColor;
}

void Render() {
    if (
        !S_Enabled ||
        (S_HideWithOP && !UI::IsOverlayShown())
    )
        return;

    if (!S_ShowInMenu) {
        CTrackMania@ App = cast<CTrackMania@>(GetApp());

        if (App.CurrentPlayground is null)
            return;
    }

    RenderDigital();
}

void RenderMenu() {
    if (UI::MenuItem(title, "", S_Enabled))
        S_Enabled = !S_Enabled;
}