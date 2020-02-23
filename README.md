# Verilog-simulation
Verilogのシミュレーション波形を見る練習

## gtkwaveとIcarus Verilogの使い方
iverilog -o 作成されるファイル名 -s (テストベンチの)トップモジュール名 作成したverilogファイル.v テストベンチ.v

vpp さっき作られたファイル名　（これにより○○.vcdが作られる）

gtkwave ○○.vcd
