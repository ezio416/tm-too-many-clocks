// c 2023-10-19
// m 2023-11-22

// float msSinceFrame;
// float scale = UI::GetScale();

// void RenderAnalog() {
//     if (S_ClockStyle == ClockStyle::Digital)
//         return;

//     int64 now = Time::Stamp;

//     int displayWidth = Draw::GetWidth();
//     int displayHeight = Draw::GetHeight();

//     int x = int(S_AnaX * displayWidth);
//     int y = int(S_AnaY * displayHeight);
//     int d = int(S_AnaSize / scale);
//     float r = float(d / 2);
//     vec2 center = vec2(x + r, y + r);

//     // background
//     nvg::BeginPath();
//     nvg::FillColor(S_AnaBgColor);
//     nvg::Circle(center, r);
//     nvg::Fill();
//     nvg::ClosePath();

//     // border
//     nvg::BeginPath();
//     nvg::StrokeWidth(S_AnaBorderThickness);
//     nvg::StrokeColor(S_AnaBorderColor);
//     nvg::Circle(center, r);
//     nvg::Stroke();
//     nvg::ClosePath();

//     // hour tick marks
//     nvg::BeginPath();
//     nvg::StrokeWidth(S_AnaTicksThickness);
//     nvg::StrokeColor(S_AnaTicksColor);
//     // 12
//     nvg::MoveTo(vec2(x + r, y));
//     nvg::LineTo(vec2(x + r, y + S_AnaTicksLength));
//     // 1
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 2
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 3
//     nvg::MoveTo(vec2(x + d, y + r));
//     nvg::LineTo(vec2(x + d - S_AnaTicksLength, y + r));
//     // 4
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 5
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 6
//     nvg::MoveTo(vec2(x + r, y + d));
//     nvg::LineTo(vec2(x + r, y + d - S_AnaTicksLength));
//     // 7
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 8
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 9
//     nvg::MoveTo(vec2(x, y + r));
//     nvg::LineTo(vec2(x + S_AnaTicksLength, y + r));
//     // 10
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     // 11
//     // nvg::MoveTo(vec2(x, y));
//     // nvg::LineTo(vec2(x, y));
//     nvg::Stroke();
//     nvg::ClosePath();

//     // center
//     nvg::BeginPath();
//     nvg::StrokeWidth(S_AnaCenterThickness);
//     nvg::StrokeColor(S_AnaCenterColor);
//     nvg::Circle(center, S_AnaCenterRadius);
//     nvg::Stroke();
//     nvg::ClosePath();

//     // hour hand


//     // minute hand
//     nvg::BeginPath();
//     nvg::StrokeWidth(S_AnaMinuteThickness);
//     nvg::StrokeColor(S_AnaMinuteColor);
//     // nvg::Translate(center);
//     nvg::SkewX(S_AnaMinuteSkewX);
//     nvg::SkewY(S_AnaMinuteSkewY);
//     nvg::Rotate(S_AnaMinuteRotate);
//     nvg::MoveTo(center);
//     nvg::LineTo(vec2(x, y));
//     nvg::Stroke();
//     nvg::ClosePath();
// }