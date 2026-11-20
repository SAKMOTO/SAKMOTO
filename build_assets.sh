#!/usr/bin/env bash
set -e
BASE="$(cd "$(dirname "$0")" && pwd)"
ASSETS="$BASE/assets"
DARK="$ASSETS/dark"
WORKFLOWS="$BASE/.github/workflows"

mkdir -p "$ASSETS" "$DARK" "$WORKFLOWS"

# ── SECTION HEADER GENERATOR ───────────────────────────────────────────────
make_section() {
  local file="$1" num="$2" label="$3" rule_x="$4"
  cat > "$file" <<EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 70" fill="none">
  <defs>
    <style>
      .num { font-family:'JetBrains Mono',monospace; font-size:56px; font-weight:800; fill:#000; opacity:0; animation: fade 1.2s ease forwards; }
      .label { font-family:'JetBrains Mono',monospace; font-size:14px; letter-spacing:6px; fill:#000; opacity:0; animation: fade 1.2s .2s ease forwards; }
      .rule { stroke:#000; stroke-width:1; opacity:.15; stroke-dasharray:0 1200; animation: draw 1.6s .3s ease forwards; }
      @keyframes fade { to { opacity:1 } }
      @keyframes draw { to { stroke-dasharray:1200 0 } }
    </style>
  </defs>
  <text class="num" x="40" y="56">${num}</text>
  <text class="label" x="140" y="46">${label}</text>
  <line class="rule" x1="${rule_x}" y1="40" x2="1200" y2="40"/>
</svg>
EOF
}

make_section "$ASSETS/s01.svg" "01" "WHOAMI"          260
make_section "$ASSETS/s02.svg" "02" "SYSTEM MAP"      330
make_section "$ASSETS/s03.svg" "03" "PROJECTS"        310
make_section "$ASSETS/s04.svg" "04" "TELEMETRY"       330
make_section "$ASSETS/s05.svg" "05" "THE ROUTE"       320
make_section "$ASSETS/s06.svg" "06" "STACK"           270
make_section "$ASSETS/s07.svg" "07" "AI TOOLS"        290
make_section "$ASSETS/s08.svg" "08" "DEV TOOLS"       320
make_section "$ASSETS/s09.svg" "09" "CONTACT"         290
make_section "$ASSETS/s10.svg" "10" "SUPPORT"         290
make_section "$ASSETS/s11.svg" "11" "EXTRAS"          270

# ── 04b section header (wider num) ─────────────────────────────────────────
cat > "$ASSETS/s04b.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 70" fill="none">
  <defs>
    <style>
      .num { font-family:'JetBrains Mono',monospace; font-size:56px; font-weight:800; fill:#000; opacity:0; animation: fade 1.2s ease forwards; }
      .label { font-family:'JetBrains Mono',monospace; font-size:14px; letter-spacing:6px; fill:#000; opacity:0; animation: fade 1.2s .2s ease forwards; }
      .rule { stroke:#000; stroke-width:1; opacity:.15; stroke-dasharray:0 1200; animation: draw 1.6s .3s ease forwards; }
      @keyframes fade { to { opacity:1 } }
      @keyframes draw { to { stroke-dasharray:1200 0 } }
    </style>
  </defs>
  <text class="num" x="40" y="56">04b</text>
  <text class="label" x="200" y="46">3D CONTRIBUTIONS</text>
  <line class="rule" x1="460" y1="40" x2="1200" y2="40"/>
</svg>
EOF

# ── whoami ──────────────────────────────────────────────────────────────────
cat > "$ASSETS/whoami.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 460" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .k { font-size:14px; fill:#000; opacity:.55; letter-spacing:2px; }
      .v { font-size:15px; fill:#000; }
      .cursor { animation: blink 1.1s steps(2) infinite; }
      @keyframes blink { 50%{opacity:0} }
      .box { stroke:#000; stroke-width:1; opacity:.15; fill:none; }
      .l1,.l2,.l3,.l4,.l5 { opacity:0; animation: fade .6s ease forwards; }
      .l1{animation-delay:.2s} .l2{animation-delay:.8s}
      .l3{animation-delay:1.4s} .l4{animation-delay:2.0s}
      .l5{animation-delay:2.6s}
      @keyframes fade { to { opacity:1 } }
    </style>
  </defs>
  <rect class="box" x="40" y="20" width="1120" height="420"/>
  <text class="m k l1" x="70" y="60">$ whoami</text>
  <text class="m v l1" x="70" y="92">→ Android &amp; Kernel Engineer · System Programmer · ROM / OS Dev</text>
  <text class="m k l2" x="70" y="140">$ cat mission.txt</text>
  <text class="m v l2" x="70" y="172">  I build at the deepest layers of system software — custom kernels for</text>
  <text class="m v l2" x="70" y="196">  Snapdragon devices, full Android ROM porting, Android framework mods,</text>
  <text class="m v l2" x="70" y="220">  and Electron desktop apps. C, C++, Java, Python, Kotlin.</text>
  <text class="m k l3" x="70" y="268">$ ./startup --name=Qubit</text>
  <text class="m v l3" x="70" y="300">  Founder · Qubit — Electron-based desktop platform for system development.</text>
  <text class="m k l4" x="70" y="348">$ cat philosophy.txt</text>
  <text class="m v l4" x="70" y="380">  Bridge hardware and software. Optimize every layer. Ship real products.</text>
  <text class="m k l5" x="70" y="428">$ echo $GOAL</text>
  <text class="m v l5" x="70" y="450">  Become a leading System Engineer · Android internals · cross-platform.<tspan class="cursor">_</tspan></text>
</svg>
EOF

# ── ecosystem ───────────────────────────────────────────────────────────────
cat > "$ASSETS/ecosystem.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 360" fill="none">
  <defs>
    <style>
      .l { font-family:'JetBrains Mono',monospace; font-size:13px; fill:#000; }
      .h { font-size:15px; font-weight:700; }
      .d { opacity:.5; font-size:11px; letter-spacing:2px; }
      .node { stroke:#000; stroke-width:1.2; fill:none; }
      .dline { stroke:#000; stroke-width:1; opacity:.25; stroke-dasharray:2 4; animation: dash 3s linear infinite; }
      @keyframes dash { to { stroke-dashoffset: -12 } }
      .pulse { animation: p 2.4s ease-in-out infinite; transform-origin:center; }
      @keyframes p { 0%,100%{opacity:.5} 50%{opacity:1} }
    </style>
  </defs>
  <circle cx="600" cy="180" r="52" class="node pulse"/>
  <text class="l h" x="600" y="178" text-anchor="middle">QUBIT</text>
  <text class="l d" x="600" y="196" text-anchor="middle">CORE PLATFORM</text>
  <line class="dline" x1="600" y1="128" x2="600" y2="80"/>
  <line class="dline" x1="652" y1="180" x2="840" y2="180"/>
  <line class="dline" x1="548" y1="180" x2="360" y2="180"/>
  <line class="dline" x1="600" y1="232" x2="600" y2="290"/>
  <rect class="node" x="520" y="30" width="160" height="50"/>
  <text class="l h" x="600" y="52" text-anchor="middle">KERNEL_S20FE</text>
  <text class="l d" x="600" y="68" text-anchor="middle">SNAPDRAGON CUSTOM</text>
  <rect class="node" x="840" y="155" width="180" height="50"/>
  <text class="l h" x="930" y="177" text-anchor="middle">ELECTRON DESKTOP</text>
  <text class="l d" x="930" y="193" text-anchor="middle">CROSS-PLATFORM</text>
  <rect class="node" x="180" y="155" width="180" height="50"/>
  <text class="l h" x="270" y="177" text-anchor="middle">ROM / AOSP</text>
  <text class="l d" x="270" y="193" text-anchor="middle">ONE UI PORTING</text>
  <rect class="node" x="520" y="290" width="160" height="50"/>
  <text class="l h" x="600" y="312" text-anchor="middle">METAMIND_X</text>
  <text class="l d" x="600" y="328" text-anchor="middle">AI / ML PLATFORM</text>
</svg>
EOF

# ── projects ────────────────────────────────────────────────────────────────
cat > "$ASSETS/projects.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 620" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .t { font-size:16px; font-weight:700; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .b { font-size:12px; fill:#000; opacity:.8; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .tag { stroke:#000; stroke-width:1; opacity:.45; fill:none; }
      .fade { opacity:0; animation: fade .8s ease forwards; }
      .fade.d1{animation-delay:.1s} .fade.d2{animation-delay:.25s}
      .fade.d3{animation-delay:.4s} .fade.d4{animation-delay:.55s}
      .fade.d5{animation-delay:.7s}
      @keyframes fade { to { opacity:1 } }
    </style>
  </defs>
  <g class="fade d1">
    <rect class="card" x="40" y="20" width="540" height="170"/>
    <text class="m t" x="70" y="55">01 · QUBIT</text>
    <text class="m d" x="70" y="78">ELECTRON · REACT · NODE</text>
    <text class="m b" x="70" y="108">All-in-one desktop platform for kernel</text>
    <text class="m b" x="70" y="126">compilation, ROM porting, Android dev.</text>
    <text class="m b" x="70" y="150">→ qubit-beta.vercel.app</text>
    <text class="m b" x="70" y="172">Virtual device emulator · system analysis (upcoming)</text>
    <rect class="tag" x="470" y="40" width="90" height="22"/>
    <text class="m d" x="515" y="55" text-anchor="middle">LIVE</text>
  </g>
  <g class="fade d2">
    <rect class="card" x="620" y="20" width="540" height="170"/>
    <text class="m t" x="650" y="55">02 · KERNEL_S20FE</text>
    <text class="m d" x="650" y="78">C · LINUX · SNAPDRAGON</text>
    <text class="m b" x="650" y="108">Custom kernel for Galaxy S20 FE —</text>
    <text class="m b" x="650" y="126">perf, battery, KCAL, governors, schedulers.</text>
    <text class="m b" x="650" y="150">→ github.com/SAKMOTO/Kernel_S20FE</text>
    <text class="m b" x="650" y="172">Open source · regular updates · community</text>
    <rect class="tag" x="1050" y="40" width="90" height="22"/>
    <text class="m d" x="1095" y="55" text-anchor="middle">OSS</text>
  </g>
  <g class="fade d3">
    <rect class="card" x="40" y="210" width="540" height="170"/>
    <text class="m t" x="70" y="245">03 · METAMIND_X</text>
    <text class="m d" x="70" y="268">PYTHON · PYTORCH · LANGCHAIN</text>
    <text class="m b" x="70" y="298">Advanced AI/ML platform — training,</text>
    <text class="m b" x="70" y="316">deployment, optimization.</text>
    <text class="m b" x="70" y="340">→ in development</text>
    <text class="m b" x="70" y="362">Sleek interface · peak-performance models</text>
    <rect class="tag" x="470" y="230" width="90" height="22"/>
    <text class="m d" x="515" y="245" text-anchor="middle">WIP</text>
  </g>
  <g class="fade d4">
    <rect class="card" x="620" y="210" width="540" height="170"/>
    <text class="m t" x="650" y="245">04 · OPEN INTERPRETER</text>
    <text class="m d" x="650" y="268">PYTHON · LLM · MULTI-LANG</text>
    <text class="m b" x="650" y="298">Intelligent code execution &amp; context-</text>
    <text class="m b" x="650" y="316">aware suggestions across languages.</text>
    <text class="m b" x="650" y="340">→ in development</text>
    <text class="m b" x="650" y="362">Code analysis · automated optimization</text>
    <rect class="tag" x="1050" y="230" width="90" height="22"/>
    <text class="m d" x="1095" y="245" text-anchor="middle">WIP</text>
  </g>
  <g class="fade d5">
    <rect class="card" x="40" y="400" width="1120" height="190"/>
    <text class="m t" x="70" y="435">05 · ANDROID FRAMEWORK &amp; HAL</text>
    <text class="m d" x="70" y="458">JAVA · KOTLIN · AOSP · SYSTEM SERVICES</text>
    <text class="m b" x="70" y="488">System services, HAL development, One UI porting, device bring-up for AOSP forks.</text>
    <text class="m b" x="70" y="512">Ongoing research → custom ROMs for Snapdragon devices.</text>
    <text class="m b" x="70" y="540">System services · kernel ↔ userspace · stability</text>
    <rect class="tag" x="1050" y="420" width="90" height="22"/>
    <text class="m d" x="1095" y="435" text-anchor="middle">LAB</text>
  </g>
</svg>
EOF

# ── certifications ──────────────────────────────────────────────────────────
cat > "$ASSETS/certifications.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 430" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:14px; font-weight:700; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade { opacity:0; animation: fade .8s ease forwards; }
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}
      .d4{animation-delay:.4s}.d5{animation-delay:.5s}.d6{animation-delay:.6s}
      .d7{animation-delay:.7s}.d8{animation-delay:.8s}
      @keyframes fade { to { opacity:1 } }
    </style>
  </defs>
  <text class="m h" x="40" y="40">CERTIFICATIONS</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="540" height="60"/><text class="m t" x="70" y="110">META · ANDROID DEVELOPER</text><text class="m d" x="70" y="130">APRIL 2024 · PROFESSIONAL</text></g>
  <g class="fade d2"><rect class="card" x="620" y="80" width="540" height="60"/><text class="m t" x="650" y="110">ORACLE · SCJA CERTIFIED</text><text class="m d" x="650" y="130">JUNE 2024 · JAVA SE</text></g>
  <g class="fade d3"><rect class="card" x="40" y="150" width="540" height="60"/><text class="m t" x="70" y="180">GOOGLE · PYTHON DEVELOPER</text><text class="m d" x="70" y="200">APRIL 2024 · CRASH COURSE</text></g>
  <g class="fade d4"><rect class="card" x="620" y="150" width="540" height="60"/><text class="m t" x="650" y="180">META · ANDROID STUDIO</text><text class="m d" x="650" y="200">NOVEMBER 2024 · DEVELOPMENT</text></g>
  <text class="m h" x="40" y="250">AI / ML CERTIFICATIONS</text>
  <line x1="40" y1="265" x2="1160" y2="265" stroke="#000" opacity=".15"/>
  <g class="fade d5"><rect class="card" x="40" y="285" width="540" height="60"/><text class="m t" x="70" y="315">IBM · SKILLSBUILD AMBASSADOR</text><text class="m d" x="70" y="335">JANUARY 2026</text></g>
  <g class="fade d6"><rect class="card" x="620" y="285" width="540" height="60"/><text class="m t" x="650" y="315">IBM · AI FUNDAMENTALS</text><text class="m d" x="650" y="335">JANUARY 2026</text></g>
  <g class="fade d7"><rect class="card" x="40" y="355" width="540" height="60"/><text class="m t" x="70" y="385">LINKEDIN · AI FOUNDATIONS</text><text class="m d" x="70" y="405">MAY 2025 · THINKING MACHINES</text></g>
  <g class="fade d8"><rect class="card" x="620" y="355" width="540" height="60"/><text class="m t" x="650" y="385">LINKEDIN · ML FOUNDATIONS</text><text class="m d" x="650" y="405">MAY 2025 · LINEAR ALGEBRA</text></g>
</svg>
EOF

# ── telemetry ───────────────────────────────────────────────────────────────
cat > "$ASSETS/telemetry.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 260" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .k { font-size:12px; fill:#000; opacity:.55; letter-spacing:2px; }
      .v { font-size:28px; font-weight:700; fill:#000; }
      .bar { fill:#000; opacity:.15; }
      .fill { fill:#000; transform-origin:left; }
      .f1 { animation: g1 3s ease-in-out infinite; }
      .f2 { animation: g2 3s ease-in-out infinite; }
      .f3 { animation: g3 3s ease-in-out infinite; }
      @keyframes g1 { 0%,100%{transform:scaleX(.6)} 50%{transform:scaleX(.92)} }
      @keyframes g2 { 0%,100%{transform:scaleX(.4)} 50%{transform:scaleX(.75)} }
      @keyframes g3 { 0%,100%{transform:scaleX(.5)} 50%{transform:scaleX(.88)} }
      .grid { stroke:#000; stroke-width:1; opacity:.1; }
    </style>
  </defs>
  <line class="grid" x1="0" y1="60" x2="1200" y2="60"/>
  <line class="grid" x1="0" y1="120" x2="1200" y2="120"/>
  <line class="grid" x1="0" y1="180" x2="1200" y2="180"/>
  <text class="m k" x="40" y="40">COMMITS / WEEK</text>
  <text class="m v" x="40" y="88">+38</text>
  <rect class="bar" x="40" y="102" width="300" height="6"/>
  <rect class="fill f1" x="40" y="102" width="300" height="6"/>
  <text class="m k" x="420" y="40">REPOS</text>
  <text class="m v" x="420" y="88">24</text>
  <rect class="bar" x="420" y="102" width="300" height="6"/>
  <rect class="fill f2" x="420" y="102" width="300" height="6"/>
  <text class="m k" x="800" y="40">STARS</text>
  <text class="m v" x="800" y="88">128+</text>
  <rect class="bar" x="800" y="102" width="300" height="6"/>
  <rect class="fill f3" x="800" y="102" width="300" height="6"/>
  <text class="m k" x="40" y="160">●  CURRENT FOCUS</text>
  <text class="m v" x="40" y="200" style="font-size:18px;">KERNEL · ROM · QUBIT V1</text>
  <text class="m k" x="800" y="160">●  STATUS</text>
  <text class="m v" x="800" y="200" style="font-size:18px;">SHIPPING · ITERATING</text>
</svg>
EOF

# ── timeline ────────────────────────────────────────────────────────────────
cat > "$ASSETS/timeline.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 280" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .y { font-size:14px; font-weight:700; fill:#000; }
      .t { font-size:13px; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .ln { stroke:#000; stroke-width:1; opacity:.2; }
      .dot { fill:#000; animation: p 2s ease-in-out infinite; }
      @keyframes p { 0%,100%{opacity:.5} 50%{opacity:1} }
      .tick { stroke:#000; stroke-width:1; opacity:.15; }
    </style>
  </defs>
  <line class="ln" x1="40" y1="140" x2="1160" y2="140"/>
  <line class="tick" x1="40" y1="120" x2="40" y2="160"/>
  <line class="tick" x1="320" y1="120" x2="320" y2="160"/>
  <line class="tick" x1="600" y1="120" x2="600" y2="160"/>
  <line class="tick" x1="880" y1="120" x2="880" y2="160"/>
  <line class="tick" x1="1160" y1="120" x2="1160" y2="160"/>
  <circle class="dot" cx="40" cy="140" r="5"/>
  <circle class="dot" cx="320" cy="140" r="5"/>
  <circle class="dot" cx="600" cy="140" r="5"/>
  <circle class="dot" cx="880" cy="140" r="5"/>
  <circle class="dot" cx="1160" cy="140" r="5"/>
  <text class="m y" x="40" y="100">2023</text>
  <text class="m d" x="40" y="80">START</text>
  <text class="m y" x="320" y="100">2024</text>
  <text class="m d" x="320" y="80">KERNEL</text>
  <text class="m y" x="600" y="100">2025</text>
  <text class="m d" x="600" y="80">QUBIT</text>
  <text class="m y" x="880" y="100">2026</text>
  <text class="m d" x="880" y="80">AI / ML</text>
  <text class="m y" x="1160" y="100" text-anchor="end">NEXT</text>
  <text class="m d" x="1160" y="80" text-anchor="end">SCALE</text>
  <text class="m t" x="40" y="180">Android dev journey begins</text>
  <text class="m t" x="320" y="180">First custom kernel shipped</text>
  <text class="m t" x="600" y="180">Qubit platform launched</text>
  <text class="m t" x="880" y="180">METAMIND_X R&amp;D</text>
  <text class="m t" x="1160" y="180" text-anchor="end">Founder · scale Qubit</text>
  <text class="m d" x="40" y="220">SNAPDRAGON · AOSP · ONE UI</text>
  <text class="m d" x="320" y="220">C / LINUX / HAL</text>
  <text class="m d" x="600" y="220">ELECTRON / REACT</text>
  <text class="m d" x="880" y="220">PYTORCH / LANGCHAIN</text>
  <text class="m d" x="1160" y="220" text-anchor="end">SYSTEMS · AI</text>
</svg>
EOF

# ── experience ──────────────────────────────────────────────────────────────
cat > "$ASSETS/experience.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 380" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .role { font-size:18px; font-weight:700; fill:#000; }
      .org { font-size:13px; fill:#000; opacity:.65; }
      .when { font-size:12px; fill:#000; opacity:.5; letter-spacing:2px; }
      .desc { font-size:12px; fill:#000; opacity:.8; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.3s}.d3{animation-delay:.5s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <g class="fade d1">
    <rect class="card" x="40" y="20" width="1120" height="100"/>
    <text class="m when" x="70" y="50">PRESENT</text>
    <text class="m role" x="70" y="78">FOUNDER · QUBIT</text>
    <text class="m org" x="500" y="78">qubit-beta.vercel.app</text>
    <text class="m desc" x="70" y="100">Electron desktop platform · kernel &amp; ROM tooling · system dev workflows</text>
  </g>
  <g class="fade d2">
    <rect class="card" x="40" y="140" width="1120" height="100"/>
    <text class="m when" x="70" y="170">ONGOING</text>
    <text class="m role" x="70" y="198">KERNEL ENGINEER · KERNEL_S20FE</text>
    <text class="m org" x="600" y="198">github.com/SAKMOTO/Kernel_S20FE</text>
    <text class="m desc" x="70" y="220">Custom Snapdragon kernel · governors · KCAL · I/O schedulers · stability</text>
  </g>
  <g class="fade d3">
    <rect class="card" x="40" y="260" width="1120" height="100"/>
    <text class="m when" x="70" y="290">R&amp;D</text>
    <text class="m role" x="70" y="318">SYSTEM PROGRAMMER · ROM / AOSP</text>
    <text class="m org" x="640" y="318">One UI porting · device bring-up</text>
    <text class="m desc" x="70" y="340">Android framework mods · HAL · system services · AOSP customization</text>
  </g>
</svg>
EOF

# ── stack ───────────────────────────────────────────────────────────────────
cat > "$ASSETS/stack.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 480" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .cat { font-size:12px; font-weight:700; fill:#000; letter-spacing:3px; }
      .item { font-size:13px; fill:#000; opacity:.78; }
      .card { stroke:#000; stroke-width:1; opacity:.15; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}
      .d4{animation-delay:.4s}.d5{animation-delay:.5s}.d6{animation-delay:.6s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <g class="fade d1"><rect class="card" x="40" y="20" width="360" height="200"/><text class="m cat" x="70" y="55">LANGUAGES</text><text class="m item" x="70" y="95">C · C++</text><text class="m item" x="70" y="125">Java</text><text class="m item" x="70" y="155">Kotlin</text><text class="m item" x="70" y="185">Python</text></g>
  <g class="fade d2"><rect class="card" x="420" y="20" width="360" height="200"/><text class="m cat" x="450" y="55">SYSTEM</text><text class="m item" x="450" y="95">Linux</text><text class="m item" x="450" y="125">Android Framework</text><text class="m item" x="450" y="155">HAL · AOSP</text><text class="m item" x="450" y="185">Git · Bash</text></g>
  <g class="fade d3"><rect class="card" x="800" y="20" width="360" height="200"/><text class="m cat" x="830" y="55">DESKTOP</text><text class="m item" x="830" y="95">Electron</text><text class="m item" x="830" y="125">React</text><text class="m item" x="830" y="155">Node.js</text><text class="m item" x="830" y="185">Express</text></g>
  <g class="fade d4"><rect class="card" x="40" y="240" width="360" height="200"/><text class="m cat" x="70" y="275">WEB</text><text class="m item" x="70" y="315">HTML · CSS</text><text class="m item" x="70" y="345">JavaScript</text><text class="m item" x="70" y="375">React · jQuery</text><text class="m item" x="70" y="405">Tailwind · PHP</text></g>
  <g class="fade d5"><rect class="card" x="420" y="240" width="360" height="200"/><text class="m cat" x="450" y="275">DATA</text><text class="m item" x="450" y="315">MySQL</text><text class="m item" x="450" y="345">MongoDB</text><text class="m item" x="450" y="375">PostgreSQL</text><text class="m item" x="450" y="405">Firebase</text></g>
  <g class="fade d6"><rect class="card" x="800" y="240" width="360" height="200"/><text class="m cat" x="830" y="275">AI / ML</text><text class="m item" x="830" y="315">PyTorch · NumPy</text><text class="m item" x="830" y="345">Pandas · TensorFlow</text><text class="m item" x="830" y="375">LangChain · Ollama</text><text class="m item" x="830" y="405">LlamaIndex · Cohere</text></g>
</svg>
EOF

# ── ai-tools ────────────────────────────────────────────────────────────────
cat > "$ASSETS/ai-tools.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 320" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:14px; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}
      .d4{animation-delay:.4s}.d5{animation-delay:.5s}.d6{animation-delay:.6s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <text class="m h" x="40" y="40">AI TOOLS &amp; PROMPT ENGINEERING</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="360" height="90"/><text class="m t" x="70" y="118">CHATGPT</text><text class="m d" x="70" y="140">OPENAI · PROMPTING</text></g>
  <g class="fade d2"><rect class="card" x="420" y="80" width="360" height="90"/><text class="m t" x="450" y="118">CLAUDE</text><text class="m d" x="450" y="140">ANTHROPIC · PROMPTING</text></g>
  <g class="fade d3"><rect class="card" x="800" y="80" width="360" height="90"/><text class="m t" x="830" y="118">GOOGLE GEMINI</text><text class="m d" x="830" y="140">GOOGLE · PROMPTING</text></g>
  <g class="fade d4"><rect class="card" x="40" y="190" width="360" height="90"/><text class="m t" x="70" y="228">HUGGING FACE</text><text class="m d" x="70" y="250">MODELS · DATASETS</text></g>
  <g class="fade d5"><rect class="card" x="420" y="190" width="360" height="90"/><text class="m t" x="450" y="228">META LLAMA</text><text class="m d" x="450" y="250">LOCAL · OLLAMA</text></g>
  <g class="fade d6"><rect class="card" x="800" y="190" width="360" height="90"/><text class="m t" x="830" y="228">COHERE</text><text class="m d" x="830" y="250">LLM · SEARCH</text></g>
</svg>
EOF

# ── dev-tools ───────────────────────────────────────────────────────────────
cat > "$ASSETS/dev-tools.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 220" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:14px; fill:#000; }
      .s { font-size:11px; fill:#000; opacity:.5; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}
      .d4{animation-delay:.4s}.d5{animation-delay:.5s}.d6{animation-delay:.6s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <text class="m h" x="40" y="40">DEVELOPMENT TOOLS</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="175" height="110"/><text class="m t" x="60" y="125">VS CODE</text><text class="m s" x="60" y="155">EDITOR</text></g>
  <g class="fade d2"><rect class="card" x="225" y="80" width="175" height="110"/><text class="m t" x="245" y="118">ANDROID</text><text class="m t" x="245" y="140">STUDIO</text><text class="m s" x="245" y="165">IDE</text></g>
  <g class="fade d3"><rect class="card" x="410" y="80" width="175" height="110"/><text class="m t" x="430" y="125">GIT</text><text class="m s" x="430" y="150">VERSION CONTROL</text></g>
  <g class="fade d4"><rect class="card" x="595" y="80" width="175" height="110"/><text class="m t" x="615" y="125">BASH</text><text class="m s" x="615" y="150">SHELL</text></g>
  <g class="fade d5"><rect class="card" x="780" y="80" width="175" height="110"/><text class="m t" x="800" y="125">WORDPRESS</text><text class="m s" x="800" y="150">CMS</text></g>
  <g class="fade d6"><rect class="card" x="965" y="80" width="195" height="110"/><text class="m t" x="985" y="125">FIGMA</text><text class="m s" x="985" y="150">DESIGN</text></g>
</svg>
EOF

# ── contact ─────────────────────────────────────────────────────────────────
cat > "$ASSETS/contact.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 280" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:14px; font-weight:700; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}.d4{animation-delay:.4s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <text class="m h" x="40" y="40">CONTACT</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="270" height="160"/><text class="m t" x="70" y="140">EMAIL</text><text class="m d" x="70" y="165">mohammedharun3916</text><text class="m d" x="70" y="185">@gmail.com</text></g>
  <g class="fade d2"><rect class="card" x="320" y="80" width="270" height="160"/><text class="m t" x="350" y="140">WHATSAPP</text><text class="m d" x="350" y="170">+91 79939 16188</text></g>
  <g class="fade d3"><rect class="card" x="600" y="80" width="270" height="160"/><text class="m t" x="630" y="140">TELEGRAM</text><text class="m d" x="630" y="170">@SAKMOTO</text></g>
  <g class="fade d4"><rect class="card" x="880" y="80" width="280" height="160"/><text class="m t" x="910" y="140">DISCORD</text><text class="m d" x="910" y="170">mohammedharun_3916</text></g>
</svg>
EOF

# ── support ─────────────────────────────────────────────────────────────────
cat > "$ASSETS/support.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 200" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:14px; font-weight:700; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.25s}.d3{animation-delay:.4s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <text class="m h" x="40" y="40">SUPPORT MY WORK</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="360" height="100"/><text class="m t" x="70" y="125">BUY ME A COFFEE</text><text class="m d" x="70" y="150">buymeacoffee.com/mohammedharun</text></g>
  <g class="fade d2"><rect class="card" x="420" y="80" width="360" height="100"/><text class="m t" x="450" y="125">PAYPAL</text><text class="m d" x="450" y="150">paypal.me/MohammedHarun209</text></g>
  <g class="fade d3"><rect class="card" x="800" y="80" width="360" height="100"/><text class="m t" x="830" y="125">KO-FI</text><text class="m d" x="830" y="150">ko-fi.com/mohammedharun</text></g>
</svg>
EOF

# ── extras ──────────────────────────────────────────────────────────────────
cat > "$ASSETS/extras.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 300" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:14px; font-weight:700; fill:#000; letter-spacing:3px; }
      .t { font-size:13px; fill:#000; }
      .d { font-size:11px; fill:#000; opacity:.55; letter-spacing:2px; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.25s}.d3{animation-delay:.4s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <text class="m h" x="40" y="40">EXTRAS — PLAYLIST · MEMES · GAME</text>
  <line x1="40" y1="55" x2="1160" y2="55" stroke="#000" opacity=".15"/>
  <g class="fade d1"><rect class="card" x="40" y="80" width="360" height="190"/><text class="m h" x="70" y="115">CODING PLAYLIST</text><text class="m t" x="70" y="145">Spotify → curated coding beats</text><text class="m d" x="70" y="175">open.spotify.com/playlist/7CrRTw0Z</text></g>
  <g class="fade d2"><rect class="card" x="420" y="80" width="360" height="190"/><text class="m h" x="450" y="115">MEMES &amp; JOKES</text><text class="m t" x="450" y="145">programming-joke-card API</text><text class="m t" x="450" y="170">GIFs: docker · linus · feature-tree</text><text class="m d" x="450" y="200">expand in README details block</text></g>
  <g class="fade d3"><rect class="card" x="800" y="80" width="360" height="190"/><text class="m h" x="830" y="115">DINO GAME</text><text class="m t" x="830" y="145">Play the classic Chrome dino</text><text class="m d" x="830" y="175">expand in README details block</text></g>
</svg>
EOF

# ── github-stats ─────────────────────────────────────────────────────────────
cat > "$ASSETS/github-stats.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 260" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .h { font-size:11px; fill:#000; opacity:.55; letter-spacing:3px; }
      .big { font-size:32px; font-weight:800; fill:#000; }
      .card { stroke:#000; stroke-width:1; opacity:.18; fill:none; }
      .bar { fill:#000; opacity:.12; }
      .fill { fill:#000; }
      .fade{opacity:0;animation:fade .8s ease forwards}
      .d1{animation-delay:.1s}.d2{animation-delay:.2s}.d3{animation-delay:.3s}.d4{animation-delay:.4s}
      @keyframes fade{to{opacity:1}}
    </style>
  </defs>
  <g class="fade d1"><rect class="card" x="40" y="20" width="260" height="100"/><text class="m h" x="60" y="48">PUBLIC REPOS</text><text class="m big" x="60" y="95">24</text></g>
  <g class="fade d2"><rect class="card" x="320" y="20" width="260" height="100"/><text class="m h" x="340" y="48">FOLLOWERS</text><text class="m big" x="340" y="95">—</text></g>
  <g class="fade d3"><rect class="card" x="600" y="20" width="260" height="100"/><text class="m h" x="620" y="48">TOTAL STARS</text><text class="m big" x="620" y="95">128+</text></g>
  <g class="fade d4"><rect class="card" x="880" y="20" width="280" height="100"/><text class="m h" x="900" y="48">CONTRIBUTIONS</text><text class="m big" x="900" y="95">2.4k+</text></g>
  <text class="m h" x="40" y="160">TOP LANGUAGES</text>
  <rect class="bar" x="40" y="180" width="1120" height="10"/>
  <rect class="fill" x="40" y="180" width="480" height="10"/>
  <rect class="fill" x="520" y="180" width="280" height="10" opacity=".7"/>
  <rect class="fill" x="800" y="180" width="200" height="10" opacity=".5"/>
  <rect class="fill" x="1000" y="180" width="160" height="10" opacity=".3"/>
  <text class="m h" x="40" y="220">C / C++ 42%</text>
  <text class="m h" x="520" y="220">JAVA 24%</text>
  <text class="m h" x="800" y="220">PYTHON 18%</text>
  <text class="m h" x="1000" y="220">OTHER 16%</text>
</svg>
EOF

# ── footer ──────────────────────────────────────────────────────────────────
cat > "$ASSETS/footer.svg" <<'EOF'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 140" fill="none">
  <defs>
    <style>
      .m { font-family:'JetBrains Mono',monospace; }
      .k { font-size:11px; fill:#000; opacity:.55; letter-spacing:3px; }
      .v { font-size:16px; fill:#000; font-weight:700; }
      .dot { fill:#000; animation: p 2s ease-in-out infinite; }
      @keyframes p { 0%,100%{opacity:.3} 50%{opacity:1} }
      .line { stroke:#000; stroke-width:1; opacity:.15; }
    </style>
  </defs>
  <line class="line" x1="0" y1="30" x2="1200" y2="30"/>
  <circle class="dot" cx="60" cy="70" r="6"/>
  <text class="m k" x="80" y="75">CURRENT STATUS</text>
  <text class="m v" x="80" y="105">Building Qubit V1 · Shipping Kernel_S20FE</text>
  <text class="m k" x="820" y="75">SIGNAL</text>
  <text class="m v" x="820" y="105">Open to collab · system-level projects</text>
</svg>
EOF

# ── GitHub Actions workflows ─────────────────────────────────────────────────
cat > "$WORKFLOWS/profile-3d.yml" <<'EOF'
name: GitHub 3D Profile

on:
  schedule:
    - cron: "0 0 * * *"
  workflow_dispatch:
  push:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4
      - uses: yoshi389111/github-profile-3d-contrib@latest
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          USERNAME: SAKMOTO
      - name: Commit & push
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "github-actions[bot]@users.noreply.github.com"
          git add -A .
          git commit -m "chore: update 3d profile" || exit 0
          git push
EOF

cat > "$WORKFLOWS/snake.yml" <<'EOF'
name: Generate Snake
on:
  schedule: [{cron: "0 */12 * * *"}]
  workflow_dispatch:
  push: {branches: [main]}
jobs:
  generate:
    runs-on: ubuntu-latest
    permissions: {contents: write}
    steps:
      - uses: Platane/snk/svg-only@v3
        with:
          github_user_name: SAKMOTO
          outputs: |
            dist/github-contribution-grid-snake.svg
            dist/github-contribution-grid-snake-dark.svg?palette=github-dark
      - uses: crazy-max/ghaction-github-pages@v3.1.0
        with: {target_branch: output, build_dir: dist}
        env: {GITHUB_TOKEN: "${{ secrets.GITHUB_TOKEN }}"}
EOF

# ── Dark theme — invert #000 → #fff ──────────────────────────────────────────
for f in "$ASSETS"/*.svg; do
  sed 's/#000/#fff/g; s/opacity:\.15/opacity:.25/g' "$f" > "$DARK/$(basename "$f")"
done

echo "✅ All assets generated:"
echo "   Light SVGs : $(ls "$ASSETS"/*.svg | wc -l | tr -d ' ')"
echo "   Dark SVGs  : $(ls "$DARK"/*.svg | wc -l | tr -d ' ')"
echo "   Workflows  : $(ls "$WORKFLOWS"/*.yml | wc -l | tr -d ' ')"
