// c 2023-10-18
// m 2024-03-15

void RenderDigital() {
    if (S_ClockStyle == ClockStyle::Analog)
        return;

    const int64 now = Time::Stamp;

    int flags = UI::WindowFlags::AlwaysAutoResize |
                UI::WindowFlags::NoTitleBar;

    if (!UI::IsOverlayShown())
        flags |= UI::WindowFlags::NoInputs;

    UI::Begin("TooManyClocks", S_Enabled, flags);
        if (S_DigCustomFormat != "") {
            UI::Text(Time::FormatString(S_DigCustomFormat, now));
            UI::End();
            return;
        }

        const string day  = Time::FormatString(digWeekdayColor + (S_DigWeekdayFull ? "%A" : "%a"), now);
        const string date = Time::FormatString(digDateColor    + "%Y-%m-%d", now);
        const string time = Time::FormatString(digTimeColor    + (S_Dig24h ? "%H" : "%I") + ":%M" + (S_DigSeconds ? ":%S" : ""), now);
        const string amPm = Time::FormatString(digAmPmColor    + "%p", now);

        UI::Text((S_DigWeekday ? day + " " : "") + (S_DigDate ? date + " " : "") + time + (!S_Dig24h && S_DigAmPm ? " " + amPm : ""));
    UI::End();
}