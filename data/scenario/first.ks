[if exp="0"]
[else]
  [macro name="macro1"]
    dummy_[emb exp="tf.text1"]_dummy_[emb exp="tf.text2"]_dummy
  [endmacro]
  [eval exp="tf.ks1='second.ks'"]
  [macro1]
  [link target="*target1"]_dummy_[endlink]
  [eval exp="tf.text3 = '_please_click_'"]
  [link target="*target1"][emb exp="tf.text3"][endlink]
  [button fix="true" storage=&tf.ks1 x="20" y="200" graphic="button/auto2.png"]
    ; ↑こう書くと進行不能になる
;  [button fix="true" storage="& tf.ks1" x="20" y="200" graphic="button/auto2.png"]
    ; ↑こう書くとOKになる
  [s]
[endif]
*target1
  [jump storage=&tf.ks1]
