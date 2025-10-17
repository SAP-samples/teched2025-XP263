# Complete Guide to GitHub Markdown Features (2024-2025)

> [!NOTE]
> This guide covers all current GitHub markdown features including recent additions for creating visually rich documentation.

---

## 🎯 Summary of Available Features

### ✅ Fully Supported on GitHub

| Feature | Since | Description | Usage |
|---------|-------|-------------|-------|
| **Alerts/Callouts** | 2023 | Colored note boxes | `> [!NOTE]`, `> [!TIP]`, etc. |
| **Mermaid Diagrams** | 2022 | Flowcharts, sequences, etc. | ` ```mermaid` |
| **Math/LaTeX** | 2022 | Mathematical expressions | `$` inline, `$$` block |
| **GeoJSON Maps** | 2022 | Interactive maps | ` ```geojson` |
| **TopoJSON Maps** | 2022 | Topology maps | ` ```topojson` |
| **STL 3D Models** | 2022 | 3D model viewer | ` ```stl` |
| **Footnotes** | 2021 | Reference notes | `[^1]` |
| **Task Lists** | 2014 | Interactive checkboxes | `- [ ]` |
| **Collapsible Sections** | Always | Hide/show content | `<details>` |
| **Tables** | Always | Data grids | `\| col \|` |
| **Video Embeds** | 2023 | MP4, WebM support | Drag & drop or link |

---

## 1️⃣ Alert/Callout Boxes (Great for Q&A!)

### Available Types

```markdown
> [!NOTE]
> Useful information that users should know (blue)

> [!TIP]
> Helpful advice for doing things better (green)

> [!IMPORTANT]
> Key information users need to know (purple)

> [!WARNING]
> Urgent info that needs immediate attention (yellow)

> [!CAUTION]
> Advises about risks or negative outcomes (red)
```

### Rendered Examples:

> [!NOTE]
> This is how a NOTE appears - great for answers and information

> [!TIP]
> This is how a TIP appears - perfect for questions to explore

> [!IMPORTANT]
> This is how IMPORTANT appears - ideal for key findings

> [!WARNING]
> This is how WARNING appears - good for scenarios

> [!CAUTION]
> This is how CAUTION appears - for critical issues

---

## 2️⃣ Mermaid Diagrams

### Flowchart Example

```mermaid
flowchart LR
    A[Start] --> B{Is it working?}
    B -->|Yes| C[Great!]
    B -->|No| D[Debug]
    D --> B
```

### Sequence Diagram Example

```mermaid
sequenceDiagram
    participant User
    participant System
    participant Database
    User->>System: Login Request
    System->>Database: Validate Credentials
    Database-->>System: Valid
    System-->>User: Access Granted
```

### Pie Chart Example

```mermaid
pie title Cost Distribution
    "HANA Cloud" : 40
    "Cloud Foundry" : 27
    "Integration Suite" : 18
    "AI Services" : 10
    "Storage" : 5
```

### Gantt Chart Example

```mermaid
gantt
    title FinOps Implementation Plan
    dateFormat  YYYY-MM-DD
    section Quick Wins
    Shutdown Dev Envs     :a1, 2024-10-15, 7d
    Right-size HANA       :a2, 2024-10-22, 14d
    section Governance
    FinOps Team Setup     :2024-11-01, 21d
    Chargeback Model      :2024-11-15, 30d
```

---

## 3️⃣ Mathematical Expressions (LaTeX)

### Inline Math
Use single dollar signs: $E = mc^2$ or $`x = {-b \pm \sqrt{b^2-4ac} \over 2a}`$

### Block Math

$$
\begin{aligned}
\text{Total Cost} &= \sum_{i=1}^{n} \text{Service}_i \times \text{Usage}_i \\
&= €18,000 + €12,000 + €8,000 + €4,500 + €2,500 \\
&= €45,000
\end{aligned}
$$

### Cost Optimization Formula

