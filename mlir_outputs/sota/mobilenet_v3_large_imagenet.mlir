#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<() -> ()>
#map4 = affine_map<(d0, d1, d2, d3) -> ()>
#map5 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d1, d0)>
#map8 = affine_map<(d0, d1) -> (0, d1)>
#map9 = affine_map<(d0, d1) -> (d1)>
#map10 = affine_map<(d0, d1) -> ()>
module attributes {torch.debug_module_name = "MobileNetV3"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x1280xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<1280x960xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<960x240x1x1xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<240x960x1x1xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<960x1x5x5xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<960x240x1x1xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<240x960x1x1xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<960x1x5x5xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<160x672x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<672x168x1x1xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<168xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<168x672x1x1xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<672x1x5x5xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<672x112x1x1xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<112x672x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<672x168x1x1xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<168xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<168x672x1x1xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<672x1x3x3xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<672xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<672x112x1x1xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<112xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<112x480x1x1xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<480x120x1x1xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<120x480x1x1xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<480x1x3x3xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<80x184x1x1xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<184x1x3x3xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<184x80x1x1xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<80x184x1x1xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<184x1x3x3xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<184xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<184x80x1x1xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<80x200x1x1xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<200x1x3x3xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<200xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<200x80x1x1xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<80x240x1x1xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<240x1x3x3xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<240xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<240x40x1x1xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<40x120x1x1xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<120x32x1x1xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<32x120x1x1xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<120x1x5x5xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<120x40x1x1xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<40x120x1x1xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<120x32x1x1xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<32x120x1x1xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<120x1x5x5xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<120xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<120x40x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<40x72x1x1xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<72x24x1x1xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<24x72x1x1xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<72x1x5x5xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<72x24x1x1xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<24x72x1x1xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<72x1x3x3xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<72xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<72x24x1x1xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<24x64x1x1xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<64x1x3x3xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<64x16x1x1xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<16x16x1x1xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<16x1x3x3xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<16x3x3x3xf32>
    %false = arith.constant false
    %cst_265 = arith.constant 0.000000e+00 : f32
    %c6_i64 = arith.constant 6 : i64
    %c0_i64 = arith.constant 0 : i64
    %cst_266 = arith.constant 1.000000e-03 : f64
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_267 = arith.constant 3.000000e+00 : f32
    %cst_268 = arith.constant 6.000000e+00 : f32
    %c2 = arith.constant 2 : index
    %cst_269 = arith.constant 7.840000e+02 : f32
    %cst_270 = arith.constant 1.960000e+02 : f32
    %cst_271 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x16x112x112xf32>
    %1 = linalg.fill ins(%cst_265 : f32) outs(%0 : tensor<1x16x112x112xf32>) -> tensor<1x16x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_264 : tensor<1x3x226x226xf32>, tensor<16x3x3x3xf32>) outs(%1 : tensor<1x16x112x112xf32>) -> tensor<1x16x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_261, %cst_260, %cst_263, %cst_262 : tensor<1x16x112x112xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%2 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x16x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x16x112x112xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x16x112x112xf32>
    %7 = tensor.empty() : tensor<i64>
    %8 = linalg.fill ins(%c6_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %9 = tensor.empty() : tensor<f32>
    %10 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%8 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %392 = arith.sitofp %in : i64 to f32
      linalg.yield %392 : f32
    } -> tensor<f32>
    %11 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %10 : tensor<1x16x112x112xf32>, tensor<f32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x16x112x112xf32>
    %12 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11 : tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x16x112x112xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %4 : tensor<1x16x112x112xf32>, tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x16x112x112xf32>
    %padded_272 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x16x112x112xf32> to tensor<1x16x114x114xf32>
    %collapsed = tensor.collapse_shape %cst_259 [[0, 1], [2], [3]] : tensor<16x1x3x3xf32> into tensor<16x3x3xf32>
    %14 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_272, %collapsed : tensor<1x16x114x114xf32>, tensor<16x3x3xf32>) outs(%1 : tensor<1x16x112x112xf32>) -> tensor<1x16x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_256, %cst_255, %cst_258, %cst_257 : tensor<1x16x112x112xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%14 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x16x112x112xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x16x112x112xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_254 : tensor<1x16x112x112xf32>, tensor<16x16x1x1xf32>) outs(%1 : tensor<1x16x112x112xf32>) -> tensor<1x16x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %18 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_251, %cst_250, %cst_253, %cst_252 : tensor<1x16x112x112xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>, tensor<16xf32>) outs(%17 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x16x112x112xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %13 : tensor<1x16x112x112xf32>, tensor<1x16x112x112xf32>) outs(%0 : tensor<1x16x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x16x112x112xf32>
    %20 = tensor.empty() : tensor<1x64x112x112xf32>
    %21 = linalg.fill ins(%cst_265 : f32) outs(%20 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%19, %cst_249 : tensor<1x16x112x112xf32>, tensor<64x16x1x1xf32>) outs(%21 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_246, %cst_245, %cst_248, %cst_247 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%22 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x64x112x112xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x112x112xf32>) outs(%20 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_273 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %25 = tensor.empty() : tensor<1x64x56x56xf32>
    %26 = linalg.fill ins(%cst_265 : f32) outs(%25 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %collapsed_274 = tensor.collapse_shape %cst_244 [[0, 1], [2], [3]] : tensor<64x1x3x3xf32> into tensor<64x3x3xf32>
    %27 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_273, %collapsed_274 : tensor<1x64x114x114xf32>, tensor<64x3x3xf32>) outs(%26 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_241, %cst_240, %cst_243, %cst_242 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%27 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x64x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x64x56x56xf32>) outs(%25 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x64x56x56xf32>
    %30 = tensor.empty() : tensor<1x24x56x56xf32>
    %31 = linalg.fill ins(%cst_265 : f32) outs(%30 : tensor<1x24x56x56xf32>) -> tensor<1x24x56x56xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %cst_239 : tensor<1x64x56x56xf32>, tensor<24x64x1x1xf32>) outs(%31 : tensor<1x24x56x56xf32>) -> tensor<1x24x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_236, %cst_235, %cst_238, %cst_237 : tensor<1x24x56x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%32 : tensor<1x24x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x24x56x56xf32>
    %34 = tensor.empty() : tensor<1x72x56x56xf32>
    %35 = linalg.fill ins(%cst_265 : f32) outs(%34 : tensor<1x72x56x56xf32>) -> tensor<1x72x56x56xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%33, %cst_234 : tensor<1x24x56x56xf32>, tensor<72x24x1x1xf32>) outs(%35 : tensor<1x72x56x56xf32>) -> tensor<1x72x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_231, %cst_230, %cst_233, %cst_232 : tensor<1x72x56x56xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%36 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x72x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x72x56x56xf32>) outs(%34 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x56x56xf32>
    %padded_275 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x72x56x56xf32> to tensor<1x72x58x58xf32>
    %collapsed_276 = tensor.collapse_shape %cst_229 [[0, 1], [2], [3]] : tensor<72x1x3x3xf32> into tensor<72x3x3xf32>
    %39 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_275, %collapsed_276 : tensor<1x72x58x58xf32>, tensor<72x3x3xf32>) outs(%35 : tensor<1x72x56x56xf32>) -> tensor<1x72x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_226, %cst_225, %cst_228, %cst_227 : tensor<1x72x56x56xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%39 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x72x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x72x56x56xf32>) outs(%34 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x56x56xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_224 : tensor<1x72x56x56xf32>, tensor<24x72x1x1xf32>) outs(%31 : tensor<1x24x56x56xf32>) -> tensor<1x24x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_221, %cst_220, %cst_223, %cst_222 : tensor<1x24x56x56xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%42 : tensor<1x24x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x24x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %33 : tensor<1x24x56x56xf32>, tensor<1x24x56x56xf32>) outs(%30 : tensor<1x24x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x24x56x56xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_219 : tensor<1x24x56x56xf32>, tensor<72x24x1x1xf32>) outs(%35 : tensor<1x72x56x56xf32>) -> tensor<1x72x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_216, %cst_215, %cst_218, %cst_217 : tensor<1x72x56x56xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%45 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x72x56x56xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x72x56x56xf32>) outs(%34 : tensor<1x72x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x56x56xf32>
    %padded_277 = tensor.pad %47 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x72x56x56xf32> to tensor<1x72x60x60xf32>
    %48 = tensor.empty() : tensor<1x72x28x28xf32>
    %49 = linalg.fill ins(%cst_265 : f32) outs(%48 : tensor<1x72x28x28xf32>) -> tensor<1x72x28x28xf32>
    %collapsed_278 = tensor.collapse_shape %cst_214 [[0, 1], [2], [3]] : tensor<72x1x5x5xf32> into tensor<72x5x5xf32>
    %50 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_277, %collapsed_278 : tensor<1x72x60x60xf32>, tensor<72x5x5xf32>) outs(%49 : tensor<1x72x28x28xf32>) -> tensor<1x72x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_211, %cst_210, %cst_213, %cst_212 : tensor<1x72x28x28xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>, tensor<72xf32>) outs(%50 : tensor<1x72x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x72x28x28xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51 : tensor<1x72x28x28xf32>) outs(%48 : tensor<1x72x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x28x28xf32>
    %53 = tensor.empty() : tensor<1x72x1x1xf32>
    %54 = linalg.fill ins(%cst_265 : f32) outs(%53 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %55 = tensor.empty() : tensor<28x28xf32>
    %56 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %55 : tensor<1x72x28x28xf32>, tensor<28x28xf32>) outs(%54 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_269 : f32
      linalg.yield %392 : f32
    } -> tensor<1x72x1x1xf32>
    %58 = tensor.empty() : tensor<1x24x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_208 : tensor<24xf32>) outs(%58 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%57, %cst_209 : tensor<1x72x1x1xf32>, tensor<24x72x1x1xf32>) outs(%59 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x24x1x1xf32>) outs(%58 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x24x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_206 : tensor<72xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x72x1x1xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %cst_207 : tensor<1x24x1x1xf32>, tensor<72x24x1x1xf32>) outs(%62 : tensor<1x72x1x1xf32>) -> tensor<1x72x1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x72x1x1xf32>
    %65 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x72x1x1xf32>
    %66 = linalg.fill ins(%c1_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %67 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%66 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %392 = arith.sitofp %in : i64 to f32
      linalg.yield %392 : f32
    } -> tensor<f32>
    %68 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %65 : tensor<f32>, tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x1x1xf32>
    %69 = linalg.fill ins(%c0_i64 : i64) outs(%7 : tensor<i64>) -> tensor<i64>
    %70 = linalg.generic {indexing_maps = [#map3, #map3], iterator_types = []} ins(%69 : tensor<i64>) outs(%9 : tensor<f32>) {
    ^bb0(%in: i64, %out: f32):
      %392 = arith.sitofp %in : i64 to f32
      linalg.yield %392 : f32
    } -> tensor<f32>
    %71 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %68 : tensor<f32>, tensor<1x72x1x1xf32>) outs(%53 : tensor<1x72x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x72x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %52 : tensor<1x72x1x1xf32>, tensor<1x72x28x28xf32>) outs(%48 : tensor<1x72x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x72x28x28xf32>
    %73 = tensor.empty() : tensor<1x40x28x28xf32>
    %74 = linalg.fill ins(%cst_265 : f32) outs(%73 : tensor<1x40x28x28xf32>) -> tensor<1x40x28x28xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_205 : tensor<1x72x28x28xf32>, tensor<40x72x1x1xf32>) outs(%74 : tensor<1x40x28x28xf32>) -> tensor<1x40x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_202, %cst_201, %cst_204, %cst_203 : tensor<1x40x28x28xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%75 : tensor<1x40x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x40x28x28xf32>
    %77 = tensor.empty() : tensor<1x120x28x28xf32>
    %78 = linalg.fill ins(%cst_265 : f32) outs(%77 : tensor<1x120x28x28xf32>) -> tensor<1x120x28x28xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_200 : tensor<1x40x28x28xf32>, tensor<120x40x1x1xf32>) outs(%78 : tensor<1x120x28x28xf32>) -> tensor<1x120x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x120x28x28xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%79 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x120x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x28x28xf32>
    %padded_279 = tensor.pad %81 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x120x28x28xf32> to tensor<1x120x32x32xf32>
    %collapsed_280 = tensor.collapse_shape %cst_195 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %82 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_279, %collapsed_280 : tensor<1x120x32x32xf32>, tensor<120x5x5xf32>) outs(%78 : tensor<1x120x28x28xf32>) -> tensor<1x120x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x120x28x28xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%82 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x120x28x28xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x28x28xf32>
    %85 = tensor.empty() : tensor<1x120x1x1xf32>
    %86 = linalg.fill ins(%cst_265 : f32) outs(%85 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %87 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%84, %55 : tensor<1x120x28x28xf32>, tensor<28x28xf32>) outs(%86 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %88 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_269 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %89 = tensor.empty() : tensor<1x32x1x1xf32>
    %90 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_189 : tensor<32xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %91 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_190 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%90 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %92 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x32x1x1xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x32x1x1xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_187 : tensor<120xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_188 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%93 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %95 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %96 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x1x1xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %97 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %84 : tensor<1x120x1x1xf32>, tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x28x28xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_186 : tensor<1x120x28x28xf32>, tensor<40x120x1x1xf32>) outs(%74 : tensor<1x40x28x28xf32>) -> tensor<1x40x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_183, %cst_182, %cst_185, %cst_184 : tensor<1x40x28x28xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%100 : tensor<1x40x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x40x28x28xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %76 : tensor<1x40x28x28xf32>, tensor<1x40x28x28xf32>) outs(%73 : tensor<1x40x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x40x28x28xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_181 : tensor<1x40x28x28xf32>, tensor<120x40x1x1xf32>) outs(%78 : tensor<1x120x28x28xf32>) -> tensor<1x120x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_178, %cst_177, %cst_180, %cst_179 : tensor<1x120x28x28xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%103 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x120x28x28xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x28x28xf32>
    %padded_281 = tensor.pad %105 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x120x28x28xf32> to tensor<1x120x32x32xf32>
    %collapsed_282 = tensor.collapse_shape %cst_176 [[0, 1], [2], [3]] : tensor<120x1x5x5xf32> into tensor<120x5x5xf32>
    %106 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_281, %collapsed_282 : tensor<1x120x32x32xf32>, tensor<120x5x5xf32>) outs(%78 : tensor<1x120x28x28xf32>) -> tensor<1x120x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_173, %cst_172, %cst_175, %cst_174 : tensor<1x120x28x28xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>, tensor<120xf32>) outs(%106 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x120x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x28x28xf32>
    %109 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %55 : tensor<1x120x28x28xf32>, tensor<28x28xf32>) outs(%86 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %110 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_269 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %111 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_170 : tensor<32xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_171 : tensor<1x120x1x1xf32>, tensor<32x120x1x1xf32>) outs(%111 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %113 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x32x1x1xf32>) outs(%89 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x32x1x1xf32>
    %114 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_168 : tensor<120xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %115 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%113, %cst_169 : tensor<1x32x1x1xf32>, tensor<120x32x1x1xf32>) outs(%114 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %116 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %117 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x1x1xf32>
    %118 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %117 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x1x1xf32>
    %119 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %118 : tensor<f32>, tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x1x1xf32>
    %120 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %108 : tensor<1x120x1x1xf32>, tensor<1x120x28x28xf32>) outs(%77 : tensor<1x120x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x120x28x28xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %cst_167 : tensor<1x120x28x28xf32>, tensor<40x120x1x1xf32>) outs(%74 : tensor<1x40x28x28xf32>) -> tensor<1x40x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_164, %cst_163, %cst_166, %cst_165 : tensor<1x40x28x28xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>, tensor<40xf32>) outs(%121 : tensor<1x40x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x40x28x28xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %102 : tensor<1x40x28x28xf32>, tensor<1x40x28x28xf32>) outs(%73 : tensor<1x40x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x40x28x28xf32>
    %124 = tensor.empty() : tensor<1x240x28x28xf32>
    %125 = linalg.fill ins(%cst_265 : f32) outs(%124 : tensor<1x240x28x28xf32>) -> tensor<1x240x28x28xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_162 : tensor<1x40x28x28xf32>, tensor<240x40x1x1xf32>) outs(%125 : tensor<1x240x28x28xf32>) -> tensor<1x240x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_159, %cst_158, %cst_161, %cst_160 : tensor<1x240x28x28xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%126 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x240x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x240x28x28xf32>) outs(%124 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x28x28xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x240x28x28xf32>) outs(%124 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x28x28xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %10 : tensor<1x240x28x28xf32>, tensor<f32>) outs(%124 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x240x28x28xf32>) outs(%124 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %127 : tensor<1x240x28x28xf32>, tensor<1x240x28x28xf32>) outs(%124 : tensor<1x240x28x28xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x28x28xf32>
    %padded_283 = tensor.pad %132 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x240x28x28xf32> to tensor<1x240x30x30xf32>
    %133 = tensor.empty() : tensor<1x240x14x14xf32>
    %134 = linalg.fill ins(%cst_265 : f32) outs(%133 : tensor<1x240x14x14xf32>) -> tensor<1x240x14x14xf32>
    %collapsed_284 = tensor.collapse_shape %cst_157 [[0, 1], [2], [3]] : tensor<240x1x3x3xf32> into tensor<240x3x3xf32>
    %135 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_283, %collapsed_284 : tensor<1x240x30x30xf32>, tensor<240x3x3xf32>) outs(%134 : tensor<1x240x14x14xf32>) -> tensor<1x240x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_154, %cst_153, %cst_156, %cst_155 : tensor<1x240x14x14xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>, tensor<240xf32>) outs(%135 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x240x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x240x14x14xf32>) outs(%133 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x14x14xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x240x14x14xf32>) outs(%133 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x14x14xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %10 : tensor<1x240x14x14xf32>, tensor<f32>) outs(%133 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x240x14x14xf32>) outs(%133 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %136 : tensor<1x240x14x14xf32>, tensor<1x240x14x14xf32>) outs(%133 : tensor<1x240x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x240x14x14xf32>
    %142 = tensor.empty() : tensor<1x80x14x14xf32>
    %143 = linalg.fill ins(%cst_265 : f32) outs(%142 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%141, %cst_152 : tensor<1x240x14x14xf32>, tensor<80x240x1x1xf32>) outs(%143 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_149, %cst_148, %cst_151, %cst_150 : tensor<1x80x14x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%144 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x80x14x14xf32>
    %146 = tensor.empty() : tensor<1x200x14x14xf32>
    %147 = linalg.fill ins(%cst_265 : f32) outs(%146 : tensor<1x200x14x14xf32>) -> tensor<1x200x14x14xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%145, %cst_147 : tensor<1x80x14x14xf32>, tensor<200x80x1x1xf32>) outs(%147 : tensor<1x200x14x14xf32>) -> tensor<1x200x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_144, %cst_143, %cst_146, %cst_145 : tensor<1x200x14x14xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%148 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x200x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x200x14x14xf32>
    %152 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %10 : tensor<1x200x14x14xf32>, tensor<f32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x200x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %149 : tensor<1x200x14x14xf32>, tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %padded_285 = tensor.pad %154 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x200x14x14xf32> to tensor<1x200x16x16xf32>
    %collapsed_286 = tensor.collapse_shape %cst_142 [[0, 1], [2], [3]] : tensor<200x1x3x3xf32> into tensor<200x3x3xf32>
    %155 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_285, %collapsed_286 : tensor<1x200x16x16xf32>, tensor<200x3x3xf32>) outs(%147 : tensor<1x200x14x14xf32>) -> tensor<1x200x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %156 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_139, %cst_138, %cst_141, %cst_140 : tensor<1x200x14x14xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>, tensor<200xf32>) outs(%155 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x200x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x200x14x14xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %10 : tensor<1x200x14x14xf32>, tensor<f32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x200x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %156 : tensor<1x200x14x14xf32>, tensor<1x200x14x14xf32>) outs(%146 : tensor<1x200x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x200x14x14xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_137 : tensor<1x200x14x14xf32>, tensor<80x200x1x1xf32>) outs(%143 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_134, %cst_133, %cst_136, %cst_135 : tensor<1x80x14x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%162 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x80x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %145 : tensor<1x80x14x14xf32>, tensor<1x80x14x14xf32>) outs(%142 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x80x14x14xf32>
    %165 = tensor.empty() : tensor<1x184x14x14xf32>
    %166 = linalg.fill ins(%cst_265 : f32) outs(%165 : tensor<1x184x14x14xf32>) -> tensor<1x184x14x14xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%164, %cst_132 : tensor<1x80x14x14xf32>, tensor<184x80x1x1xf32>) outs(%166 : tensor<1x184x14x14xf32>) -> tensor<1x184x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_129, %cst_128, %cst_131, %cst_130 : tensor<1x184x14x14xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%167 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x184x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %10 : tensor<1x184x14x14xf32>, tensor<f32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %168 : tensor<1x184x14x14xf32>, tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %padded_287 = tensor.pad %173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x184x14x14xf32> to tensor<1x184x16x16xf32>
    %collapsed_288 = tensor.collapse_shape %cst_127 [[0, 1], [2], [3]] : tensor<184x1x3x3xf32> into tensor<184x3x3xf32>
    %174 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_287, %collapsed_288 : tensor<1x184x16x16xf32>, tensor<184x3x3xf32>) outs(%166 : tensor<1x184x14x14xf32>) -> tensor<1x184x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_124, %cst_123, %cst_126, %cst_125 : tensor<1x184x14x14xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%174 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x184x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %10 : tensor<1x184x14x14xf32>, tensor<f32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %175 : tensor<1x184x14x14xf32>, tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_122 : tensor<1x184x14x14xf32>, tensor<80x184x1x1xf32>) outs(%143 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_119, %cst_118, %cst_121, %cst_120 : tensor<1x80x14x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%181 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x80x14x14xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %164 : tensor<1x80x14x14xf32>, tensor<1x80x14x14xf32>) outs(%142 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x80x14x14xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_117 : tensor<1x80x14x14xf32>, tensor<184x80x1x1xf32>) outs(%166 : tensor<1x184x14x14xf32>) -> tensor<1x184x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_114, %cst_113, %cst_116, %cst_115 : tensor<1x184x14x14xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%184 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x184x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %10 : tensor<1x184x14x14xf32>, tensor<f32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %185 : tensor<1x184x14x14xf32>, tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %padded_289 = tensor.pad %190 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x184x14x14xf32> to tensor<1x184x16x16xf32>
    %collapsed_290 = tensor.collapse_shape %cst_112 [[0, 1], [2], [3]] : tensor<184x1x3x3xf32> into tensor<184x3x3xf32>
    %191 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_289, %collapsed_290 : tensor<1x184x16x16xf32>, tensor<184x3x3xf32>) outs(%166 : tensor<1x184x14x14xf32>) -> tensor<1x184x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_109, %cst_108, %cst_111, %cst_110 : tensor<1x184x14x14xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>, tensor<184xf32>) outs(%191 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x184x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %194 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %10 : tensor<1x184x14x14xf32>, tensor<f32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x184x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %192 : tensor<1x184x14x14xf32>, tensor<1x184x14x14xf32>) outs(%165 : tensor<1x184x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x184x14x14xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_107 : tensor<1x184x14x14xf32>, tensor<80x184x1x1xf32>) outs(%143 : tensor<1x80x14x14xf32>) -> tensor<1x80x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_104, %cst_103, %cst_106, %cst_105 : tensor<1x80x14x14xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%198 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x80x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %183 : tensor<1x80x14x14xf32>, tensor<1x80x14x14xf32>) outs(%142 : tensor<1x80x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x80x14x14xf32>
    %201 = tensor.empty() : tensor<1x480x14x14xf32>
    %202 = linalg.fill ins(%cst_265 : f32) outs(%201 : tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    %203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%200, %cst_102 : tensor<1x80x14x14xf32>, tensor<480x80x1x1xf32>) outs(%202 : tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %204 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %cst_99, %cst_98, %cst_101, %cst_100 : tensor<1x480x14x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%203 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x480x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x14x14xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %10 : tensor<1x480x14x14xf32>, tensor<f32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x14x14xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %204 : tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %padded_291 = tensor.pad %209 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x480x14x14xf32> to tensor<1x480x16x16xf32>
    %collapsed_292 = tensor.collapse_shape %cst_97 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %210 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_291, %collapsed_292 : tensor<1x480x16x16xf32>, tensor<480x3x3xf32>) outs(%202 : tensor<1x480x14x14xf32>) -> tensor<1x480x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %211 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %cst_94, %cst_93, %cst_96, %cst_95 : tensor<1x480x14x14xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%210 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x480x14x14xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %10 : tensor<1x480x14x14xf32>, tensor<f32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x14x14xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %211 : tensor<1x480x14x14xf32>, tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %217 = tensor.empty() : tensor<1x480x1x1xf32>
    %218 = linalg.fill ins(%cst_265 : f32) outs(%217 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %219 = tensor.empty() : tensor<14x14xf32>
    %220 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %219 : tensor<1x480x14x14xf32>, tensor<14x14xf32>) outs(%218 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %221 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x480x1x1xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_270 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_91 : tensor<120xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x120x1x1xf32>
    %223 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_92 : tensor<1x480x1x1xf32>, tensor<120x480x1x1xf32>) outs(%222 : tensor<1x120x1x1xf32>) -> tensor<1x120x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x120x1x1xf32>) outs(%85 : tensor<1x120x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x120x1x1xf32>
    %225 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_89 : tensor<480xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%224, %cst_90 : tensor<1x120x1x1xf32>, tensor<480x120x1x1xf32>) outs(%225 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x480x1x1xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x1x1xf32>
    %228 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x480x1x1xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x1x1xf32>
    %229 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %228 : tensor<f32>, tensor<1x480x1x1xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x1x1xf32>
    %230 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %229 : tensor<f32>, tensor<1x480x1x1xf32>) outs(%217 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x480x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230, %216 : tensor<1x480x1x1xf32>, tensor<1x480x14x14xf32>) outs(%201 : tensor<1x480x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x480x14x14xf32>
    %232 = tensor.empty() : tensor<1x112x14x14xf32>
    %233 = linalg.fill ins(%cst_265 : f32) outs(%232 : tensor<1x112x14x14xf32>) -> tensor<1x112x14x14xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %cst_88 : tensor<1x480x14x14xf32>, tensor<112x480x1x1xf32>) outs(%233 : tensor<1x112x14x14xf32>) -> tensor<1x112x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_85, %cst_84, %cst_87, %cst_86 : tensor<1x112x14x14xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%234 : tensor<1x112x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x112x14x14xf32>
    %236 = tensor.empty() : tensor<1x672x14x14xf32>
    %237 = linalg.fill ins(%cst_265 : f32) outs(%236 : tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_83 : tensor<1x112x14x14xf32>, tensor<672x112x1x1xf32>) outs(%237 : tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %239 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_80, %cst_79, %cst_82, %cst_81 : tensor<1x672x14x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%238 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x672x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %10 : tensor<1x672x14x14xf32>, tensor<f32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %239 : tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %padded_293 = tensor.pad %244 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x672x14x14xf32> to tensor<1x672x16x16xf32>
    %collapsed_294 = tensor.collapse_shape %cst_78 [[0, 1], [2], [3]] : tensor<672x1x3x3xf32> into tensor<672x3x3xf32>
    %245 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_293, %collapsed_294 : tensor<1x672x16x16xf32>, tensor<672x3x3xf32>) outs(%237 : tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_75, %cst_74, %cst_77, %cst_76 : tensor<1x672x14x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%245 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x672x14x14xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %10 : tensor<1x672x14x14xf32>, tensor<f32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %246 : tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %252 = tensor.empty() : tensor<1x672x1x1xf32>
    %253 = linalg.fill ins(%cst_265 : f32) outs(%252 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %254 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %219 : tensor<1x672x14x14xf32>, tensor<14x14xf32>) outs(%253 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_270 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %256 = tensor.empty() : tensor<1x168x1x1xf32>
    %257 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_72 : tensor<168xf32>) outs(%256 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x168x1x1xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_73 : tensor<1x672x1x1xf32>, tensor<168x672x1x1xf32>) outs(%257 : tensor<1x168x1x1xf32>) -> tensor<1x168x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258 : tensor<1x168x1x1xf32>) outs(%256 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x168x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_70 : tensor<672xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x672x1x1xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%259, %cst_71 : tensor<1x168x1x1xf32>, tensor<672x168x1x1xf32>) outs(%260 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %263 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %264 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %251 : tensor<1x672x1x1xf32>, tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_69 : tensor<1x672x14x14xf32>, tensor<112x672x1x1xf32>) outs(%233 : tensor<1x112x14x14xf32>) -> tensor<1x112x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_66, %cst_65, %cst_68, %cst_67 : tensor<1x112x14x14xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>, tensor<112xf32>) outs(%267 : tensor<1x112x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x112x14x14xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %235 : tensor<1x112x14x14xf32>, tensor<1x112x14x14xf32>) outs(%232 : tensor<1x112x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x112x14x14xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %cst_64 : tensor<1x112x14x14xf32>, tensor<672x112x1x1xf32>) outs(%237 : tensor<1x672x14x14xf32>) -> tensor<1x672x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_61, %cst_60, %cst_63, %cst_62 : tensor<1x672x14x14xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%270 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x672x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %10 : tensor<1x672x14x14xf32>, tensor<f32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %271 : tensor<1x672x14x14xf32>, tensor<1x672x14x14xf32>) outs(%236 : tensor<1x672x14x14xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x14x14xf32>
    %padded_295 = tensor.pad %276 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x672x14x14xf32> to tensor<1x672x18x18xf32>
    %277 = tensor.empty() : tensor<1x672x7x7xf32>
    %278 = linalg.fill ins(%cst_265 : f32) outs(%277 : tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    %collapsed_296 = tensor.collapse_shape %cst_59 [[0, 1], [2], [3]] : tensor<672x1x5x5xf32> into tensor<672x5x5xf32>
    %279 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_295, %collapsed_296 : tensor<1x672x18x18xf32>, tensor<672x5x5xf32>) outs(%278 : tensor<1x672x7x7xf32>) -> tensor<1x672x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %cst_56, %cst_55, %cst_58, %cst_57 : tensor<1x672x7x7xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>, tensor<672xf32>) outs(%279 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x672x7x7xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x672x7x7xf32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x7x7xf32>
    %282 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x672x7x7xf32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x7x7xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %10 : tensor<1x672x7x7xf32>, tensor<f32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x7x7xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283 : tensor<1x672x7x7xf32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x7x7xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %280 : tensor<1x672x7x7xf32>, tensor<1x672x7x7xf32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x7x7xf32>
    %286 = tensor.empty() : tensor<7x7xf32>
    %287 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%285, %286 : tensor<1x672x7x7xf32>, tensor<7x7xf32>) outs(%253 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %288 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_271 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_53 : tensor<168xf32>) outs(%256 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x168x1x1xf32>
    %290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%288, %cst_54 : tensor<1x672x1x1xf32>, tensor<168x672x1x1xf32>) outs(%289 : tensor<1x168x1x1xf32>) -> tensor<1x168x1x1xf32>
    %291 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x168x1x1xf32>) outs(%256 : tensor<1x168x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x168x1x1xf32>
    %292 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<672xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x672x1x1xf32>
    %293 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%291, %cst_52 : tensor<1x168x1x1xf32>, tensor<672x168x1x1xf32>) outs(%292 : tensor<1x672x1x1xf32>) -> tensor<1x672x1x1xf32>
    %294 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %295 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x1x1xf32>
    %296 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %295 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x1x1xf32>
    %297 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %296 : tensor<f32>, tensor<1x672x1x1xf32>) outs(%252 : tensor<1x672x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x672x1x1xf32>
    %298 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %285 : tensor<1x672x1x1xf32>, tensor<1x672x7x7xf32>) outs(%277 : tensor<1x672x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x672x7x7xf32>
    %299 = tensor.empty() : tensor<1x160x7x7xf32>
    %300 = linalg.fill ins(%cst_265 : f32) outs(%299 : tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%298, %cst_50 : tensor<1x672x7x7xf32>, tensor<160x672x1x1xf32>) outs(%300 : tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_47, %cst_46, %cst_49, %cst_48 : tensor<1x160x7x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%301 : tensor<1x160x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x160x7x7xf32>
    %303 = tensor.empty() : tensor<1x960x7x7xf32>
    %304 = linalg.fill ins(%cst_265 : f32) outs(%303 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %305 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%302, %cst_45 : tensor<1x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%304 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %306 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %cst_42, %cst_41, %cst_44, %cst_43 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%305 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x960x7x7xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %10 : tensor<1x960x7x7xf32>, tensor<f32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %306 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %padded_297 = tensor.pad %311 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x960x7x7xf32> to tensor<1x960x11x11xf32>
    %collapsed_298 = tensor.collapse_shape %cst_40 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %312 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_297, %collapsed_298 : tensor<1x960x11x11xf32>, tensor<960x5x5xf32>) outs(%304 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_37, %cst_36, %cst_39, %cst_38 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%312 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x960x7x7xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %315 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %10 : tensor<1x960x7x7xf32>, tensor<f32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %313 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %319 = tensor.empty() : tensor<1x960x1x1xf32>
    %320 = linalg.fill ins(%cst_265 : f32) outs(%319 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %321 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%318, %286 : tensor<1x960x7x7xf32>, tensor<7x7xf32>) outs(%320 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %322 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_271 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %323 = tensor.empty() : tensor<1x240x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_34 : tensor<240xf32>) outs(%323 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %325 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %cst_35 : tensor<1x960x1x1xf32>, tensor<240x960x1x1xf32>) outs(%324 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %326 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x240x1x1xf32>) outs(%323 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<960xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_33 : tensor<1x240x1x1xf32>, tensor<960x240x1x1xf32>) outs(%327 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %330 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %330 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %331 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x1x1xf32>
    %333 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %318 : tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%333, %cst_31 : tensor<1x960x7x7xf32>, tensor<160x960x1x1xf32>) outs(%300 : tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_28, %cst_27, %cst_30, %cst_29 : tensor<1x160x7x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%334 : tensor<1x160x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x160x7x7xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335, %302 : tensor<1x160x7x7xf32>, tensor<1x160x7x7xf32>) outs(%299 : tensor<1x160x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x160x7x7xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_26 : tensor<1x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%304 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_23, %cst_22, %cst_25, %cst_24 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%337 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x960x7x7xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %10 : tensor<1x960x7x7xf32>, tensor<f32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %338 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %padded_299 = tensor.pad %343 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x960x7x7xf32> to tensor<1x960x11x11xf32>
    %collapsed_300 = tensor.collapse_shape %cst_21 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %344 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_299, %collapsed_300 : tensor<1x960x11x11xf32>, tensor<960x5x5xf32>) outs(%304 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_18, %cst_17, %cst_20, %cst_19 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%344 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x960x7x7xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %348 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %10 : tensor<1x960x7x7xf32>, tensor<f32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %345 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %351 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%350, %286 : tensor<1x960x7x7xf32>, tensor<7x7xf32>) outs(%320 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_271 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_15 : tensor<240xf32>) outs(%323 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x240x1x1xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%352, %cst_16 : tensor<1x960x1x1xf32>, tensor<240x960x1x1xf32>) outs(%353 : tensor<1x240x1x1xf32>) -> tensor<1x240x1x1xf32>
    %355 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354 : tensor<1x240x1x1xf32>) outs(%323 : tensor<1x240x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x240x1x1xf32>
    %356 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<960xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%355, %cst_14 : tensor<1x240x1x1xf32>, tensor<960x240x1x1xf32>) outs(%356 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %358 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %359 = linalg.generic {indexing_maps = [#map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %360 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %359 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x1x1xf32>
    %361 = linalg.generic {indexing_maps = [#map4, #map5, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %360 : tensor<f32>, tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf ogt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x1x1xf32>
    %362 = linalg.generic {indexing_maps = [#map5, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %350 : tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%362, %cst_12 : tensor<1x960x7x7xf32>, tensor<160x960x1x1xf32>) outs(%300 : tensor<1x160x7x7xf32>) -> tensor<1x160x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_9, %cst_8, %cst_11, %cst_10 : tensor<1x160x7x7xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%363 : tensor<1x160x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x160x7x7xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %336 : tensor<1x160x7x7xf32>, tensor<1x160x7x7xf32>) outs(%299 : tensor<1x160x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x160x7x7xf32>
    %366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%365, %cst_7 : tensor<1x160x7x7xf32>, tensor<960x160x1x1xf32>) outs(%304 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %367 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %cst_4, %cst_3, %cst_6, %cst_5 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%366 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %in_303: f32, %in_304: f32, %in_305: f32, %out: f32):
      %392 = arith.truncf %cst_266 : f64 to f32
      %393 = arith.addf %in_305, %392 : f32
      %394 = math.rsqrt %393 : f32
      %395 = arith.subf %in, %in_304 : f32
      %396 = arith.mulf %395, %394 : f32
      %397 = arith.mulf %396, %in_302 : f32
      %398 = arith.addf %397, %in_303 : f32
      linalg.yield %398 : f32
    } -> tensor<1x960x7x7xf32>
    %368 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %369 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map4, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %10 : tensor<1x960x7x7xf32>, tensor<f32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x960x7x7xf32>
    %371 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %372 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %367 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%303 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x7x7xf32>
    %373 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%372, %286 : tensor<1x960x7x7xf32>, tensor<7x7xf32>) outs(%320 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373 : tensor<1x960x1x1xf32>) outs(%319 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_271 : f32
      linalg.yield %392 : f32
    } -> tensor<1x960x1x1xf32>
    %collapsed_301 = tensor.collapse_shape %374 [[0], [1, 2, 3]] : tensor<1x960x1x1xf32> into tensor<1x960xf32>
    %375 = tensor.empty() : tensor<960x1280xf32>
    %376 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<1280x960xf32>) outs(%375 : tensor<960x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<960x1280xf32>
    %377 = tensor.empty() : tensor<1x1280xf32>
    %378 = linalg.fill ins(%cst_265 : f32) outs(%377 : tensor<1x1280xf32>) -> tensor<1x1280xf32>
    %379 = linalg.matmul ins(%collapsed_301, %376 : tensor<1x960xf32>, tensor<960x1280xf32>) outs(%378 : tensor<1x1280xf32>) -> tensor<1x1280xf32>
    %380 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%379, %cst_1 : tensor<1x1280xf32>, tensor<1280xf32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x1280xf32>
    %381 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%380 : tensor<1x1280xf32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.addf %in, %cst_267 : f32
      linalg.yield %392 : f32
    } -> tensor<1x1280xf32>
    %382 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%381 : tensor<1x1280xf32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.cmpf ugt, %in, %cst_265 : f32
      %393 = arith.select %392, %in, %cst_265 : f32
      linalg.yield %393 : f32
    } -> tensor<1x1280xf32>
    %383 = linalg.generic {indexing_maps = [#map8, #map10, #map6], iterator_types = ["parallel", "parallel"]} ins(%382, %10 : tensor<1x1280xf32>, tensor<f32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.cmpf olt, %in, %in_302 : f32
      %393 = arith.select %392, %in, %in_302 : f32
      linalg.yield %393 : f32
    } -> tensor<1x1280xf32>
    %384 = linalg.generic {indexing_maps = [#map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%383 : tensor<1x1280xf32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %out: f32):
      %392 = arith.divf %in, %cst_268 : f32
      linalg.yield %392 : f32
    } -> tensor<1x1280xf32>
    %385 = linalg.generic {indexing_maps = [#map8, #map8, #map6], iterator_types = ["parallel", "parallel"]} ins(%384, %380 : tensor<1x1280xf32>, tensor<1x1280xf32>) outs(%377 : tensor<1x1280xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.mulf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x1280xf32>
    %386 = tensor.empty() : tensor<1280x1000xf32>
    %387 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1280xf32>) outs(%386 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %388 = tensor.empty() : tensor<1x1000xf32>
    %389 = linalg.fill ins(%cst_265 : f32) outs(%388 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %390 = linalg.matmul ins(%385, %387 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%389 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %391 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%390, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%388 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_302: f32, %out: f32):
      %392 = arith.addf %in, %in_302 : f32
      linalg.yield %392 : f32
    } -> tensor<1x1000xf32>
    return %391 : tensor<1x1000xf32>
  }
}
