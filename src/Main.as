string title = "\\$FAF" + Icons::ClockO + "\\$G Too Many Clocks";

enum ClockStyle {
    Analog,
    Digital
}

void Main() {
    OnSettingsChanged();
}

void OnSettingsChanged() {
    if (currentFont != S_DigFont) {
        ChangeFont();
    }

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
    if (false
        or !S_Enabled
        or (true
            and S_HideWithGame
            and !UI::IsGameUIVisible()
        )
        or (true
            and S_HideWithOP
            and !UI::IsOverlayShown()
        )
    ) {
        return;
    }

    if (true
        and !S_ShowInMenu
        and cast<CSmArenaClient>(GetApp().CurrentPlayground) is null  // TODO other games
    ) {
        return;
    }

    // RenderAnalog();
    RenderDigital();
}

void RenderMenu() {
    if (UI::MenuItem(title, "", S_Enabled)) {
        S_Enabled = !S_Enabled;
    }
}

// void Update(float dt) {
//     msSinceFrame = dt;
// }
