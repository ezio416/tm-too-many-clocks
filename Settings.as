/*
c 2023-10-18
m 2023-11-22
*/

[Setting category="Visibility" name="Enabled"]
bool S_Enabled = false;

[Setting category="Visibility" name="Show/hide with game UI"]
bool S_HideWithGame = true;

[Setting category="Visibility" name="Show/hide with Openplanet UI"]
bool S_HideWithOP = false;

[Setting category="Visibility" name="Show in main menu"]
bool S_ShowInMenu = true;

// [Setting category="Visibility" name="Clock style"]
ClockStyle S_ClockStyle = ClockStyle::Digital;


// [Setting category="Analog Style" name="Background color" color]
// vec4 S_AnaBgColor = vec4(0.0f, 0.0f, 0.0f, 0.7f);

// [Setting category="Analog Style" name="Border thickness" min=0 max=10]
// float S_AnaBorderThickness = 3.0f;

// [Setting category="Analog Style" name="Border color" color]
// vec4 S_AnaBorderColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);

// [Setting category="Analog Style" name="Center radius" min=0 max=10]
// float S_AnaCenterRadius = 5.0f;

// [Setting category="Analog Style" name="Center border thickness" min=0 max=10]
// float S_AnaCenterThickness = 3.0f;

// [Setting category="Analog Style" name="Center color" color]
// vec4 S_AnaCenterColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);

// [Setting category="Analog Style" name="Tick mark thickness" min=0 max=10]
// float S_AnaTicksThickness = 3.0f;

// [Setting category="Analog Style" name="Tick mark length" min=0 max=50]
// float S_AnaTicksLength = 15.0f;

// [Setting category="Analog Style" name="Tick mark color" color]
// vec4 S_AnaTicksColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);

// [Setting category="Analog Style" name="Minute hand thickness" min=0 max=10]
// float S_AnaMinuteThickness = 3.0f;

// [Setting category="Analog Style" name="Minute hand length" min=0 max=10]
// float S_AnaMinuteLength = 3.0f;

// [Setting category="Analog Style" name="Minute hand color" color]
// vec4 S_AnaMinuteColor = vec4(1.0f, 1.0f, 1.0f, 1.0f);

// [Setting category="Analog Style" name="Minute hand skew X" min=0 max=10]
// float S_AnaMinuteSkewX = 0.0f;

// [Setting category="Analog Style" name="Minute hand skew Y" min=0 max=10]
// float S_AnaMinuteSkewY = 0.0f;

// [Setting category="Analog Style" name="Minute hand rotate" min=0 max=10]
// float S_AnaMinuteRotate = 0.0f;

// [Setting category="Analog Style" name="Show second hand"]
// bool S_AnaSeconds = true;

// [Setting category="Analog Style" name="Smooth second hand"]
// bool S_AnaSmoothSeconds = false;


// [Setting category="Analog Position" name="Position X" min=0 max=1]
// float S_AnaX = 0.9f;

// [Setting category="Analog Position" name="Position Y" min=0 max=1]
// float S_AnaY = 0.15f;

// [Setting category="Analog Position" name="Diameter" min=10 max=1920]
// int S_AnaSize = 200;


[Setting category="Digital Style" name="Font style/size" description="loading a font for the first time causes game to hang for a bit"]
Font S_DigFont = Font::DroidSans_16;

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

[Setting category="Digital Style" name="Weekday color" color]
vec3 S_DigWeekdayColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigWeekdayColorStr;

[Setting category="Digital Style" name="Date color" color]
vec3 S_DigDateColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigDateColorStr;

[Setting category="Digital Style" name="Time color" color]
vec3 S_DigTimeColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigTimeColorStr;

[Setting category="Digital Style" name="AM/PM color" color]
vec3 S_DigAmPmColor = vec3(1.0f, 1.0f, 1.0f);
string S_DigAmPmColorStr;


[Setting category="Digital Position" name="Position X" min=0 max=1]
float S_DigX = 0.25f;

[Setting category="Digital Position" name="Position Y" min=0 max=1]
float S_DigY = 0.25f;


[SettingsTab name="Links" icon="Link"]
void LinksTab() {
    UI::Text("Color formatting requires double backslash before color codes like \"\\\\\\$$1D4\"");

    if (UI::Button(Icons::ExternalLink + " Color formatting"))
        OpenBrowserURL("https://doc.maniaplanet.com/client/text-formatting");

    UI::Text("Time formatting is standard strftime");

    if (UI::Button(Icons::ExternalLink + " Time formatting"))
        OpenBrowserURL("https://www.ibm.com/docs/en/workload-automation/10.2.0?topic=troubleshooting-date-time-format-reference-strftime");
}