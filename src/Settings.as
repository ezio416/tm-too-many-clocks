// c 2023-10-18
// m 2024-03-15

[Setting category="Visibility" name="Enabled"]
bool S_Enabled = false;

[Setting category="Visibility" name="Show/hide with Openplanet UI"]
bool S_HideWithOP = false;

[Setting category="Visibility" name="Show in main menu"]
bool S_ShowInMenu = true;

enum ClockStyle {
    Analog,
    Digital
}

// [Setting category="Visibility" name="Clock style"]
ClockStyle S_ClockStyle = ClockStyle::Digital;


[Setting category="Digital Style" name="Custom format" description="Overrides all styles and colors"]
string S_DigCustomFormat;

[Setting category="Digital Style" name="Show weekday"]
bool S_DigWeekday = true;

[Setting category="Digital Style" name="Weekday full name"]
bool S_DigWeekdayFull = false;

[Setting category="Digital Style" name="Show date"]
bool S_DigDate = true;

[Setting category="Digital Style" name="24-hour clock"]
bool S_Dig24h = true;

[Setting category="Digital Style" name="Show AM/PM (12-hour clock)"]
bool S_DigAmPm = true;

[Setting category="Digital Style" name="Show seconds"]
bool S_DigSeconds = true;

[Setting category="Digital Style" name="Show colors"]
bool S_DigColors = true;

[Setting category="Digital Style" name="Weekday color"]
string S_DigWeekdayColor = "FFF";
string digWeekdayColor;

[Setting category="Digital Style" name="Date color"]
string S_DigDateColor = "FFF";
string digDateColor;

[Setting category="Digital Style" name="Time color"]
string S_DigTimeColor = "FFF";
string digTimeColor;

[Setting category="Digital Style" name="AM/PM color"]
string S_DigAmPmColor = "FFF";
string digAmPmColor;


[SettingsTab name="Links" icon="Link"]
void LinksTab() {
    UI::Text("Color formatting requires double backslash before color codes like \"\\\\\\$$1D4\"");

    if (UI::Button(Icons::ExternalLink + " Color formatting"))
        OpenBrowserURL("https://doc.maniaplanet.com/client/text-formatting");

    UI::Text("Time formatting is standard strftime");

    if (UI::Button(Icons::ExternalLink + " Time formatting"))
        OpenBrowserURL("https://www.ibm.com/docs/en/workload-automation/10.2.0?topic=troubleshooting-date-time-format-reference-strftime");
}