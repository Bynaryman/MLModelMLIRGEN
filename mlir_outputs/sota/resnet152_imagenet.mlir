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
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_515 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_516 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_517 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_518 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_519 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_520 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_521 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_522 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_523 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_524 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_525 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_526 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_527 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_528 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_529 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_530 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_531 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_532 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_533 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_534 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_535 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_536 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_537 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_538 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_539 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_540 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_541 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_542 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_543 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_544 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_545 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_546 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_547 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_548 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_549 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_550 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_551 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_552 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_553 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_554 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_555 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_556 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_557 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_558 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_559 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_560 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_561 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_562 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_563 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_564 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_565 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_566 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_567 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_568 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_569 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_570 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_571 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_572 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_573 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_574 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_575 = arith.constant dense_resource<__elided__> : tensor<256x1024x1x1xf32>
    %cst_576 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_577 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_578 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_579 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_580 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_581 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_582 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_583 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_584 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_585 = arith.constant dense_resource<__elided__> : tensor<1024x256x1x1xf32>
    %cst_586 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_587 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_588 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_589 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_590 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_591 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_592 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_593 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_594 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_595 = arith.constant dense_resource<__elided__> : tensor<256x512x1x1xf32>
    %cst_596 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_597 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_598 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_599 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_600 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_601 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_602 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_603 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_604 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_605 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_606 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_607 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_608 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_609 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_610 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_611 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_612 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_613 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_614 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_615 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_616 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_617 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_618 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_619 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_620 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_621 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_622 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_623 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_624 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_625 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_626 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_627 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_628 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_629 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_630 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_631 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_632 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_633 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_634 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_635 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_636 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_637 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_638 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_639 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_640 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_641 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_642 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_643 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_644 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_645 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_646 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_647 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_648 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_649 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_650 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_651 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_652 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_653 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_654 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_655 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_656 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_657 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_658 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_659 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_660 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_661 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_662 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_663 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_664 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_665 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_666 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_667 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_668 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_669 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_670 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_671 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_672 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_673 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_674 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_675 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_676 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_677 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_678 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_679 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_680 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_681 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_682 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_683 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_684 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_685 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_686 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_687 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_688 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_689 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_690 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_691 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_692 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_693 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_694 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_695 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_696 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_697 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_698 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_699 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_700 = arith.constant dense_resource<__elided__> : tensor<128x512x1x1xf32>
    %cst_701 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_702 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_703 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_704 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_705 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_706 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_707 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_708 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_709 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_710 = arith.constant dense_resource<__elided__> : tensor<512x128x1x1xf32>
    %cst_711 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_712 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_713 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_714 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_715 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_716 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_717 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_718 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_719 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_720 = arith.constant dense_resource<__elided__> : tensor<128x256x1x1xf32>
    %cst_721 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_722 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_723 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_724 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_725 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_726 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_727 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_728 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_729 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_730 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_731 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_732 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_733 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_734 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_735 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_736 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_737 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_738 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_739 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_740 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_741 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_742 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_743 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_744 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_745 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_746 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_747 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_748 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_749 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_750 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_751 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_752 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_753 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_754 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_755 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_756 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_757 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_758 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_759 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_760 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_761 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_762 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_763 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_764 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_765 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_766 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_767 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_768 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_769 = arith.constant dense_resource<__elided__> : tensor<64x64x1x1xf32>
    %cst_770 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_771 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_772 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_773 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_774 = arith.constant dense_resource<__elided__> : tensor<64x3x7x7xf32>
    %false = arith.constant false
    %cst_775 = arith.constant 0.000000e+00 : f32
    %cst_776 = arith.constant 0xFF800000 : f32
    %cst_777 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_778 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x230x230xf32>
    %0 = tensor.empty() : tensor<1x64x112x112xf32>
    %1 = linalg.fill ins(%cst_775 : f32) outs(%0 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_774 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_771, %cst_770, %cst_773, %cst_772 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_779 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_776 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %6 = tensor.empty() : tensor<1x64x56x56xf32>
    %7 = linalg.fill ins(%cst_776 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_779, %8 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = linalg.fill ins(%cst_775 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_769 : tensor<1x64x56x56xf32>, tensor<64x64x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_766, %cst_765, %cst_768, %cst_767 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_780 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_780, %cst_764 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_761, %cst_760, %cst_763, %cst_762 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %17 = tensor.empty() : tensor<1x256x56x56xf32>
    %18 = linalg.fill ins(%cst_775 : f32) outs(%17 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%16, %cst_759 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_756, %cst_755, %cst_758, %cst_757 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%19 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x56x56xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_754 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_751, %cst_755, %cst_753, %cst_752 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%21 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %22 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x256x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x56x56xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_750 : tensor<1x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_747, %cst_746, %cst_749, %cst_748 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_781 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_781, %cst_745 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %29 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28, %cst_742, %cst_741, %cst_744, %cst_743 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%28 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %30 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%30, %cst_740 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %32 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %cst_737, %cst_736, %cst_739, %cst_738 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%31 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %24 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x256x56x56xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x56x56xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%34, %cst_735 : tensor<1x256x56x56xf32>, tensor<64x256x1x1xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_732, %cst_731, %cst_734, %cst_733 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %37 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_782 = tensor.pad %37 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %38 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_782, %cst_730 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %39 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38, %cst_727, %cst_726, %cst_729, %cst_728 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%38 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x64x56x56xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x64x56x56xf32>
    %41 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%40, %cst_725 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %42 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %cst_722, %cst_721, %cst_724, %cst_723 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%41 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %34 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x256x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x256x56x56xf32>) outs(%17 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x56x56xf32>
    %45 = tensor.empty() : tensor<1x128x56x56xf32>
    %46 = linalg.fill ins(%cst_775 : f32) outs(%45 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %47 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%44, %cst_720 : tensor<1x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%46 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %48 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %cst_717, %cst_716, %cst_719, %cst_718 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%47 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x56x56xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48 : tensor<1x128x56x56xf32>) outs(%45 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x56x56xf32>
    %padded_783 = tensor.pad %49 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %50 = tensor.empty() : tensor<1x128x28x28xf32>
    %51 = linalg.fill ins(%cst_775 : f32) outs(%50 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_783, %cst_715 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %53 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52, %cst_712, %cst_711, %cst_714, %cst_713 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%52 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %54 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %55 = tensor.empty() : tensor<1x512x28x28xf32>
    %56 = linalg.fill ins(%cst_775 : f32) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_710 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_707, %cst_706, %cst_709, %cst_708 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%57 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %59 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%44, %cst_705 : tensor<1x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %60 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59, %cst_702, %cst_701, %cst_704, %cst_703 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%59 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %60 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_700 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_697, %cst_696, %cst_699, %cst_698 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%63 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_784 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_784, %cst_695 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_692, %cst_691, %cst_694, %cst_693 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%66 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%68, %cst_690 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %70 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %cst_687, %cst_686, %cst_689, %cst_688 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%69 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %62 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%72, %cst_685 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_682, %cst_681, %cst_684, %cst_683 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%73 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_785 = tensor.pad %75 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_785, %cst_680 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_677, %cst_676, %cst_679, %cst_678 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%76 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %79 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %cst_675 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %80 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %cst_672, %cst_671, %cst_674, %cst_673 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%79 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %72 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_670 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_667, %cst_666, %cst_669, %cst_668 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%83 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_786 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_786, %cst_665 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_662, %cst_661, %cst_664, %cst_663 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%86 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%88, %cst_660 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_657, %cst_656, %cst_659, %cst_658 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90, %82 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %92 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%92, %cst_655 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %94 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %cst_652, %cst_651, %cst_654, %cst_653 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%93 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_787 = tensor.pad %95 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %96 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_787, %cst_650 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %97 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %cst_647, %cst_646, %cst_649, %cst_648 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%96 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %98 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %99 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%98, %cst_645 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99, %cst_642, %cst_641, %cst_644, %cst_643 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%99 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %101 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %92 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_640 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_637, %cst_636, %cst_639, %cst_638 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%103 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_788 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_788, %cst_635 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_632, %cst_631, %cst_634, %cst_633 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%106 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %109 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%108, %cst_630 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %cst_627, %cst_626, %cst_629, %cst_628 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%109 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %102 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %112 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%112, %cst_625 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %cst_622, %cst_621, %cst_624, %cst_623 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%113 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_789 = tensor.pad %115 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_789, %cst_620 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_617, %cst_616, %cst_619, %cst_618 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%116 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %119 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%118, %cst_615 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %cst_612, %cst_611, %cst_614, %cst_613 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%119 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %112 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %123 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%122, %cst_610 : tensor<1x512x28x28xf32>, tensor<128x512x1x1xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %124 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %cst_607, %cst_606, %cst_609, %cst_608 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%123 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_790 = tensor.pad %125 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_790, %cst_605 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%51 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_602, %cst_601, %cst_604, %cst_603 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%126 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x128x28x28xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x128x28x28xf32>) outs(%50 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x128x28x28xf32>
    %129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%128, %cst_600 : tensor<1x128x28x28xf32>, tensor<512x128x1x1xf32>) outs(%56 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %130 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %cst_597, %cst_596, %cst_599, %cst_598 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%129 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x28x28xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %122 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x512x28x28xf32>
    %132 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131 : tensor<1x512x28x28xf32>) outs(%55 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x28x28xf32>
    %133 = tensor.empty() : tensor<1x256x28x28xf32>
    %134 = linalg.fill ins(%cst_775 : f32) outs(%133 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%132, %cst_595 : tensor<1x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%134 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_592, %cst_591, %cst_594, %cst_593 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%135 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x28x28xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x256x28x28xf32>) outs(%133 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_791 = tensor.pad %137 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %138 = tensor.empty() : tensor<1x256x14x14xf32>
    %139 = linalg.fill ins(%cst_775 : f32) outs(%138 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_791, %cst_590 : tensor<1x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %141 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %cst_587, %cst_586, %cst_589, %cst_588 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%140 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %142 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %143 = tensor.empty() : tensor<1x1024x14x14xf32>
    %144 = linalg.fill ins(%cst_775 : f32) outs(%143 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %145 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%142, %cst_585 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %146 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %cst_582, %cst_581, %cst_584, %cst_583 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%145 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%132, %cst_580 : tensor<1x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %148 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %cst_577, %cst_576, %cst_579, %cst_578 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%147 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %149 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %148 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%150, %cst_575 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_572, %cst_571, %cst_574, %cst_573 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%151 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_792 = tensor.pad %153 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_792, %cst_570 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_567, %cst_566, %cst_569, %cst_568 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%154 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %157 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%156, %cst_565 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %cst_562, %cst_561, %cst_564, %cst_563 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%157 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %159 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %150 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%160, %cst_560 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_557, %cst_556, %cst_559, %cst_558 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%161 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_793 = tensor.pad %163 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_793, %cst_555 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_552, %cst_551, %cst_554, %cst_553 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%164 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %167 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %cst_550 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %168 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %cst_547, %cst_546, %cst_549, %cst_548 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%167 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %169 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %160 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%170, %cst_545 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_542, %cst_541, %cst_544, %cst_543 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%171 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_794 = tensor.pad %173 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_794, %cst_540 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_537, %cst_536, %cst_539, %cst_538 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%174 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_535 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_532, %cst_531, %cst_534, %cst_533 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%177 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %170 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%180, %cst_530 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_527, %cst_526, %cst_529, %cst_528 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%181 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_795 = tensor.pad %183 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_795, %cst_525 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_522, %cst_521, %cst_524, %cst_523 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%184 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %187 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%186, %cst_520 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %188 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %cst_517, %cst_516, %cst_519, %cst_518 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%187 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %189 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %180 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%190, %cst_515 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_512, %cst_511, %cst_514, %cst_513 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%191 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_796 = tensor.pad %193 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_796, %cst_510 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_507, %cst_506, %cst_509, %cst_508 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%194 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %197 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %cst_505 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %198 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197, %cst_502, %cst_501, %cst_504, %cst_503 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%197 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %199 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %190 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%200, %cst_500 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_497, %cst_496, %cst_499, %cst_498 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%201 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_797 = tensor.pad %203 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_797, %cst_495 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_492, %cst_491, %cst_494, %cst_493 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%204 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_490 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %208 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_487, %cst_486, %cst_489, %cst_488 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%207 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %200 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %cst_485 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%211 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_798 = tensor.pad %213 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_798, %cst_480 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%214 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %217 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%216, %cst_475 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %218 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%217 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %219 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %210 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%220, %cst_470 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_467, %cst_466, %cst_469, %cst_468 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%221 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_799 = tensor.pad %223 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_799, %cst_465 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_462, %cst_461, %cst_464, %cst_463 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%224 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%226, %cst_460 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %228 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227, %cst_457, %cst_456, %cst_459, %cst_458 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%227 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %220 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_455 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_452, %cst_451, %cst_454, %cst_453 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%231 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_800 = tensor.pad %233 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_800, %cst_450 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_447, %cst_446, %cst_449, %cst_448 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%234 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%236, %cst_445 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %cst_442, %cst_441, %cst_444, %cst_443 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%237 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %239 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %230 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_440 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_437, %cst_436, %cst_439, %cst_438 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%241 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_801 = tensor.pad %243 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_801, %cst_435 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_432, %cst_431, %cst_434, %cst_433 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%244 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %247 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%246, %cst_430 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %248 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %cst_427, %cst_426, %cst_429, %cst_428 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%247 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %249 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %240 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%250, %cst_425 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_422, %cst_421, %cst_424, %cst_423 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%251 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_802 = tensor.pad %253 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_802, %cst_420 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_417, %cst_416, %cst_419, %cst_418 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%254 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%256, %cst_415 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %258 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %cst_412, %cst_411, %cst_414, %cst_413 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%257 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %250 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%260, %cst_410 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_407, %cst_406, %cst_409, %cst_408 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%261 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_803 = tensor.pad %263 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_803, %cst_405 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_402, %cst_401, %cst_404, %cst_403 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%264 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%266, %cst_400 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %268 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %cst_397, %cst_396, %cst_399, %cst_398 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%267 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %269 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %260 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%270, %cst_395 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_392, %cst_391, %cst_394, %cst_393 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%271 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_804 = tensor.pad %273 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_804, %cst_390 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%274 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %277 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%276, %cst_385 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%277 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %270 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %cst_380 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%281 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_805 = tensor.pad %283 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_805, %cst_375 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_372, %cst_371, %cst_374, %cst_373 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%284 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %287 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_370 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %288 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287, %cst_367, %cst_366, %cst_369, %cst_368 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%287 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %289 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %280 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_365 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_362, %cst_361, %cst_364, %cst_363 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%291 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_806 = tensor.pad %293 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_806, %cst_360 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_357, %cst_356, %cst_359, %cst_358 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%294 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%296, %cst_355 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %cst_352, %cst_351, %cst_354, %cst_353 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%297 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %290 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%300, %cst_350 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_347, %cst_346, %cst_349, %cst_348 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%301 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_807 = tensor.pad %303 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_807, %cst_345 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_342, %cst_341, %cst_344, %cst_343 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%304 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %307 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%306, %cst_340 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %308 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307, %cst_337, %cst_336, %cst_339, %cst_338 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%307 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %309 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %300 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%310, %cst_335 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_332, %cst_331, %cst_334, %cst_333 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%311 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_808 = tensor.pad %313 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_808, %cst_330 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_327, %cst_326, %cst_329, %cst_328 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%314 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %317 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%316, %cst_325 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %318 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %cst_322, %cst_321, %cst_324, %cst_323 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%317 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %319 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %310 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%320, %cst_320 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_317, %cst_316, %cst_319, %cst_318 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%321 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_809 = tensor.pad %323 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_809, %cst_315 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_312, %cst_311, %cst_314, %cst_313 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%324 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %327 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%326, %cst_310 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %328 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %cst_307, %cst_306, %cst_309, %cst_308 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%327 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %320 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %331 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%330, %cst_305 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %332 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %cst_302, %cst_301, %cst_304, %cst_303 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%331 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %333 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_810 = tensor.pad %333 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %334 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_810, %cst_300 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %335 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %cst_297, %cst_296, %cst_299, %cst_298 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%334 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %336 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%335 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %337 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%336, %cst_295 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %338 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%337 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %330 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %341 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%340, %cst_290 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %342 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%341 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_811 = tensor.pad %343 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_811, %cst_285 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%344 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%346, %cst_280 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %cst_277, %cst_276, %cst_279, %cst_278 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%347 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %340 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %351 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%350, %cst_275 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %352 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %cst_272, %cst_271, %cst_274, %cst_273 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%351 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %353 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_812 = tensor.pad %353 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_812, %cst_270 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_267, %cst_266, %cst_269, %cst_268 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%354 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_265 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_262, %cst_261, %cst_264, %cst_263 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%357 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %350 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %361 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%360, %cst_260 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_257, %cst_256, %cst_259, %cst_258 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%361 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_813 = tensor.pad %363 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %364 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_813, %cst_255 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %365 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364, %cst_252, %cst_251, %cst_254, %cst_253 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%364 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %367 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %cst_250 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %368 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367, %cst_247, %cst_246, %cst_249, %cst_248 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%367 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %369 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368, %360 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %370 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %371 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_245 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %372 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371, %cst_242, %cst_241, %cst_244, %cst_243 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%371 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %373 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_814 = tensor.pad %373 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %374 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_814, %cst_240 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %375 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %cst_237, %cst_236, %cst_239, %cst_238 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%374 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %376 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %377 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%376, %cst_235 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %378 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %cst_232, %cst_231, %cst_234, %cst_233 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%377 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %379 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %370 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%380, %cst_230 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %382 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %cst_227, %cst_226, %cst_229, %cst_228 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%381 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %383 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_815 = tensor.pad %383 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_815, %cst_225 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %385 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %cst_222, %cst_221, %cst_224, %cst_223 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%384 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %386 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%386, %cst_220 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %cst_217, %cst_216, %cst_219, %cst_218 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%387 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %380 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %390 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %391 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%390, %cst_215 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %392 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %cst_212, %cst_211, %cst_214, %cst_213 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%391 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %393 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_816 = tensor.pad %393 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %394 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_816, %cst_210 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %cst_207, %cst_206, %cst_209, %cst_208 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%394 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %396 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %397 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_205 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %398 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %cst_202, %cst_201, %cst_204, %cst_203 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%397 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %399 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398, %390 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %400 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%400, %cst_200 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %402 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%401 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %403 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%402 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_817 = tensor.pad %403 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %404 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_817, %cst_195 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %405 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%404 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %406 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %407 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%406, %cst_190 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %408 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%407 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %409 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%408, %400 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %410 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%410, %cst_185 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %412 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %cst_182, %cst_181, %cst_184, %cst_183 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%411 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %413 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_818 = tensor.pad %413 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %414 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_818, %cst_180 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %415 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %cst_177, %cst_176, %cst_179, %cst_178 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%414 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %416 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %417 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%416, %cst_175 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %418 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417, %cst_172, %cst_171, %cst_174, %cst_173 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%417 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %410 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %420 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%419 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %421 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%420, %cst_170 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %422 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %cst_167, %cst_166, %cst_169, %cst_168 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%421 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %423 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_819 = tensor.pad %423 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %424 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_819, %cst_165 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %425 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424, %cst_162, %cst_161, %cst_164, %cst_163 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%424 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %426 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %427 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %cst_160 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %428 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %cst_157, %cst_156, %cst_159, %cst_158 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%427 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %420 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %430 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %431 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%430, %cst_155 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %432 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431, %cst_152, %cst_151, %cst_154, %cst_153 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%431 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %433 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_820 = tensor.pad %433 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %434 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_820, %cst_150 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_147, %cst_146, %cst_149, %cst_148 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%434 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %436 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %437 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%436, %cst_145 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %438 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%437, %cst_142, %cst_141, %cst_144, %cst_143 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%437 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %439 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438, %430 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %440 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%439 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%440, %cst_140 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %442 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %cst_137, %cst_136, %cst_139, %cst_138 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%441 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %443 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_821 = tensor.pad %443 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_821, %cst_135 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %445 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444, %cst_132, %cst_131, %cst_134, %cst_133 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%444 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %446 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%446, %cst_130 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %cst_127, %cst_126, %cst_129, %cst_128 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%447 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %440 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%450, %cst_125 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_122, %cst_121, %cst_124, %cst_123 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%451 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_822 = tensor.pad %453 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %454 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_822, %cst_120 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %455 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_117, %cst_116, %cst_119, %cst_118 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%454 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %457 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%456, %cst_115 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %458 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %cst_112, %cst_111, %cst_114, %cst_113 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%457 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %459 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458, %450 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %460 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %461 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%460, %cst_110 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %462 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461, %cst_107, %cst_106, %cst_109, %cst_108 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%461 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %463 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_823 = tensor.pad %463 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %464 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_823, %cst_105 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %465 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%464 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %466 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %467 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%466, %cst_100 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %468 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%467 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %469 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %460 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_95 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%471 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_824 = tensor.pad %473 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %474 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_824, %cst_90 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %475 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %cst_87, %cst_86, %cst_89, %cst_88 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%474 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %476 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %477 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%476, %cst_85 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %478 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %cst_82, %cst_81, %cst_84, %cst_83 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%477 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %479 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %470 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %480 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %481 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_80 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %482 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481, %cst_77, %cst_76, %cst_79, %cst_78 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%481 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %483 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_825 = tensor.pad %483 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %484 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_825, %cst_75 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %485 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %cst_72, %cst_71, %cst_74, %cst_73 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%484 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %486 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%485 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%486, %cst_70 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %488 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %cst_67, %cst_66, %cst_69, %cst_68 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%487 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %489 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %480 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %490 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %491 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%490, %cst_65 : tensor<1x1024x14x14xf32>, tensor<256x1024x1x1xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %492 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %cst_62, %cst_61, %cst_64, %cst_63 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%491 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %493 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_826 = tensor.pad %493 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %494 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_826, %cst_60 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%139 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %495 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_57, %cst_56, %cst_59, %cst_58 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%494 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x256x14x14xf32>
    %496 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x256x14x14xf32>) outs(%138 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x256x14x14xf32>
    %497 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%496, %cst_55 : tensor<1x256x14x14xf32>, tensor<1024x256x1x1xf32>) outs(%144 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_52, %cst_51, %cst_54, %cst_53 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%497 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x1024x14x14xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %490 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1024x14x14xf32>
    %500 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499 : tensor<1x1024x14x14xf32>) outs(%143 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x1024x14x14xf32>
    %501 = tensor.empty() : tensor<1x512x14x14xf32>
    %502 = linalg.fill ins(%cst_775 : f32) outs(%501 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%500, %cst_50 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%502 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %504 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503, %cst_47, %cst_46, %cst_49, %cst_48 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%503 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x14x14xf32>
    %505 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x512x14x14xf32>) outs(%501 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_827 = tensor.pad %505 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %506 = tensor.empty() : tensor<1x512x7x7xf32>
    %507 = linalg.fill ins(%cst_775 : f32) outs(%506 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %508 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_827, %cst_45 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %509 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %cst_42, %cst_41, %cst_44, %cst_43 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%508 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x7x7xf32>
    %510 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509 : tensor<1x512x7x7xf32>) outs(%506 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x7x7xf32>
    %511 = tensor.empty() : tensor<1x2048x7x7xf32>
    %512 = linalg.fill ins(%cst_775 : f32) outs(%511 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_40 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_37, %cst_36, %cst_39, %cst_38 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%513 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x2048x7x7xf32>
    %515 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%500, %cst_35 : tensor<1x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%512 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %516 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %cst_32, %cst_31, %cst_34, %cst_33 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%515 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x2048x7x7xf32>
    %517 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %516 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x2048x7x7xf32>
    %518 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517 : tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x2048x7x7xf32>
    %519 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%518, %cst_30 : tensor<1x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%507 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %520 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %cst_27, %cst_26, %cst_29, %cst_28 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%519 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x7x7xf32>
    %521 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x512x7x7xf32>) outs(%506 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_828 = tensor.pad %521 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %522 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_828, %cst_25 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %523 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522, %cst_22, %cst_21, %cst_24, %cst_23 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%522 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x7x7xf32>
    %524 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523 : tensor<1x512x7x7xf32>) outs(%506 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x7x7xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%524, %cst_20 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %526 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %cst_17, %cst_16, %cst_19, %cst_18 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%525 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x2048x7x7xf32>
    %527 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %518 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x2048x7x7xf32>
    %528 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%527 : tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x2048x7x7xf32>
    %529 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%528, %cst_15 : tensor<1x2048x7x7xf32>, tensor<512x2048x1x1xf32>) outs(%507 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %530 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %cst_12, %cst_11, %cst_14, %cst_13 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%529 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x7x7xf32>
    %531 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x512x7x7xf32>) outs(%506 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_829 = tensor.pad %531 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_775 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_829, %cst_10 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%507 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%532 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x512x7x7xf32>
    %534 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533 : tensor<1x512x7x7xf32>) outs(%506 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x512x7x7xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%534, %cst_5 : tensor<1x512x7x7xf32>, tensor<2048x512x1x1xf32>) outs(%512 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %536 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%535 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %in_831: f32, %in_832: f32, %in_833: f32, %out: f32):
      %550 = arith.truncf %cst_777 : f64 to f32
      %551 = arith.addf %in_833, %550 : f32
      %552 = math.rsqrt %551 : f32
      %553 = arith.subf %in, %in_832 : f32
      %554 = arith.mulf %553, %552 : f32
      %555 = arith.mulf %554, %in_830 : f32
      %556 = arith.addf %555, %in_831 : f32
      linalg.yield %556 : f32
    } -> tensor<1x2048x7x7xf32>
    %537 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %528 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x2048x7x7xf32>
    %538 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537 : tensor<1x2048x7x7xf32>) outs(%511 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.cmpf ugt, %in, %cst_775 : f32
      %551 = arith.select %550, %in, %cst_775 : f32
      linalg.yield %551 : f32
    } -> tensor<1x2048x7x7xf32>
    %539 = tensor.empty() : tensor<1x2048x1x1xf32>
    %540 = linalg.fill ins(%cst_775 : f32) outs(%539 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %541 = tensor.empty() : tensor<7x7xf32>
    %542 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%538, %541 : tensor<1x2048x7x7xf32>, tensor<7x7xf32>) outs(%540 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542 : tensor<1x2048x1x1xf32>) outs(%539 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %550 = arith.divf %in, %cst_778 : f32
      linalg.yield %550 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %543 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %544 = tensor.empty() : tensor<2048x1000xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x2048xf32>) outs(%544 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %546 = tensor.empty() : tensor<1x1000xf32>
    %547 = linalg.fill ins(%cst_775 : f32) outs(%546 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %548 = linalg.matmul ins(%collapsed, %545 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%547 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %549 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%548, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%546 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_830: f32, %out: f32):
      %550 = arith.addf %in, %in_830 : f32
      linalg.yield %550 : f32
    } -> tensor<1x1000xf32>
    return %549 : tensor<1x1000xf32>
  }
}
