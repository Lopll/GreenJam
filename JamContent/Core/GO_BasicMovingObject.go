components {
  id: "S_MovingObject"
  component: "/JamContent/Core/Components/S_MovingObject.script"
}
components {
  id: "S_SpriteByName"
  component: "/Placeables/Common/S_SpriteByName.script"
  properties {
    id: "spriteName"
    value: "GreenCarHor"
    type: PROPERTY_TYPE_HASH
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"movingWall\"\n"
  "mask: \"player\"\n"
  "mask: \"playerTrigger\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      y: 0.5\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 8.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"GreenCarHor\"\n"
  "material: \"/Core/Materials/M_OutlineSprite.material\"\n"
  "size {\n"
  "  x: 27.0\n"
  "  y: 27.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/JamContent/Art/ATL_Jam.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.4
  }
}
