#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x2048xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<2048x512x1x1xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<512x2048x1x1xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<2048x512x1x1xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<512x2048x1x1xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<2048x512x1x1xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<256x512x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<128x256x1x1xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<64x64x1x1xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<64x3x7x7xf32>
    %false = arith.constant false
    %cst_264 = arith.constant 0.000000e+00 : f32
    %cst_265 = arith.constant 0xFF800000 : f32
    %cst_266 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_267 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x230x230xf32>
    %0 = tensor.empty() : tensor<1x64x112x112xf32>
    %1 = linalg.fill ins(%cst_264 : f32) outs(%0 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_263 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_260, %cst_259, %cst_262, %cst_261 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_268 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_265 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %6 = tensor.empty() : tensor<1x64x56x56xf32>
    %7 = linalg.fill ins(%cst_265 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_268, %8 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = linalg.fill ins(%cst_264 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_258 : tensor<1x64x56x56xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_255, %cst_254, %cst_257, %cst_256 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_269 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_269, %cst_253 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_250, %cst_249, %cst_252, %cst_251 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %17 = tensor.empty() : tensor<1x256x56x56xf32>
    %18 = linalg.fill ins(%cst_264 : f32) outs(%17 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_248 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_245, %cst_244, %cst_247, %cst_246 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x56x56xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_243 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_240, %cst_244, %cst_242, %cst_241 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%21 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %22 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x256x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x56x56xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_239 : tensor<1x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_236, %cst_235, %cst_238, %cst_237 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_270 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_270, %cst_234 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_231, %cst_230, %cst_233, %cst_232 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_229 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_226, %cst_225, %cst_228, %cst_227 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%31 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %24 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x256x56x56xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x56x56xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_224 : tensor<1x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_221, %cst_220, %cst_223, %cst_222 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_271 = tensor.pad %37 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_271, %cst_219 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_216, %cst_215, %cst_218, %cst_217 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%38 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x64x56x56xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_214 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_211, %cst_210, %cst_213, %cst_212 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%41 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %34 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x256x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x56x56xf32>
    %45 = tensor.empty() : tensor<1x128x56x56xf32>
    %46 = linalg.fill ins(%cst_264 : f32) outs(%45 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_209 : tensor<1x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%46 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_206, %cst_205, %cst_208, %cst_207 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%47 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x56x56xf32>) outs(%45 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x56x56xf32>
    %padded_272 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %50 = tensor.empty() : tensor<1x128x28x28xf32>
    %51 = linalg.fill ins(%cst_264 : f32) outs(%50 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_272, %cst_204 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_201, %cst_200, %cst_203, %cst_202 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %55 = tensor.empty() : tensor<1x512x28x28xf32>
    %56 = linalg.fill ins(%cst_264 : f32) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_199 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_196, %cst_195, %cst_198, %cst_197 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%57 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x28x28xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%44, %cst_194 : tensor<1x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_191, %cst_195, %cst_193, %cst_192 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x28x28xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %60 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x512x28x28xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x28x28xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_190 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%63 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_273 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_273, %cst_185 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_182, %cst_181, %cst_184, %cst_183 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%66 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_180 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_177, %cst_176, %cst_179, %cst_178 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%69 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x28x28xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %62 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x512x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x28x28xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_175 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_172, %cst_171, %cst_174, %cst_173 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_274 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_274, %cst_170 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_167, %cst_166, %cst_169, %cst_168 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%76 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_165 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_162, %cst_161, %cst_164, %cst_163 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%79 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %72 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x512x28x28xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x28x28xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_160 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_157, %cst_156, %cst_159, %cst_158 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%83 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_275 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_275, %cst_155 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_152, %cst_151, %cst_154, %cst_153 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%86 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x128x28x28xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x128x28x28xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_150 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_147, %cst_146, %cst_149, %cst_148 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %82 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x512x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x28x28xf32>
    %93 = tensor.empty() : tensor<1x256x28x28xf32>
    %94 = linalg.fill ins(%cst_264 : f32) outs(%93 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %95 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_145 : tensor<1x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%94 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %96 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %cst_142, %cst_141, %cst_144, %cst_143 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%95 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x28x28xf32>
    %97 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96 : tensor<1x256x28x28xf32>) outs(%93 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_276 = tensor.pad %97 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %98 = tensor.empty() : tensor<1x256x14x14xf32>
    %99 = linalg.fill ins(%cst_264 : f32) outs(%98 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_276, %cst_140 : tensor<1x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_137, %cst_136, %cst_139, %cst_138 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%100 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %103 = tensor.empty() : tensor<1x1024x14x14xf32>
    %104 = linalg.fill ins(%cst_264 : f32) outs(%103 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_135 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %106 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %cst_132, %cst_131, %cst_134, %cst_133 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%105 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%92, %cst_130 : tensor<1x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_127, %cst_126, %cst_129, %cst_128 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%107 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %108 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_125 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_122, %cst_121, %cst_124, %cst_123 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%111 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_277 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_277, %cst_120 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_117, %cst_116, %cst_119, %cst_118 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%114 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %117 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%116, %cst_115 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %118 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117, %cst_112, %cst_111, %cst_114, %cst_113 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%117 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %110 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%120, %cst_110 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_107, %cst_106, %cst_109, %cst_108 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%121 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_278 = tensor.pad %123 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_278, %cst_105 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%124 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%126, %cst_100 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %128 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%127 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %129 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %120 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_95 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%131 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_279 = tensor.pad %133 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_279, %cst_90 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_87, %cst_86, %cst_89, %cst_88 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%134 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%136, %cst_85 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %138 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %cst_82, %cst_81, %cst_84, %cst_83 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%137 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %130 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%140, %cst_80 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_77, %cst_76, %cst_79, %cst_78 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%141 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_280 = tensor.pad %143 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_280, %cst_75 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_72, %cst_71, %cst_74, %cst_73 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%144 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%146, %cst_70 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_67, %cst_66, %cst_69, %cst_68 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %140 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_65 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_62, %cst_61, %cst_64, %cst_63 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%151 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_281 = tensor.pad %153 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_281, %cst_60 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%99 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_57, %cst_56, %cst_59, %cst_58 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%154 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x256x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x14x14xf32>) outs(%98 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_55 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%104 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_52, %cst_51, %cst_54, %cst_53 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%157 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x1024x14x14xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1024x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x14x14xf32>) outs(%103 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x1024x14x14xf32>
    %161 = tensor.empty() : tensor<1x512x14x14xf32>
    %162 = linalg.fill ins(%cst_264 : f32) outs(%161 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %163 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%160, %cst_50 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%162 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_47, %cst_46, %cst_49, %cst_48 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%163 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x512x14x14xf32>) outs(%161 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_282 = tensor.pad %165 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %166 = tensor.empty() : tensor<1x512x7x7xf32>
    %167 = linalg.fill ins(%cst_264 : f32) outs(%166 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_282, %cst_45 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_42, %cst_41, %cst_44, %cst_43 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%168 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x7x7xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x7x7xf32>) outs(%166 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x7x7xf32>
    %171 = tensor.empty() : tensor<1x2048x7x7xf32>
    %172 = linalg.fill ins(%cst_264 : f32) outs(%171 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %173 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_40 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %174 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %cst_37, %cst_36, %cst_39, %cst_38 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%173 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x2048x7x7xf32>
    %175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%160, %cst_35 : tensor<1x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%172 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %176 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %cst_32, %cst_31, %cst_34, %cst_33 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%175 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x2048x7x7xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %176 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x2048x7x7xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177 : tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x2048x7x7xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%178, %cst_30 : tensor<1x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%167 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179, %cst_27, %cst_26, %cst_29, %cst_28 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%179 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x7x7xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x512x7x7xf32>) outs(%166 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_283 = tensor.pad %181 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_283, %cst_25 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %cst_22, %cst_21, %cst_24, %cst_23 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%182 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x7x7xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x512x7x7xf32>) outs(%166 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x7x7xf32>
    %185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%184, %cst_20 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %186 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %cst_17, %cst_16, %cst_19, %cst_18 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%185 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x2048x7x7xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %178 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x2048x7x7xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x2048x7x7xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_15 : tensor<1x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%167 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_12, %cst_11, %cst_14, %cst_13 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%189 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x7x7xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x512x7x7xf32>) outs(%166 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_284 = tensor.pad %191 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_264 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %192 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_284, %cst_10 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%167 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %193 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%192 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x512x7x7xf32>
    %194 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193 : tensor<1x512x7x7xf32>) outs(%166 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x512x7x7xf32>
    %195 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%194, %cst_5 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%172 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%195 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %in_286: f32, %in_287: f32, %in_288: f32, %out: f32):
      %210 = arith.truncf %cst_266 : f64 to f32
      %211 = arith.addf %in_288, %210 : f32
      %212 = math.rsqrt %211 : f32
      %213 = arith.subf %in, %in_287 : f32
      %214 = arith.mulf %213, %212 : f32
      %215 = arith.mulf %214, %in_285 : f32
      %216 = arith.addf %215, %in_286 : f32
      linalg.yield %216 : f32
    } -> tensor<1x2048x7x7xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %188 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x2048x7x7xf32>
    %198 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x2048x7x7xf32>) outs(%171 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.cmpf ugt, %in, %cst_264 : f32
      %211 = arith.select %210, %in, %cst_264 : f32
      linalg.yield %211 : f32
    } -> tensor<1x2048x7x7xf32>
    %199 = tensor.empty() : tensor<1x2048x1x1xf32>
    %200 = linalg.fill ins(%cst_264 : f32) outs(%199 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %201 = tensor.empty() : tensor<7x7xf32>
    %202 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %201 : tensor<1x2048x7x7xf32>, tensor<7x7xf32>) outs(%200 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x2048x1x1xf32>) outs(%199 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %210 = arith.divf %in, %cst_267 : f32
      linalg.yield %210 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %203 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %204 = tensor.empty() : tensor<2048x1000xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x2048xf32>) outs(%204 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %206 = tensor.empty() : tensor<1x1000xf32>
    %207 = linalg.fill ins(%cst_264 : f32) outs(%206 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %208 = linalg.matmul ins(%collapsed, %205 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%207 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %209 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%208, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%206 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_285: f32, %out: f32):
      %210 = arith.addf %in, %in_285 : f32
      linalg.yield %210 : f32
    } -> tensor<1x1000xf32>
    return %209 : tensor<1x1000xf32>
  }
}
