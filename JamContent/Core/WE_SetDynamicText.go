components {
  id: "S_WorldEvent"
  component: "/Placeables/Common/S_WorldEvent.script"
}
components {
  id: "function1"
  component: "/JamContent/Core/Components/S_WorldEvent_ShowDynamicText.script"
  properties {
    id: "text"
    value: "invWall"
    type: PROPERTY_TYPE_HASH
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"trigger\"\n"
  "mask: \"player\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 108.86479\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