```math
\text{Savings} = \left(\text{Current}_{\text{cost}} - \text{Optimized}_{\text{cost}}\right) \times 12 \text{ months}
```

---

## 4️⃣ Interactive Maps (GeoJSON)

```geojson
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {
        "name": "New York Data Center",
        "cost": "$20M/year"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-74.006, 40.7128]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "London Data Center",
        "cost": "$15M/year"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [-0.1276, 51.5074]
      }
    },
    {
      "type": "Feature",
      "properties": {
        "name": "Singapore Data Center",
        "cost": "$15M/year"
      },
      "geometry": {
        "type": "Point",
        "coordinates": [103.8198, 1.3521]
      }
    }
  ]
}
```

---

## 5️⃣ 3D Models (STL ASCII)

```stl
solid cube
  facet normal 0 0 0
    outer loop
      vertex 0 0 0
      vertex 1 0 0
      vertex 1 1 0
    endloop
  endfacet
  facet normal 0 0 0
    outer loop
      vertex 0 0 0
      vertex 0 1 0
      vertex 1 1 0
    endloop
  endfacet
endsolid cube
```

*Note: Binary STL files must be converted to ASCII format*

---

## 6️⃣ Footnotes

Here's some text with a footnote[^1] and another one[^2].

You can also use named footnotes[^note] for better clarity.

[^1]: This is the first footnote that appears at the bottom.
[^2]: This is the second footnote with more detail.
[^note]: Named footnotes are easier to track in long documents.

---

## 7️⃣ Video Embeds

### Direct Upload
Simply drag and drop `.mp4`, `.mov`, `.webm`, or `.ogv` files into your markdown file!

### From URL
```markdown
![Demo Video](https://user-images.githubusercontent.com/video.mp4)
```

### YouTube (via HTML - some contexts)
```html
<a href="https://www.youtube.com/watch?v=VIDEO_ID">
  <img src="https://img.youtube.com/vi/VIDEO_ID/maxresdefault.jpg" alt="Video Title">
</a>
```

---

## 8️⃣ Enhanced Tables

### Basic Table
| Feature | Support | Visual Impact |
|---------|---------|---------------|
| Headers | ✅ Yes | High |
| Alignment | ✅ Yes | Medium |
| Spans | ❌ No | - |
| Colors | ❌ No | - |

### Alignment Options
| Left | Center | Right |
|:-----|:------:|------:|
| Text | Text | Text |
| 123 | 456 | 789 |

---

## 9️⃣ Task Lists with Progress

### Project Checklist
- [x] Verify invoice accuracy
- [x] Analyze cost drivers
- [ ] Implement quick wins
- [ ] Deploy monitoring
- [ ] Create dashboards

### Nested Tasks
- [x] **Phase 1: Analysis**
  - [x] Download usage reports
  - [x] Compare with invoice
  - [x] Document findings
- [ ] **Phase 2: Optimization**
  - [ ] Shutdown unused resources
  - [ ] Right-size instances
  - [ ] Implement auto-scaling

---

## 🔟 Collapsible Sections (Details/Summary)

<details>
<summary><b>📊 Click to see cost breakdown</b></summary>

### Detailed Cost Analysis

| Service | Q3 2024 | Q4 2024 | Change |
|---------|---------|---------|--------|
| HANA Cloud | €15,000 | €18,000 | +20% |
| Cloud Foundry | €10,000 | €12,000 | +20% |
| Integration | €5,500 | €8,000 | +45% |

> [!TIP]
> You can nest alerts inside collapsible sections!

</details>

<details>
<summary><b>🎯 Implementation Steps</b></summary>

1. **Week 1-2**: Quick Wins
   - [ ] Shutdown dev environments
   - [ ] Delete orphaned resources

2. **Week 3-4**: Monitoring
   - [ ] Deploy dashboards
   - [ ] Set up alerts

</details>

---

## 🎨 Combining Features for Maximum Impact

### Example: Cost Analysis Dashboard

