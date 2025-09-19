#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (0, d1, 0, 0)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (0, d1)>
#map7 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "EfficientNet"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x1280xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<1280x256x1x1xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<256x1536x1x1xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<1536x64x1x1xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<64x1536x1x1xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<1536x1x3x3xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<1536x256x1x1xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<256x960x1x1xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<160x768x1x1xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<768x32x1x1xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<32x768x1x1xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<768x128x1x1xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<512x32x1x1xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<32x512x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<512x1x3x3xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<512x32x1x1xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<32x512x1x1xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<512x1x3x3xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<512x32x1x1xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<32x512x1x1xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<512x1x3x3xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_515 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_516 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_517 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_518 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_519 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_520 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_521 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_522 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_523 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_524 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_525 = arith.constant dense_resource<__elided__> : tensor<512x32x1x1xf32>
    %cst_526 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_527 = arith.constant dense_resource<__elided__> : tensor<32x512x1x1xf32>
    %cst_528 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_529 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_530 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_531 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_532 = arith.constant dense_resource<__elided__> : tensor<512x1x3x3xf32>
    %cst_533 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_534 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_535 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_536 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_537 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_538 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_539 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_540 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_541 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_542 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_543 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_544 = arith.constant dense_resource<__elided__> : tensor<512x32x1x1xf32>
    %cst_545 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_546 = arith.constant dense_resource<__elided__> : tensor<32x512x1x1xf32>
    %cst_547 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_548 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_549 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_550 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_551 = arith.constant dense_resource<__elided__> : tensor<512x1x3x3xf32>
    %cst_552 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_553 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_554 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_555 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_556 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_557 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_558 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_559 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_560 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_561 = arith.constant dense_resource<__elided__> : tensor<128x256x1x1xf32>
    %cst_562 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_563 = arith.constant dense_resource<__elided__> : tensor<256x16x1x1xf32>
    %cst_564 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_565 = arith.constant dense_resource<__elided__> : tensor<16x256x1x1xf32>
    %cst_566 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_567 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_568 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_569 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_570 = arith.constant dense_resource<__elided__> : tensor<256x1x3x3xf32>
    %cst_571 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_572 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_573 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_574 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_575 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_576 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_577 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_578 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_579 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_580 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_581 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_582 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_583 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_584 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_585 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_586 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_587 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_588 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_589 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_590 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_591 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_592 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_593 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_594 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_595 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_596 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_597 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_598 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_599 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_600 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_601 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_602 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_603 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_604 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_605 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_606 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_607 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_608 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_609 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_610 = arith.constant dense_resource<__elided__> : tensor<64x192x1x1xf32>
    %cst_611 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_612 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_613 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_614 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_615 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_616 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_617 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_618 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_619 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_620 = arith.constant dense_resource<__elided__> : tensor<48x192x1x1xf32>
    %cst_621 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_622 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_623 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_624 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_625 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_626 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_627 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_628 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_629 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_630 = arith.constant dense_resource<__elided__> : tensor<48x192x1x1xf32>
    %cst_631 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_632 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_633 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_634 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_635 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_636 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_637 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_638 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_639 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_640 = arith.constant dense_resource<__elided__> : tensor<48x192x1x1xf32>
    %cst_641 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_642 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_643 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_644 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_645 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_646 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_647 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_648 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_649 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_650 = arith.constant dense_resource<__elided__> : tensor<48x96x1x1xf32>
    %cst_651 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_652 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_653 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_654 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_655 = arith.constant dense_resource<__elided__> : tensor<96x24x3x3xf32>
    %cst_656 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_657 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_658 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_659 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_660 = arith.constant dense_resource<__elided__> : tensor<24x24x3x3xf32>
    %cst_661 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_662 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_663 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_664 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_665 = arith.constant dense_resource<__elided__> : tensor<24x24x3x3xf32>
    %cst_666 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_667 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_668 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_669 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_670 = arith.constant dense_resource<__elided__> : tensor<24x3x3x3xf32>
    %false = arith.constant false
    %cst_671 = arith.constant 0.000000e+00 : f32
    %cst_672 = arith.constant 1.000000e+00 : f32
    %cst_673 = arith.constant 1.000000e-03 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_674 = arith.constant 1.960000e+02 : f32
    %cst_675 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x226x226xf32>
    %0 = tensor.empty() : tensor<1x24x112x112xf32>
    %1 = linalg.fill ins(%cst_671 : f32) outs(%0 : tensor<1x24x112x112xf32>) -> tensor<1x24x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_670 : tensor<1x3x226x226xf32>, tensor<24x3x3x3xf32>) outs(%1 : tensor<1x24x112x112xf32>) -> tensor<1x24x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_667, %cst_666, %cst_669, %cst_668 : tensor<1x24x112x112xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%2 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x24x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x24x112x112xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x24x112x112xf32>, tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x24x112x112xf32>
    %padded_676 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x24x112x112xf32> to tensor<1x24x114x114xf32>
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_676, %cst_665 : tensor<1x24x114x114xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x112x112xf32>) -> tensor<1x24x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_662, %cst_661, %cst_664, %cst_663 : tensor<1x24x112x112xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%7 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x24x112x112xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x24x112x112xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x24x112x112xf32>, tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x24x112x112xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %6 : tensor<1x24x112x112xf32>, tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x24x112x112xf32>
    %padded_677 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x24x112x112xf32> to tensor<1x24x114x114xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_677, %cst_660 : tensor<1x24x114x114xf32>, tensor<24x24x3x3xf32>) outs(%1 : tensor<1x24x112x112xf32>) -> tensor<1x24x112x112xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_657, %cst_656, %cst_659, %cst_658 : tensor<1x24x112x112xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>, tensor<24xf32>) outs(%12 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x24x112x112xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x24x112x112xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %13 : tensor<1x24x112x112xf32>, tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x24x112x112xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %11 : tensor<1x24x112x112xf32>, tensor<1x24x112x112xf32>) outs(%0 : tensor<1x24x112x112xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x24x112x112xf32>
    %padded_678 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x24x112x112xf32> to tensor<1x24x114x114xf32>
    %17 = tensor.empty() : tensor<1x96x56x56xf32>
    %18 = linalg.fill ins(%cst_671 : f32) outs(%17 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_678, %cst_655 : tensor<1x24x114x114xf32>, tensor<96x24x3x3xf32>) outs(%18 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_652, %cst_651, %cst_654, %cst_653 : tensor<1x96x56x56xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%19 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x96x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x96x56x56xf32>) outs(%17 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x96x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %20 : tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) outs(%17 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x96x56x56xf32>
    %23 = tensor.empty() : tensor<1x48x56x56xf32>
    %24 = linalg.fill ins(%cst_671 : f32) outs(%23 : tensor<1x48x56x56xf32>) -> tensor<1x48x56x56xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%22, %cst_650 : tensor<1x96x56x56xf32>, tensor<48x96x1x1xf32>) outs(%24 : tensor<1x48x56x56xf32>) -> tensor<1x48x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_647, %cst_646, %cst_649, %cst_648 : tensor<1x48x56x56xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%25 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x48x56x56xf32>
    %padded_679 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x48x56x56xf32> to tensor<1x48x58x58xf32>
    %27 = tensor.empty() : tensor<1x192x56x56xf32>
    %28 = linalg.fill ins(%cst_671 : f32) outs(%27 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_679, %cst_645 : tensor<1x48x58x58xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_642, %cst_641, %cst_644, %cst_643 : tensor<1x192x56x56xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%29 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x192x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x192x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x192x56x56xf32>
    %33 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_640 : tensor<1x192x56x56xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x56x56xf32>) -> tensor<1x48x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %34 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %cst_637, %cst_636, %cst_639, %cst_638 : tensor<1x48x56x56xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%33 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x48x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %26 : tensor<1x48x56x56xf32>, tensor<1x48x56x56xf32>) outs(%23 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x48x56x56xf32>
    %padded_680 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x48x56x56xf32> to tensor<1x48x58x58xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_680, %cst_635 : tensor<1x48x58x58xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_632, %cst_631, %cst_634, %cst_633 : tensor<1x192x56x56xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%36 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x192x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x192x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %37 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x192x56x56xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%39, %cst_630 : tensor<1x192x56x56xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x56x56xf32>) -> tensor<1x48x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_627, %cst_626, %cst_629, %cst_628 : tensor<1x48x56x56xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%40 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x48x56x56xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %35 : tensor<1x48x56x56xf32>, tensor<1x48x56x56xf32>) outs(%23 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x48x56x56xf32>
    %padded_681 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x48x56x56xf32> to tensor<1x48x58x58xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_681, %cst_625 : tensor<1x48x58x58xf32>, tensor<192x48x3x3xf32>) outs(%28 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_622, %cst_621, %cst_624, %cst_623 : tensor<1x192x56x56xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%43 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x192x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x192x56x56xf32>
    %46 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %44 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%27 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x192x56x56xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%46, %cst_620 : tensor<1x192x56x56xf32>, tensor<48x192x1x1xf32>) outs(%24 : tensor<1x48x56x56xf32>) -> tensor<1x48x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_617, %cst_616, %cst_619, %cst_618 : tensor<1x48x56x56xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%47 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x48x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %42 : tensor<1x48x56x56xf32>, tensor<1x48x56x56xf32>) outs(%23 : tensor<1x48x56x56xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x48x56x56xf32>
    %padded_682 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x48x56x56xf32> to tensor<1x48x58x58xf32>
    %50 = tensor.empty() : tensor<1x192x28x28xf32>
    %51 = linalg.fill ins(%cst_671 : f32) outs(%50 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_682, %cst_615 : tensor<1x48x58x58xf32>, tensor<192x48x3x3xf32>) outs(%51 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_612, %cst_611, %cst_614, %cst_613 : tensor<1x192x28x28xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%52 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x192x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x192x28x28xf32>) outs(%50 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x192x28x28xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %53 : tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) outs(%50 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x192x28x28xf32>
    %56 = tensor.empty() : tensor<1x64x28x28xf32>
    %57 = linalg.fill ins(%cst_671 : f32) outs(%56 : tensor<1x64x28x28xf32>) -> tensor<1x64x28x28xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%55, %cst_610 : tensor<1x192x28x28xf32>, tensor<64x192x1x1xf32>) outs(%57 : tensor<1x64x28x28xf32>) -> tensor<1x64x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_607, %cst_606, %cst_609, %cst_608 : tensor<1x64x28x28xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%58 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x64x28x28xf32>
    %padded_683 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x64x28x28xf32> to tensor<1x64x30x30xf32>
    %60 = tensor.empty() : tensor<1x256x28x28xf32>
    %61 = linalg.fill ins(%cst_671 : f32) outs(%60 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_683, %cst_605 : tensor<1x64x30x30xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_602, %cst_601, %cst_604, %cst_603 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%62 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x28x28xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %63 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x28x28xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_600 : tensor<1x256x28x28xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x28x28xf32>) -> tensor<1x64x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_597, %cst_596, %cst_599, %cst_598 : tensor<1x64x28x28xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%66 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x64x28x28xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %59 : tensor<1x64x28x28xf32>, tensor<1x64x28x28xf32>) outs(%56 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x28x28xf32>
    %padded_684 = tensor.pad %68 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x64x28x28xf32> to tensor<1x64x30x30xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_684, %cst_595 : tensor<1x64x30x30xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_592, %cst_591, %cst_594, %cst_593 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%69 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x28x28xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %70 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x28x28xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_590 : tensor<1x256x28x28xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x28x28xf32>) -> tensor<1x64x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_587, %cst_586, %cst_589, %cst_588 : tensor<1x64x28x28xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%73 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x64x28x28xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %68 : tensor<1x64x28x28xf32>, tensor<1x64x28x28xf32>) outs(%56 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x28x28xf32>
    %padded_685 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x64x28x28xf32> to tensor<1x64x30x30xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_685, %cst_585 : tensor<1x64x30x30xf32>, tensor<256x64x3x3xf32>) outs(%61 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_582, %cst_581, %cst_584, %cst_583 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%76 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x28x28xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %77 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x28x28xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%79, %cst_580 : tensor<1x256x28x28xf32>, tensor<64x256x1x1xf32>) outs(%57 : tensor<1x64x28x28xf32>) -> tensor<1x64x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %cst_577, %cst_576, %cst_579, %cst_578 : tensor<1x64x28x28xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%80 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x64x28x28xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %75 : tensor<1x64x28x28xf32>, tensor<1x64x28x28xf32>) outs(%56 : tensor<1x64x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x28x28xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_575 : tensor<1x64x28x28xf32>, tensor<256x64x1x1xf32>) outs(%61 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_572, %cst_571, %cst_574, %cst_573 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%83 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x28x28xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x256x28x28xf32>, tensor<1x256x28x28xf32>) outs(%60 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_686 = tensor.pad %86 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %87 = tensor.empty() : tensor<1x256x14x14xf32>
    %88 = linalg.fill ins(%cst_671 : f32) outs(%87 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %collapsed = tensor.collapse_shape %cst_570 [[0, 1], [2], [3]] : tensor<256x1x3x3xf32> into tensor<256x3x3xf32>
    %89 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_686, %collapsed : tensor<1x256x30x30xf32>, tensor<256x3x3xf32>) outs(%88 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_567, %cst_566, %cst_569, %cst_568 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%89 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x14x14xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x256x14x14xf32>) outs(%87 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x14x14xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %90 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%87 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x14x14xf32>
    %93 = tensor.empty() : tensor<1x256x1x1xf32>
    %94 = linalg.fill ins(%cst_671 : f32) outs(%93 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %95 = tensor.empty() : tensor<14x14xf32>
    %96 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %95 : tensor<1x256x14x14xf32>, tensor<14x14xf32>) outs(%94 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %97 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x1x1xf32>
    %98 = tensor.empty() : tensor<1x16x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_564 : tensor<16xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%97, %cst_565 : tensor<1x256x1x1xf32>, tensor<16x256x1x1xf32>) outs(%99 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %101 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x16x1x1xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x16x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %100 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%98 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x16x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_562 : tensor<256xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x1x1xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_563 : tensor<1x16x1x1xf32>, tensor<256x16x1x1xf32>) outs(%103 : tensor<1x256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %105 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x256x1x1xf32>) outs(%93 : tensor<1x256x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x256x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %92 : tensor<1x256x1x1xf32>, tensor<1x256x14x14xf32>) outs(%87 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x14x14xf32>
    %107 = tensor.empty() : tensor<1x128x14x14xf32>
    %108 = linalg.fill ins(%cst_671 : f32) outs(%107 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%106, %cst_561 : tensor<1x256x14x14xf32>, tensor<128x256x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_558, %cst_557, %cst_560, %cst_559 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%109 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %111 = tensor.empty() : tensor<1x512x14x14xf32>
    %112 = linalg.fill ins(%cst_671 : f32) outs(%111 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_556 : tensor<1x128x14x14xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_553, %cst_552, %cst_555, %cst_554 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%113 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %114 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_687 = tensor.pad %116 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %collapsed_688 = tensor.collapse_shape %cst_551 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %117 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_687, %collapsed_688 : tensor<1x512x16x16xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_548, %cst_547, %cst_550, %cst_549 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%117 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %118 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %121 = tensor.empty() : tensor<1x512x1x1xf32>
    %122 = linalg.fill ins(%cst_671 : f32) outs(%121 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %123 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %95 : tensor<1x512x14x14xf32>, tensor<14x14xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %124 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x1x1xf32>
    %125 = tensor.empty() : tensor<1x32x1x1xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_545 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%124, %cst_546 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%126 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %128 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %127 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_543 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%129, %cst_544 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%130 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %132 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %120 : tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_542 : tensor<1x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_539, %cst_538, %cst_541, %cst_540 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%134 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %110 : tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) outs(%107 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x128x14x14xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_537 : tensor<1x128x14x14xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_534, %cst_533, %cst_536, %cst_535 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%137 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139, %138 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_689 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %collapsed_690 = tensor.collapse_shape %cst_532 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_689, %collapsed_690 : tensor<1x512x16x16xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_529, %cst_528, %cst_531, %cst_530 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%141 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %145 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %95 : tensor<1x512x14x14xf32>, tensor<14x14xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %146 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_526 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_527 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%147 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %150 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149, %148 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_524 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_525 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%151 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %144 : tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %155 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%154, %cst_523 : tensor<1x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %156 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_520, %cst_519, %cst_522, %cst_521 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%155 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %136 : tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) outs(%107 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x128x14x14xf32>
    %158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%157, %cst_518 : tensor<1x128x14x14xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %159 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_515, %cst_514, %cst_517, %cst_516 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%158 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160, %159 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_691 = tensor.pad %161 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %collapsed_692 = tensor.collapse_shape %cst_513 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %162 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_691, %collapsed_692 : tensor<1x512x16x16xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_510, %cst_509, %cst_512, %cst_511 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%162 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %163 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %166 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %95 : tensor<1x512x14x14xf32>, tensor<14x14xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %167 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_507 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %169 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_508 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%168 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %170 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170, %169 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_505 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_506 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%172 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %174 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x1x1xf32>
    %175 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %165 : tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %176 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%175, %cst_504 : tensor<1x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %177 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %cst_501, %cst_500, %cst_503, %cst_502 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%176 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %157 : tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) outs(%107 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x128x14x14xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %cst_499 : tensor<1x128x14x14xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_496, %cst_495, %cst_498, %cst_497 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%179 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %180 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_693 = tensor.pad %182 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %collapsed_694 = tensor.collapse_shape %cst_494 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %183 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_693, %collapsed_694 : tensor<1x512x16x16xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %184 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %cst_491, %cst_490, %cst_493, %cst_492 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%183 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %184 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %187 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %95 : tensor<1x512x14x14xf32>, tensor<14x14xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %188 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_488 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %190 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_489 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%189 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %191 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %190 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_486 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%192, %cst_487 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%193 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %195 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %186 : tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %cst_485 : tensor<1x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%197 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %178 : tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) outs(%107 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x128x14x14xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%199, %cst_480 : tensor<1x128x14x14xf32>, tensor<512x128x1x1xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %201 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%200 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %202 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %201 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_695 = tensor.pad %203 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %collapsed_696 = tensor.collapse_shape %cst_475 [[0, 1], [2], [3]] : tensor<512x1x3x3xf32> into tensor<512x3x3xf32>
    %204 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_695, %collapsed_696 : tensor<1x512x16x16xf32>, tensor<512x3x3xf32>) outs(%112 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%204 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x512x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x14x14xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %205 : tensor<1x512x14x14xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %208 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %95 : tensor<1x512x14x14xf32>, tensor<14x14xf32>) outs(%122 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %209 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_469 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %cst_470 : tensor<1x512x1x1xf32>, tensor<32x512x1x1xf32>) outs(%210 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %212 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %211 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %214 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_467 : tensor<512xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x512x1x1xf32>
    %215 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%213, %cst_468 : tensor<1x32x1x1xf32>, tensor<512x32x1x1xf32>) outs(%214 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %216 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x512x1x1xf32>) outs(%121 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x512x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %207 : tensor<1x512x1x1xf32>, tensor<1x512x14x14xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x512x14x14xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %cst_466 : tensor<1x512x14x14xf32>, tensor<128x512x1x1xf32>) outs(%108 : tensor<1x128x14x14xf32>) -> tensor<1x128x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %219 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_463, %cst_462, %cst_465, %cst_464 : tensor<1x128x14x14xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%218 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x128x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %199 : tensor<1x128x14x14xf32>, tensor<1x128x14x14xf32>) outs(%107 : tensor<1x128x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x128x14x14xf32>
    %221 = tensor.empty() : tensor<1x768x14x14xf32>
    %222 = linalg.fill ins(%cst_671 : f32) outs(%221 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %223 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_461 : tensor<1x128x14x14xf32>, tensor<768x128x1x1xf32>) outs(%222 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %224 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_458, %cst_457, %cst_460, %cst_459 : tensor<1x768x14x14xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%223 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x768x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x768x14x14xf32>) outs(%221 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x768x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %224 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%221 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_697 = tensor.pad %226 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x16x16xf32>
    %collapsed_698 = tensor.collapse_shape %cst_456 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %227 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_697, %collapsed_698 : tensor<1x768x16x16xf32>, tensor<768x3x3xf32>) outs(%222 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_453, %cst_452, %cst_455, %cst_454 : tensor<1x768x14x14xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%227 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x768x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228 : tensor<1x768x14x14xf32>) outs(%221 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x768x14x14xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %228 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%221 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x768x14x14xf32>
    %231 = tensor.empty() : tensor<1x768x1x1xf32>
    %232 = linalg.fill ins(%cst_671 : f32) outs(%231 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %233 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %95 : tensor<1x768x14x14xf32>, tensor<14x14xf32>) outs(%232 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x768x1x1xf32>) outs(%231 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x768x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_450 : tensor<32xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%234, %cst_451 : tensor<1x768x1x1xf32>, tensor<32x768x1x1xf32>) outs(%235 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %237 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x32x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %236 : tensor<1x32x1x1xf32>, tensor<1x32x1x1xf32>) outs(%125 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x32x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_448 : tensor<768xf32>) outs(%231 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%238, %cst_449 : tensor<1x32x1x1xf32>, tensor<768x32x1x1xf32>) outs(%239 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x768x1x1xf32>) outs(%231 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x768x1x1xf32>
    %242 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %230 : tensor<1x768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%221 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x768x14x14xf32>
    %243 = tensor.empty() : tensor<1x160x14x14xf32>
    %244 = linalg.fill ins(%cst_671 : f32) outs(%243 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    %245 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %cst_447 : tensor<1x768x14x14xf32>, tensor<160x768x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %246 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %cst_444, %cst_443, %cst_446, %cst_445 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%245 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %247 = tensor.empty() : tensor<1x960x14x14xf32>
    %248 = linalg.fill ins(%cst_671 : f32) outs(%247 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_442 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_439, %cst_438, %cst_441, %cst_440 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%249 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %250 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_699 = tensor.pad %252 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_700 = tensor.collapse_shape %cst_437 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %253 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_699, %collapsed_700 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %254 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %cst_434, %cst_433, %cst_436, %cst_435 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%253 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %254 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %257 = tensor.empty() : tensor<1x960x1x1xf32>
    %258 = linalg.fill ins(%cst_671 : f32) outs(%257 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %259 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %261 = tensor.empty() : tensor<1x40x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_431 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %263 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_432 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%262 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %263 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_429 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%265, %cst_430 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%266 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %256 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %cst_428 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_425, %cst_424, %cst_427, %cst_426 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%270 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %246 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %273 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%272, %cst_423 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %274 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %cst_420, %cst_419, %cst_422, %cst_421 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%273 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %274 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_701 = tensor.pad %276 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_702 = tensor.collapse_shape %cst_418 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %277 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_701, %collapsed_702 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_415, %cst_414, %cst_417, %cst_416 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%277 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %278 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %281 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_412 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %cst_413 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%283 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %284 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_410 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_411 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%287 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %280 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_409 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_406, %cst_405, %cst_408, %cst_407 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%291 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %272 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_404 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_401, %cst_400, %cst_403, %cst_402 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%294 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %295 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_703 = tensor.pad %297 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_704 = tensor.collapse_shape %cst_399 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %298 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_703, %collapsed_704 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_396, %cst_395, %cst_398, %cst_397 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%298 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %299 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %302 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_393 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %305 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_394 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%304 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %305 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_391 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %cst_392 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%308 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %301 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_390 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%312 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %293 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_385 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%315 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %316 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_705 = tensor.pad %318 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_706 = tensor.collapse_shape %cst_380 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %319 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_705, %collapsed_706 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%319 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %323 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_374 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %326 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_375 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%325 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_372 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %cst_373 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%329 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %322 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%332, %cst_371 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_368, %cst_367, %cst_370, %cst_369 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%333 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %314 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %336 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_366 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %337 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_363, %cst_362, %cst_365, %cst_364 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%336 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %338 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %337 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_707 = tensor.pad %339 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_708 = tensor.collapse_shape %cst_361 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %340 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_707, %collapsed_708 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_358, %cst_357, %cst_360, %cst_359 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%340 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %344 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_355 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %cst_356 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%346 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %347 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_353 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %351 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_354 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%350 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %343 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %cst_352 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_349, %cst_348, %cst_351, %cst_350 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%354 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %335 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_347 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_344, %cst_343, %cst_346, %cst_345 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%357 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_709 = tensor.pad %360 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_710 = tensor.collapse_shape %cst_342 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %361 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_709, %collapsed_710 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_339, %cst_338, %cst_341, %cst_340 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%361 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %364 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %362 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %365 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_336 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %cst_337 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%367 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %369 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %368 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_334 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_335 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%371 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %364 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_333 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_330, %cst_329, %cst_332, %cst_331 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%375 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %356 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_328 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_325, %cst_324, %cst_327, %cst_326 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%378 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_711 = tensor.pad %381 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_712 = tensor.collapse_shape %cst_323 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %382 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_711, %collapsed_712 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %cst_320, %cst_319, %cst_322, %cst_321 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%382 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %384 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %385 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %386 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_317 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %389 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_318 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%388 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %389 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_315 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %393 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_316 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%392 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %394 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %385 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %396 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%395, %cst_314 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %397 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %cst_311, %cst_310, %cst_313, %cst_312 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%396 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %398 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %377 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %399 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%398, %cst_309 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %400 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %cst_306, %cst_305, %cst_308, %cst_307 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%399 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %401 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %402 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %400 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_713 = tensor.pad %402 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %collapsed_714 = tensor.collapse_shape %cst_304 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %403 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_713, %collapsed_714 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %404 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_301, %cst_300, %cst_303, %cst_302 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%403 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %405 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %406 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %404 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %407 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %95 : tensor<1x960x14x14xf32>, tensor<14x14xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %408 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_674 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %409 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_298 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %410 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%408, %cst_299 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%409 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %410 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %413 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_296 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %414 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%412, %cst_297 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%413 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %416 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %406 : tensor<1x960x1x1xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %417 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%416, %cst_295 : tensor<1x960x14x14xf32>, tensor<160x960x1x1xf32>) outs(%244 : tensor<1x160x14x14xf32>) -> tensor<1x160x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %418 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x160x14x14xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%417 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x160x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %398 : tensor<1x160x14x14xf32>, tensor<1x160x14x14xf32>) outs(%243 : tensor<1x160x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x160x14x14xf32>
    %420 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%419, %cst_290 : tensor<1x160x14x14xf32>, tensor<960x160x1x1xf32>) outs(%248 : tensor<1x960x14x14xf32>) -> tensor<1x960x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %421 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x960x14x14xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%420 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x14x14xf32>
    %422 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x14x14xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %421 : tensor<1x960x14x14xf32>, tensor<1x960x14x14xf32>) outs(%247 : tensor<1x960x14x14xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x14x14xf32>
    %padded_715 = tensor.pad %423 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x960x14x14xf32> to tensor<1x960x16x16xf32>
    %424 = tensor.empty() : tensor<1x960x7x7xf32>
    %425 = linalg.fill ins(%cst_671 : f32) outs(%424 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    %collapsed_716 = tensor.collapse_shape %cst_285 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %426 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_715, %collapsed_716 : tensor<1x960x16x16xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x7x7xf32>) -> tensor<1x960x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %427 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x960x7x7xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%426 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x960x7x7xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x960x7x7xf32>) outs(%424 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x7x7xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %427 : tensor<1x960x7x7xf32>, tensor<1x960x7x7xf32>) outs(%424 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x7x7xf32>
    %430 = tensor.empty() : tensor<7x7xf32>
    %431 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%429, %430 : tensor<1x960x7x7xf32>, tensor<7x7xf32>) outs(%258 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %432 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x1x1xf32>
    %433 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_279 : tensor<40xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%432, %cst_280 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%433 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %435 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434 : tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x40x1x1xf32>
    %436 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435, %434 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%261 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x40x1x1xf32>
    %437 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_277 : tensor<960xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %438 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_278 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%437 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x960x1x1xf32>) outs(%257 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x960x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439, %429 : tensor<1x960x1x1xf32>, tensor<1x960x7x7xf32>) outs(%424 : tensor<1x960x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x960x7x7xf32>
    %441 = tensor.empty() : tensor<1x256x7x7xf32>
    %442 = linalg.fill ins(%cst_671 : f32) outs(%441 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    %443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_276 : tensor<1x960x7x7xf32>, tensor<256x960x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %444 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443, %cst_273, %cst_272, %cst_275, %cst_274 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%443 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %445 = tensor.empty() : tensor<1x1536x7x7xf32>
    %446 = linalg.fill ins(%cst_671 : f32) outs(%445 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%444, %cst_271 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %cst_268, %cst_267, %cst_270, %cst_269 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%447 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %448 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_717 = tensor.pad %450 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_718 = tensor.collapse_shape %cst_266 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %451 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_717, %collapsed_718 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_263, %cst_262, %cst_265, %cst_264 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%451 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %454 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %452 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %455 = tensor.empty() : tensor<1x1536x1x1xf32>
    %456 = linalg.fill ins(%cst_671 : f32) outs(%455 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %457 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%454, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %458 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %459 = tensor.empty() : tensor<1x64x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_260 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %461 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%458, %cst_261 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%460 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %461 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_258 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %cst_259 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%464 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %454 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %468 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%467, %cst_257 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %469 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %cst_254, %cst_253, %cst_256, %cst_255 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%468 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %444 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_252 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_249, %cst_248, %cst_251, %cst_250 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%471 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %472 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_719 = tensor.pad %474 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_720 = tensor.collapse_shape %cst_247 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %475 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_719, %collapsed_720 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_244, %cst_243, %cst_246, %cst_245 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%475 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %478 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %476 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %479 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%478, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_241 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %482 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_242 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%481 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %482 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_239 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %486 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%484, %cst_240 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%485 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %478 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %489 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%488, %cst_238 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %490 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %cst_235, %cst_234, %cst_237, %cst_236 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%489 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %491 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %470 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_233 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %493 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_230, %cst_229, %cst_232, %cst_231 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%492 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %494 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %495 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %493 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_721 = tensor.pad %495 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_722 = tensor.collapse_shape %cst_228 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_721, %collapsed_722 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %497 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %cst_225, %cst_224, %cst_227, %cst_226 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%496 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %498 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %497 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %500 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_222 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%501, %cst_223 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%502 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %503 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_220 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %507 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_221 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%506 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %508 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %499 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %510 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%509, %cst_219 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %511 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %cst_216, %cst_215, %cst_218, %cst_217 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%510 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %512 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %491 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%512, %cst_214 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_211, %cst_210, %cst_213, %cst_212 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%513 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %516 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %514 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_723 = tensor.pad %516 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_724 = tensor.collapse_shape %cst_209 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %517 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_723, %collapsed_724 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %518 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %cst_206, %cst_205, %cst_208, %cst_207 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%517 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %519 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %520 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %518 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %521 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %522 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_203 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %524 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%522, %cst_204 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%523 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %524 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_201 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%526, %cst_202 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%527 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %529 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %520 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %531 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%530, %cst_200 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %532 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%531 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %533 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %512 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %534 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%533, %cst_195 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %535 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%534 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %536 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %537 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %535 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_725 = tensor.pad %537 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_726 = tensor.collapse_shape %cst_190 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %538 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_725, %collapsed_726 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %539 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%538 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %540 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %541 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %539 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %542 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%541, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_184 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %545 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %cst_185 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%544 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %545 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_182 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %549 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%547, %cst_183 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%548 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %551 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %541 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %552 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%551, %cst_181 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %553 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %cst_178, %cst_177, %cst_180, %cst_179 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%552 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %554 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %533 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %555 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %cst_176 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %556 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %cst_173, %cst_172, %cst_175, %cst_174 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%555 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %557 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %558 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557, %556 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_727 = tensor.pad %558 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_728 = tensor.collapse_shape %cst_171 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %559 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_727, %collapsed_728 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %560 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %cst_168, %cst_167, %cst_170, %cst_169 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%559 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %561 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %562 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %560 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %563 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %564 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_165 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %566 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%564, %cst_166 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%565 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %567 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %566 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_163 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%568, %cst_164 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%569 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %571 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571, %562 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_162 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %574 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %cst_159, %cst_158, %cst_161, %cst_160 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%573 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %575 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %554 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_157 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %577 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %cst_154, %cst_153, %cst_156, %cst_155 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%576 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %578 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %579 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578, %577 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_729 = tensor.pad %579 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_730 = tensor.collapse_shape %cst_152 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %580 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_729, %collapsed_730 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %581 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %cst_149, %cst_148, %cst_151, %cst_150 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%580 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %582 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %583 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %581 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %584 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%583, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %587 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%585, %cst_147 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%586 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %588 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %587 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_144 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%589, %cst_145 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%590 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %583 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %594 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%593, %cst_143 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %595 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %cst_140, %cst_139, %cst_142, %cst_141 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%594 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %596 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %575 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %597 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%596, %cst_138 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %598 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %cst_135, %cst_134, %cst_137, %cst_136 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%597 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %599 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %600 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %598 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_731 = tensor.pad %600 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_732 = tensor.collapse_shape %cst_133 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %601 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_731, %collapsed_732 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %602 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %cst_130, %cst_129, %cst_132, %cst_131 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%601 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %603 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %604 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %602 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %605 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%604, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_127 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %608 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%606, %cst_128 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%607 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %609 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %608 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_125 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %612 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%610, %cst_126 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%611 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %613 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %604 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %615 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%614, %cst_124 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %616 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %cst_121, %cst_120, %cst_123, %cst_122 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%615 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %617 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %596 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %618 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%617, %cst_119 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %619 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %cst_116, %cst_115, %cst_118, %cst_117 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%618 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %620 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %621 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %619 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_733 = tensor.pad %621 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_734 = tensor.collapse_shape %cst_114 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %622 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_733, %collapsed_734 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %623 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %cst_111, %cst_110, %cst_113, %cst_112 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%622 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %624 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %625 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %623 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %626 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%625, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %627 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_108 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %629 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%627, %cst_109 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%628 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %630 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %629 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_106 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%631, %cst_107 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%632 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %625 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %636 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_105 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %637 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%636 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %638 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %617 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %639 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%638, %cst_100 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %640 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%639 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %641 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %642 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641, %640 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_735 = tensor.pad %642 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_736 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %643 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_735, %collapsed_736 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %644 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%643 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %645 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %646 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645, %644 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %647 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%646, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %648 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_89 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %650 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%648, %cst_90 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%649 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %651 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651, %650 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_87 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %654 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%652, %cst_88 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%653 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %655 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%654 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655, %646 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %657 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%656, %cst_86 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %658 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %cst_83, %cst_82, %cst_85, %cst_84 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%657 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %659 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %638 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %660 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%659, %cst_81 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %661 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660, %cst_78, %cst_77, %cst_80, %cst_79 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%660 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %662 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %663 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662, %661 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_737 = tensor.pad %663 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_738 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %664 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_737, %collapsed_738 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %665 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664, %cst_73, %cst_72, %cst_75, %cst_74 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%664 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %666 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %667 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %665 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %668 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%667, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_70 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %671 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%669, %cst_71 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%670 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %672 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %671 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_68 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %675 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%673, %cst_69 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%674 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676, %667 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %678 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%677, %cst_67 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %679 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %cst_64, %cst_63, %cst_66, %cst_65 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%678 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %680 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %659 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %681 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%680, %cst_62 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %682 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681, %cst_59, %cst_58, %cst_61, %cst_60 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%681 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %683 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %684 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683, %682 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_739 = tensor.pad %684 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_740 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %685 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_739, %collapsed_740 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %686 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %cst_54, %cst_53, %cst_56, %cst_55 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%685 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %687 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %688 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %686 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %689 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%688, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %690 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %692 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%690, %cst_52 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%691 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %693 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %692 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_49 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %696 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%694, %cst_50 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%695 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %697 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697, %688 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %699 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%698, %cst_48 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %700 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %cst_45, %cst_44, %cst_47, %cst_46 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%699 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %701 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %680 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %702 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%701, %cst_43 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %703 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702, %cst_40, %cst_39, %cst_42, %cst_41 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%702 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %704 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %705 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %703 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_741 = tensor.pad %705 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_742 = tensor.collapse_shape %cst_38 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %706 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_741, %collapsed_742 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %707 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706, %cst_35, %cst_34, %cst_37, %cst_36 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%706 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %708 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %709 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708, %707 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %710 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%709, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %711 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %712 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %713 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%711, %cst_33 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%712 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %714 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %715 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %713 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %717 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%715, %cst_31 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%716 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %718 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %719 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %709 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %720 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%719, %cst_29 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %721 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720, %cst_26, %cst_25, %cst_28, %cst_27 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%720 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %722 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %701 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %723 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%722, %cst_24 : tensor<1x256x7x7xf32>, tensor<1536x256x1x1xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %724 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723, %cst_21, %cst_20, %cst_23, %cst_22 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%723 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %725 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %726 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725, %724 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_743 = tensor.pad %726 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_671 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x9x9xf32>
    %collapsed_744 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<1536x1x3x3xf32> into tensor<1536x3x3xf32>
    %727 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_743, %collapsed_744 : tensor<1x1536x9x9xf32>, tensor<1536x3x3xf32>) outs(%446 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %728 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %cst_16, %cst_15, %cst_18, %cst_17 : tensor<1x1536x7x7xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>, tensor<1536xf32>) outs(%727 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1536x7x7xf32>
    %729 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728 : tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x7x7xf32>
    %730 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %728 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %731 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%730, %430 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%456 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %732 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x1x1xf32>
    %733 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<64xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %734 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%732, %cst_14 : tensor<1x1536x1x1xf32>, tensor<64x1536x1x1xf32>) outs(%733 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %735 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734 : tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x64x1x1xf32>
    %736 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %734 : tensor<1x64x1x1xf32>, tensor<1x64x1x1xf32>) outs(%459 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x64x1x1xf32>
    %737 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<1536xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %738 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%736, %cst_12 : tensor<1x64x1x1xf32>, tensor<1536x64x1x1xf32>) outs(%737 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %739 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%738 : tensor<1x1536x1x1xf32>) outs(%455 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1536x1x1xf32>
    %740 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739, %730 : tensor<1x1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%445 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1536x7x7xf32>
    %741 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%740, %cst_10 : tensor<1x1536x7x7xf32>, tensor<256x1536x1x1xf32>) outs(%442 : tensor<1x256x7x7xf32>) -> tensor<1x256x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %742 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x256x7x7xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%741 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x256x7x7xf32>
    %743 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742, %722 : tensor<1x256x7x7xf32>, tensor<1x256x7x7xf32>) outs(%441 : tensor<1x256x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x256x7x7xf32>
    %744 = tensor.empty() : tensor<1x1280x7x7xf32>
    %745 = linalg.fill ins(%cst_671 : f32) outs(%744 : tensor<1x1280x7x7xf32>) -> tensor<1x1280x7x7xf32>
    %746 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%743, %cst_5 : tensor<1x256x7x7xf32>, tensor<1280x256x1x1xf32>) outs(%745 : tensor<1x1280x7x7xf32>) -> tensor<1x1280x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %747 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x1280x7x7xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%746 : tensor<1x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %in_747: f32, %in_748: f32, %in_749: f32, %out: f32):
      %760 = arith.truncf %cst_673 : f64 to f32
      %761 = arith.addf %in_749, %760 : f32
      %762 = math.rsqrt %761 : f32
      %763 = arith.subf %in, %in_748 : f32
      %764 = arith.mulf %763, %762 : f32
      %765 = arith.mulf %764, %in_746 : f32
      %766 = arith.addf %765, %in_747 : f32
      linalg.yield %766 : f32
    } -> tensor<1x1280x7x7xf32>
    %748 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747 : tensor<1x1280x7x7xf32>) outs(%744 : tensor<1x1280x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.negf %in : f32
      %761 = math.exp %760 : f32
      %762 = arith.addf %761, %cst_672 : f32
      %763 = arith.divf %cst_672, %762 : f32
      linalg.yield %763 : f32
    } -> tensor<1x1280x7x7xf32>
    %749 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748, %747 : tensor<1x1280x7x7xf32>, tensor<1x1280x7x7xf32>) outs(%744 : tensor<1x1280x7x7xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.mulf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1280x7x7xf32>
    %750 = tensor.empty() : tensor<1x1280x1x1xf32>
    %751 = linalg.fill ins(%cst_671 : f32) outs(%750 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %752 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%749, %430 : tensor<1x1280x7x7xf32>, tensor<7x7xf32>) outs(%751 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %753 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752 : tensor<1x1280x1x1xf32>) outs(%750 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %760 = arith.divf %in, %cst_675 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1280x1x1xf32>
    %collapsed_745 = tensor.collapse_shape %753 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %754 = tensor.empty() : tensor<1280x1000xf32>
    %755 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1280xf32>) outs(%754 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %756 = tensor.empty() : tensor<1x1000xf32>
    %757 = linalg.fill ins(%cst_671 : f32) outs(%756 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %758 = linalg.matmul ins(%collapsed_745, %755 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%757 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %759 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%758, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%756 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_746: f32, %out: f32):
      %760 = arith.addf %in, %in_746 : f32
      linalg.yield %760 : f32
    } -> tensor<1x1000xf32>
    return %759 : tensor<1x1000xf32>
  }
}
