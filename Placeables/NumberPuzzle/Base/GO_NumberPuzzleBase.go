components {
  id: "NumberPuzzleBase"
  component: "/Placeables/NumberPuzzle/Base/S_NumberPuzzleBase.script"
}
components {
  id: "PuzzleElement"
  component: "/Placeables/Common/S_PuzzleElement.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"LiquidPuzzleBase\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    x: -1.0
    y: 21.0
    z: 0.5
  }
}
embedded_components {
  id: "kanji2"
  type: "sprite"
  data: "default_animation: \"1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Kanji/Icons/ATL_Kanji_Icons.atlas\"\n"
  "}\n"
  ""
  position {
    x: -16.0
    y: 23.0
    z: 0.51
  }
}
embedded_components {
  id: "kanji1"
  type: "sprite"
  data: "default_animation: \"1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 17.0\n"
  "  y: 17.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Kanji/Icons/ATL_Kanji_Icons.atlas\"\n"
  "}\n"
  ""
  position {
    x: -16.0
    y: 3.0
    z: 0.51
  }
}
embedded_components {
  id: "kanji3"
  type: "sprite"
  data: "default_animation: \"1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 17.0\n"
  "  y: 17.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Kanji/Icons/ATL_Kanji_Icons.atlas\"\n"
  "}\n"
  ""
  position {
    x: -16.0
    y: 43.0
    z: 0.51
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"nonTriggerWall\"\n"
  "mask: \"player\"\n"
  "mask: \"playerTrigger\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -1.0\n"
  "      y: 21.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 31.0\n"
  "  data: 7.5\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "depthTrigger"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_STATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"triggerZ\"\n"
  "mask: \"player\"\n"
  "mask: \"playerTrigger\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -1.0\n"
  "      y: 28.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 35.0\n"
  "  data: 15.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "counterKanji"
  type: "sprite"
  data: "default_animation: \"1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 17.0\n"
  "  y: 17.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Kanji/Icons/ATL_Kanji_Icons.atlas\"\n"
  "}\n"
  ""
  position {
    x: 25.0
    y: 32.5
    z: 0.51
  }
}