> [!IMPORTANT]
> **Q4 2024 Cost Analysis Dashboard**

<details>
<summary><b>📊 View Detailed Metrics</b></summary>

#### Cost Distribution
```mermaid
pie title Service Costs (€45,000 total)
    "HANA Cloud" : 18000
    "Cloud Foundry" : 12000
    "Integration Suite" : 8000
    "AI Services" : 4500
    "Storage" : 2500
```

#### Monthly Trend
| Month | Cost | Δ |
|-------|------|---|
| Aug | €30,000 | - |
| Sep | €34,615 | +15% |
| Oct | €45,000 | +30% |

#### Cost Formula
$$\text{ROI} = \frac{\text{Savings} - \text{Investment}}{\text{Investment}} \times 100\%$$

</details>

> [!TIP]
> **Next Steps**
> - Review the cost breakdown above[^cost]
> - Implement quick wins for immediate savings
> - Schedule follow-up review

[^cost]: Based on October 2024 SAP BTP invoice

---

## 🚫 What Doesn't Work on GitHub

### Not Supported
- ❌ Inline CSS styles (`style="color:red"`)
- ❌ Custom HTML layouts (divs with styling)
- ❌ Font colors or custom fonts
- ❌ Background colors (except in alerts)
- ❌ Flexbox/Grid layouts
- ❌ JavaScript or interactive elements
- ❌ iframes (except in wikis with limitations)
- ❌ Audio embeds
- ❌ Custom emoji beyond standard set

### Limited Support
- ⚠️ HTML is sanitized (many tags removed)
- ⚠️ Some Mermaid features may not render
- ⚠️ Large files may not preview
- ⚠️ Complex math may have issues

---

## 💡 Best Practices for Visual Impact

### 1. Layer Your Features
Combine alerts + tables + collapsible sections for rich content

### 2. Use Emoji Strategically
- 📊 for data/metrics
- 🎯 for goals/objectives
- ⚡ for quick actions
- 💡 for tips/insights
- ⚠️ for warnings

### 3. Structure with Headers
Use consistent header levels with emoji prefixes

### 4. Create Visual Hierarchy
1. **Alerts** for important callouts
2. **Tables** for structured data
3. **Mermaid** for processes/flows
4. **Details** for optional content

### 5. Interactive Elements
- Task lists for progress tracking
- Collapsible sections to reduce clutter
- Footnotes for references
- Links for navigation

---

## 📚 Complete Feature Reference

| Category | Feature | Syntax | Best For |
|----------|---------|--------|----------|
| **Structure** | Headers | `#` to `######` | Document organization |
| **Emphasis** | Bold/Italic | `**bold**` `*italic*` | Text emphasis |
| **Lists** | Bullets/Numbers | `- item` `1. item` | Enumerations |
| **Links** | Hyperlinks | `[text](url)` | Navigation |
| **Images** | Images | `![alt](url)` | Visual content |
| **Code** | Inline/Block | `` `code` `` ` ```lang` | Code samples |
| **Tables** | Tables | `\| col \|` | Data presentation |
| **Quotes** | Blockquotes | `> quote` | Emphasis |
| **Rules** | Horizontal | `---` | Separation |
| **Tasks** | Checkboxes | `- [ ]` | Progress tracking |
| **Alerts** | Callouts | `> [!TYPE]` | Important notes |
| **Diagrams** | Mermaid | ` ```mermaid` | Flowcharts |
| **Math** | LaTeX | `$math$` | Formulas |
| **Maps** | GeoJSON | ` ```geojson` | Geographic data |
| **3D** | STL | ` ```stl` | 3D models |
| **Collapse** | Details | `<details>` | Hide/show content |
| **Footnotes** | References | `[^1]` | Citations |
| **Videos** | Embed | Drag/drop or URL | Demonstrations |

---

*This guide represents the current state of GitHub Markdown as of 2024-2025. Features may be added or modified over time.*