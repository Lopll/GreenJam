components {
  id: "S_DynamicTextComp"
  component: "/JamContent/Core/Components/DynamicText/S_DynamicTextComp.script"
}
embedded_components {
  id: "text"
  type: "label"
  data: "size {\n"
  "  x: 64.0\n"
  "  y: 64.0\n"
  "}\n"
  "pivot: PIVOT_NW\n"
  "line_break: true\n"
  "font: \"/JamContent/Art/DynamicText.font\"\n"
  "material: \"/builtins/fonts/label-df.material\"\n"
  ""
  position {
    x: -149.0
    y: 75.0
    z: 10.0
  }
}
