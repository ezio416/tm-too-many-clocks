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

    UI::PushFont(font);
    if (UI::Begin("TooManyClocks", S_Enabled, flags)) {
        if (S_DigCustomFormat.Length > 0) {
            UI::Text(Time::FormatString(S_DigCustomFormat, now));
            UI::End();
            UI::PopFont();
            return;
        }

        string day  = Time::FormatString(S_DigWeekdayColorStr + (S_DigWeekdayFull ? "%A" : "%a"), now);
        string date = Time::FormatString(S_DigDateColorStr    + "%Y-%m-%d", now);
        string time = Time::FormatString(S_DigTimeColorStr    + (S_Dig24h ? "%H" : "%I") + ":%M" + (S_DigSeconds ? ":%S" : ""), now);
        string amPm = Time::FormatString(S_DigAmPmColorStr    + "%p", now);

        UI::Text((S_DigWeekday ? day + " " : "") + (S_DigDate ? date + " " : "") + time + (!S_Dig24h && S_DigAmPm ? " " + amPm : ""));
    }

    UI::End();
    UI::PopFont();
}
