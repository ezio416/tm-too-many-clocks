/*
c 2023-10-18
m 2023-10-18
*/

[Setting category="Visibility" name="Enabled"]
bool S_Enabled = false;

[Setting category="Visibility" name="Show/hide with game UI"]
bool S_HideWithGame = true;

[Setting category="Visibility" name="Show/hide with Openplanet UI"]
bool S_HideWithOP = false;

[Setting category="Visibility" name="Show in main menu"]
bool S_ShowInMenu = true;

[Setting category="Visibility" name="Clock style"]
ClockStyle S_ClockStyle = ClockStyle::Digital;


[Setting category="Analog Style" name="Show second hand"]
bool S_AnaSeconds = true;

[Setting category="Analog Style" name="Smooth second hand"]
bool S_AnaSmoothSeconds = false;

// [Setting category="Analog Style" name=""]


// [Setting category="Analog Style" name=""]


// [Setting category="Analog Style" name=""]


// [Setting category="Analog Style" name=""]



[Setting category="Analog Colors" name="Show colors"]
bool S_AnaColors = true;

// [Setting category="Analog Colors" name=""]


// [Setting category="Analog Colors" name=""]


// [Setting category="Analog Colors" name=""]


// [Setting category="Analog Colors" name=""]



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


[Setting category="Digital Colors" name="Show colors"]
bool S_DigColors = true;

[Setting category="Digital Colors" name="Weekday" color]
vec3 S_DigWeekdayColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigWeekdayColorStr;

[Setting category="Digital Colors" name="Date" color]
vec3 S_DigDateColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigDateColorStr;

[Setting category="Digital Colors" name="Time" color]
vec3 S_DigTimeColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigTimeColorStr;

[Setting category="Digital Colors" name="AM/PM" color]
vec3 S_DigAmPmColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigAmPmColorStr;


[SettingsTab name="Links" icon="Link"]
void LinksTab() {
    UI::Text("Color formatting requires double backslash before color codes like \"\\\\\\$$1D4\"");

    if (UI::Button(Icons::ExternalLink + " Color formatting"))
        OpenBrowserURL("https://doc.maniaplanet.com/client/text-formatting");

    UI::Text("Time formatting is standard strftime");

    if (UI::Button(Icons::ExternalLink + " Time formatting"))
        OpenBrowserURL("https://www.ibm.com/docs/en/workload-automation/10.2.0?topic=troubleshooting-date-time-format-reference-strftime");
}