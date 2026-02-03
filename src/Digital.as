void RenderDigital() {
    if (S_ClockStyle == ClockStyle::Analog) {
        return;
    }

    const int64 now = Time::Stamp;

    int flags = UI::WindowFlags::AlwaysAutoResize |
                UI::WindowFlags::NoTitleBar;

    if (!UI::IsOverlayShown()) {
        flags |= UI::WindowFlags::NoInputs;
    }

    UI::PushFont(font, S_FontSize);

    const vec4 styleText     = UI::GetStyleColor(UI::Col::Text);
    const vec4 styleWindowBg = UI::GetStyleColor(UI::Col::WindowBg);
    UI::PushStyleColor(UI::Col::Text,     vec4(styleText.xyz,     Math::Min(S_Opacity, styleText.w)));
    UI::PushStyleColor(UI::Col::WindowBg, vec4(styleWindowBg.xyz, Math::Min(S_Opacity, styleWindowBg.w)));

    if (UI::Begin("TooManyClocks", S_Enabled, flags)) {
        if (true
            and S_DigCustomFormat.Length > 0
            and timeFormatValid
        ) {
            UI::Text(Time::FormatString(S_DigCustomFormat, now));
            UI::End();
            UI::PopFont();
            return;
        }

        string day  = Time::FormatString(S_DigWeekdayColorStr + (S_DigWeekdayFull ? "%A" : "%a"), now);
        string date = Time::FormatString(S_DigDateColorStr    + "%Y-%m-%d", now);
        string time = Time::FormatString(S_DigTimeColorStr    + (S_Dig24h ? "%H" : "%I") + ":%M" + (S_DigSeconds ? ":%S" : ""), now);
        string amPm = Time::FormatString(S_DigAmPmColorStr    + "%p", now);

        UI::Text((S_DigWeekday ? day + " " : "") + (S_DigDate ? date + " " : "") + time + (!S_Dig24h and S_DigAmPm ? " " + amPm : ""));
    }

    UI::End();
    UI::PopStyleColor(2);
    UI::PopFont();
}

// prevents most crashes
void VerifyTimeFormat() {
    timeFormatValid = true
        and S_DigCustomFormat != "%"  // TODO regex below somehow doesn't account for any odd number of only %
        and !Regex::Contains(S_DigCustomFormat, "(%[^aAbBcCdDeFgGhHIjmMnprRStTuUVwWxXyYzZ%])|([^%]%(%%)*$)")
    ;
}
