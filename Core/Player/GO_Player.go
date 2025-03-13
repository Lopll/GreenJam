components {
  id: "script"
  component: "/Core/Player/S_Player.script"
}
components {
  id: "KinematicCollision"
  component: "/Core/Player/S_Player_KinematicCollision.script"
}
components {
  id: "inkDrops"
  component: "/ParticleFXs/PFX_InkDrops.particlefx"
  position {
    y: -8.0
    z: 0.4
  }
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"StandDown\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "playback_rate: 0.0\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Characters/Player/ATL_Player.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.6
  }
}
embedded_components {
  id: "collision"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.0\n"
  "restitution: 0.0\n"
  "group: \"player\"\n"
  "mask: \"wall\"\n"
  "mask: \"nonTriggerWall\"\n"
  "mask: \"tilemapWall\"\n"
  "mask: \"trigger\"\n"
  "mask: \"triggerZ\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      y: 3.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: 3.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 1\n"
  "    count: 3\n"
  "  }\n"
  "  data: 12.0\n"
  "  data: 12.0\n"
  "  data: 3.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "backpack"
  type: "sprite"
  data: "default_animation: \"WalkDown\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "playback_rate: 0.0\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Characters/Player/Sack/ATL_Sack.atlas\"\n"
  "}\n"
  ""
  position {
    z: 0.61
  }
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/Sounds/HUD/Button/ButtonHover.ogg\"\n"
  ""
}
embedded_components {
  id: "shadow"
  type: "sprite"
  data: "default_animation: \"Shadow\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Art/Placeables/ATL_Placeable.atlas\"\n"
  "}\n"
  ""
  position {
    y: -28.0
    z: 0.59
  }
  scale {
    x: 1.1
  }
}
embedded_components {
  id: "triggerUp"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"playerTrigger\"\n"
  "mask: \"wall\"\n"
  "mask: \"triggerZ\"\n"
  "mask: \"tilemapWall\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -28.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 8.0\n"
  "  data: 20.0\n"
  "  data: 0.5\n"
  "}\n"
  ""
}
