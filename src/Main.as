bool         timeFormatValid = false;
const string title           = "\\$FAF" + Icons::ClockO + "\\$G Too Many Clocks";

enum ClockStyle {
    Analog,
    Digital
}

void Main() {
    OnSettingsChanged();
}

void OnSettingsChanged() {
    VerifyTimeFormat();

    S_Opacity = Math::Clamp(S_Opacity, 0.05f, 1.0f);

    if (currentFont != S_Font) {
        ChangeFont();
    }

    if (S_DigColors) {
        S_DigWeekdayColorStr = Text::FormatOpenplanetColor(S_DigWeekdayColor);
        S_DigDateColorStr    = Text::FormatOpenplanetColor(S_DigDateColor);
        S_DigTimeColorStr    = Text::FormatOpenplanetColor(S_DigTimeColor);
        S_DigAmPmColorStr    = Text::FormatOpenplanetColor(S_DigAmPmColor);
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
#if TMNEXT
        and cast<CSmArenaClient>(GetApp().CurrentPlayground) is null
#else
        and GetApp().CurrentPlayground is null
#endif
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
