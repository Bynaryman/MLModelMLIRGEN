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
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<1024x1024x3x3xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<1024x2048x1x1xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<1024x1024x3x3xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<1024x2048x1x1xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<1024x1024x3x3xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<512x1024x1x1xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<256x512x1x1xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<256x512x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<256x512x1x1xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<256x128x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<128x256x1x1xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<256x128x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<128x256x1x1xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<256x128x1x1xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<128x64x1x1xf32>
    %cst_515 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_516 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_517 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_518 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_519 = arith.constant dense_resource<__elided__> : tensor<64x3x7x7xf32>
    %false = arith.constant false
    %cst_520 = arith.constant 0.000000e+00 : f32
    %cst_521 = arith.constant 0xFF800000 : f32
    %cst_522 = arith.constant 1.000000e-05 : f64
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %cst_523 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x230x230xf32>
    %0 = tensor.empty() : tensor<1x64x112x112xf32>
    %1 = linalg.fill ins(%cst_520 : f32) outs(%0 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_519 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_516, %cst_515, %cst_518, %cst_517 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x64x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_524 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_521 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %6 = tensor.empty() : tensor<1x64x56x56xf32>
    %7 = linalg.fill ins(%cst_521 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_524, %8 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = tensor.empty() : tensor<1x128x56x56xf32>
    %11 = linalg.fill ins(%cst_520 : f32) outs(%10 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_514 : tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_511, %cst_510, %cst_513, %cst_512 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%12 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %padded_525 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_525, %cst_509 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %cst_506, %cst_505, %cst_508, %cst_507 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%15 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %18 = tensor.empty() : tensor<1x256x56x56xf32>
    %19 = linalg.fill ins(%cst_520 : f32) outs(%18 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%17, %cst_504 : tensor<1x128x56x56xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_501, %cst_500, %cst_503, %cst_502 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%20 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x56x56xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_499 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_496, %cst_500, %cst_498, %cst_497 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%22 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %23 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x256x56x56xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x56x56xf32>
    %26 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%25, %cst_495 : tensor<1x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %27 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26, %cst_492, %cst_491, %cst_494, %cst_493 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%26 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %padded_526 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_526, %cst_490 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_487, %cst_486, %cst_489, %cst_488 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%31, %cst_485 : tensor<1x128x56x56xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%32 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x56x56xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33, %25 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x256x56x56xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x56x56xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%35, %cst_480 : tensor<1x256x56x56xf32>, tensor<128x256x1x1xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %padded_527 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x128x56x56xf32> to tensor<1x128x58x58xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_527, %cst_475 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%11 : tensor<1x128x56x56xf32>) -> tensor<1x128x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x128x56x56xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x128x56x56xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x128x56x56xf32>) outs(%10 : tensor<1x128x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x128x56x56xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_470 : tensor<1x128x56x56xf32>, tensor<256x128x1x1xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_467, %cst_466, %cst_469, %cst_468 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%42 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x56x56xf32>
    %44 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %35 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x256x56x56xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x56x56xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_465 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%19 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_462, %cst_461, %cst_464, %cst_463 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%46 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x56x56xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_528 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %49 = tensor.empty() : tensor<1x256x28x28xf32>
    %50 = linalg.fill ins(%cst_520 : f32) outs(%49 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_528, %cst_460 : tensor<1x256x58x58xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_457, %cst_456, %cst_459, %cst_458 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%51 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %54 = tensor.empty() : tensor<1x512x28x28xf32>
    %55 = linalg.fill ins(%cst_520 : f32) outs(%54 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%53, %cst_455 : tensor<1x256x28x28xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_452, %cst_451, %cst_454, %cst_453 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%56 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%45, %cst_450 : tensor<1x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %59 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %cst_447, %cst_446, %cst_449, %cst_448 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%58 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %59 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x512x28x28xf32>
    %61 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x28x28xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%61, %cst_445 : tensor<1x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %63 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %cst_442, %cst_441, %cst_444, %cst_443 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%62 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %64 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_529 = tensor.pad %64 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_529, %cst_440 : tensor<1x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %66 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %cst_437, %cst_436, %cst_439, %cst_438 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%65 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %67 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %cst_435 : tensor<1x256x28x28xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_432, %cst_431, %cst_434, %cst_433 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %61 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x512x28x28xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x28x28xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%71, %cst_430 : tensor<1x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_427, %cst_426, %cst_429, %cst_428 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%72 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_530 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_530, %cst_425 : tensor<1x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_422, %cst_421, %cst_424, %cst_423 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%75 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_420 : tensor<1x256x28x28xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_417, %cst_416, %cst_419, %cst_418 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%78 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %71 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x512x28x28xf32>
    %81 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x28x28xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_415 : tensor<1x512x28x28xf32>, tensor<256x512x1x1xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_412, %cst_411, %cst_414, %cst_413 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%82 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %padded_531 = tensor.pad %84 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x28x28xf32> to tensor<1x256x30x30xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_531, %cst_410 : tensor<1x256x30x30xf32>, tensor<256x256x3x3xf32>) outs(%50 : tensor<1x256x28x28xf32>) -> tensor<1x256x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_407, %cst_406, %cst_409, %cst_408 : tensor<1x256x28x28xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%85 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x256x28x28xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x256x28x28xf32>) outs(%49 : tensor<1x256x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x256x28x28xf32>
    %88 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%87, %cst_405 : tensor<1x256x28x28xf32>, tensor<512x256x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %89 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %cst_402, %cst_401, %cst_404, %cst_403 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%88 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %90 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %81 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x512x28x28xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x28x28xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%91, %cst_400 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%55 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_397, %cst_396, %cst_399, %cst_398 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%92 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x28x28xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x512x28x28xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_532 = tensor.pad %94 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %95 = tensor.empty() : tensor<1x512x14x14xf32>
    %96 = linalg.fill ins(%cst_520 : f32) outs(%95 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_532, %cst_395 : tensor<1x512x30x30xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_392, %cst_391, %cst_394, %cst_393 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%97 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %100 = tensor.empty() : tensor<1x1024x14x14xf32>
    %101 = linalg.fill ins(%cst_520 : f32) outs(%100 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_390 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%102 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%91, %cst_385 : tensor<1x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%104 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %105 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %107 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_380 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%108 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_533 = tensor.pad %110 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_533, %cst_375 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_372, %cst_371, %cst_374, %cst_373 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%111 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%113, %cst_370 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_367, %cst_366, %cst_369, %cst_368 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%114 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115, %107 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_365 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_362, %cst_361, %cst_364, %cst_363 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%118 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_534 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_534, %cst_360 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_357, %cst_356, %cst_359, %cst_358 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%121 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %124 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%123, %cst_355 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %125 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %cst_352, %cst_351, %cst_354, %cst_353 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%124 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %126 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %117 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%127, %cst_350 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_347, %cst_346, %cst_349, %cst_348 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%128 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_535 = tensor.pad %130 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_535, %cst_345 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %132 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_342, %cst_341, %cst_344, %cst_343 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%131 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %133 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %134 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%133, %cst_340 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %135 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134, %cst_337, %cst_336, %cst_339, %cst_338 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%134 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %136 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %127 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_335 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_332, %cst_331, %cst_334, %cst_333 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%138 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_536 = tensor.pad %140 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %141 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_536, %cst_330 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_327, %cst_326, %cst_329, %cst_328 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%141 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %144 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%143, %cst_325 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %cst_322, %cst_321, %cst_324, %cst_323 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%144 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %146 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145, %137 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %147 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %148 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%147, %cst_320 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %149 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148, %cst_317, %cst_316, %cst_319, %cst_318 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%148 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %150 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_537 = tensor.pad %150 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %151 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_537, %cst_315 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %152 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151, %cst_312, %cst_311, %cst_314, %cst_313 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%151 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %153 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%153, %cst_310 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %155 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_307, %cst_306, %cst_309, %cst_308 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%154 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %156 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %147 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %157 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%157, %cst_305 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %159 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158, %cst_302, %cst_301, %cst_304, %cst_303 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%158 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %160 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_538 = tensor.pad %160 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_538, %cst_300 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_297, %cst_296, %cst_299, %cst_298 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%161 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %163 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%163, %cst_295 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%164 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %157 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%167, %cst_290 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%168, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%168 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_539 = tensor.pad %170 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_539, %cst_285 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%171 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %173 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%173, %cst_280 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174, %cst_277, %cst_276, %cst_279, %cst_278 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%174 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %176 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %167 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %177 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %178 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%177, %cst_275 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %179 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %cst_272, %cst_271, %cst_274, %cst_273 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%178 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_540 = tensor.pad %180 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %181 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_540, %cst_270 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %182 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181, %cst_267, %cst_266, %cst_269, %cst_268 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%181 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %184 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%183, %cst_265 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_262, %cst_261, %cst_264, %cst_263 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%184 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185, %177 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %188 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %cst_260 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %189 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188, %cst_257, %cst_256, %cst_259, %cst_258 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%188 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %190 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_541 = tensor.pad %190 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_541, %cst_255 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %192 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %cst_252, %cst_251, %cst_254, %cst_253 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%191 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %193 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %194 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_250 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %195 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_247, %cst_246, %cst_249, %cst_248 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%194 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %187 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_245 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_242, %cst_241, %cst_244, %cst_243 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%198 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_542 = tensor.pad %200 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_542, %cst_240 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_237, %cst_236, %cst_239, %cst_238 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%201 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%203, %cst_235 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %205 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204, %cst_232, %cst_231, %cst_234, %cst_233 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%204 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %206 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %197 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%207, %cst_230 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %cst_227, %cst_226, %cst_229, %cst_228 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%208 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_543 = tensor.pad %210 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %211 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_543, %cst_225 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %212 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211, %cst_222, %cst_221, %cst_224, %cst_223 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%211 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %214 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%213, %cst_220 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_217, %cst_216, %cst_219, %cst_218 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%214 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215, %207 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %218 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %cst_215 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %219 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218, %cst_212, %cst_211, %cst_214, %cst_213 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%218 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %220 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_544 = tensor.pad %220 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_544, %cst_210 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %222 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221, %cst_207, %cst_206, %cst_209, %cst_208 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%221 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %223 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %224 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_205 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %225 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_202, %cst_201, %cst_204, %cst_203 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%224 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %226 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225, %217 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %227 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %cst_200 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%228 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_545 = tensor.pad %230 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_545, %cst_195 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%231 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%233, %cst_190 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%234 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %236 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %227 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %238 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%237, %cst_185 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %239 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %cst_182, %cst_181, %cst_184, %cst_183 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%238 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %240 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_546 = tensor.pad %240 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %241 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_546, %cst_180 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %cst_177, %cst_176, %cst_179, %cst_178 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%241 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %244 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%243, %cst_175 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %245 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %cst_172, %cst_171, %cst_174, %cst_173 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%244 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %237 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %247 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%247, %cst_170 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %249 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248, %cst_167, %cst_166, %cst_169, %cst_168 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%248 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %250 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_547 = tensor.pad %250 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %251 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_547, %cst_165 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %252 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_162, %cst_161, %cst_164, %cst_163 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%251 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %253 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %254 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%253, %cst_160 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %255 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %cst_157, %cst_156, %cst_159, %cst_158 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%254 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%255, %247 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %257 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%257, %cst_155 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %cst_152, %cst_151, %cst_154, %cst_153 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%258 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_548 = tensor.pad %260 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_548, %cst_150 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %262 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %cst_147, %cst_146, %cst_149, %cst_148 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%261 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %263 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %264 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_145 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %265 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %cst_142, %cst_141, %cst_144, %cst_143 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%264 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %266 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265, %257 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %267 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %268 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_140 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %269 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %cst_137, %cst_136, %cst_139, %cst_138 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%268 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %270 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_549 = tensor.pad %270 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %271 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_549, %cst_135 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %272 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %cst_132, %cst_131, %cst_134, %cst_133 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%271 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %274 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%273, %cst_130 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_127, %cst_126, %cst_129, %cst_128 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%274 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %267 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %278 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %cst_125 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %279 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278, %cst_122, %cst_121, %cst_124, %cst_123 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%278 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_550 = tensor.pad %280 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %281 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_550, %cst_120 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %282 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281, %cst_117, %cst_116, %cst_119, %cst_118 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%281 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %283 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%283, %cst_115 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %285 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284, %cst_112, %cst_111, %cst_114, %cst_113 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%284 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %286 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %277 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %287 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%287, %cst_110 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %289 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288, %cst_107, %cst_106, %cst_109, %cst_108 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%288 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %290 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_551 = tensor.pad %290 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_551, %cst_105 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%291 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_100 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%294 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295, %287 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %298 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%297, %cst_95 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%298 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_552 = tensor.pad %300 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %301 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_552, %cst_90 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %302 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %cst_87, %cst_86, %cst_89, %cst_88 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%301 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %303 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %304 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_85 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304, %cst_82, %cst_81, %cst_84, %cst_83 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%304 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %306 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %297 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %307 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %308 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %cst_80 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %309 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308, %cst_77, %cst_76, %cst_79, %cst_78 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%308 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %310 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_553 = tensor.pad %310 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_553, %cst_75 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %312 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311, %cst_72, %cst_71, %cst_74, %cst_73 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%311 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %313 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %314 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%313, %cst_70 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %315 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_67, %cst_66, %cst_69, %cst_68 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%314 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %316 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %307 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %318 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%317, %cst_65 : tensor<1x1024x14x14xf32>, tensor<512x1024x1x1xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %319 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%318, %cst_62, %cst_61, %cst_64, %cst_63 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%318 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %320 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %padded_554 = tensor.pad %320 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x14x14xf32> to tensor<1x512x16x16xf32>
    %321 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_554, %cst_60 : tensor<1x512x16x16xf32>, tensor<512x512x3x3xf32>) outs(%96 : tensor<1x512x14x14xf32>) -> tensor<1x512x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %322 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %cst_57, %cst_56, %cst_59, %cst_58 : tensor<1x512x14x14xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%321 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x512x14x14xf32>
    %323 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1x512x14x14xf32>) outs(%95 : tensor<1x512x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x512x14x14xf32>
    %324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%323, %cst_55 : tensor<1x512x14x14xf32>, tensor<1024x512x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324, %cst_52, %cst_51, %cst_54, %cst_53 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%324 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %326 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %317 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1024x14x14xf32>
    %327 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%327, %cst_50 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%101 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %cst_47, %cst_46, %cst_49, %cst_48 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%328 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x1024x14x14xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_555 = tensor.pad %330 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %331 = tensor.empty() : tensor<1x1024x7x7xf32>
    %332 = linalg.fill ins(%cst_520 : f32) outs(%331 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_555, %cst_45 : tensor<1x1024x16x16xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_42, %cst_41, %cst_44, %cst_43 : tensor<1x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%333 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x7x7xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x1024x7x7xf32>) outs(%331 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x7x7xf32>
    %336 = tensor.empty() : tensor<1x2048x7x7xf32>
    %337 = linalg.fill ins(%cst_520 : f32) outs(%336 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_40 : tensor<1x1024x7x7xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_37, %cst_36, %cst_39, %cst_38 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%338 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x2048x7x7xf32>
    %340 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%327, %cst_35 : tensor<1x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_32, %cst_31, %cst_34, %cst_33 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%340 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x2048x7x7xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339, %341 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x2048x7x7xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342 : tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x2048x7x7xf32>
    %344 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %cst_30 : tensor<1x2048x7x7xf32>, tensor<1024x2048x1x1xf32>) outs(%332 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %345 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_27, %cst_26, %cst_29, %cst_28 : tensor<1x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%344 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x7x7xf32>
    %346 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x1024x7x7xf32>) outs(%331 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x7x7xf32>
    %padded_556 = tensor.pad %346 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x7x7xf32> to tensor<1x1024x9x9xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_556, %cst_25 : tensor<1x1024x9x9xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %348 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347, %cst_22, %cst_21, %cst_24, %cst_23 : tensor<1x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%347 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x7x7xf32>
    %349 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348 : tensor<1x1024x7x7xf32>) outs(%331 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x7x7xf32>
    %350 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_20 : tensor<1x1024x7x7xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %351 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350, %cst_17, %cst_16, %cst_19, %cst_18 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%350 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x2048x7x7xf32>
    %352 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351, %343 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x2048x7x7xf32>
    %353 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x2048x7x7xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %cst_15 : tensor<1x2048x7x7xf32>, tensor<1024x2048x1x1xf32>) outs(%332 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_12, %cst_11, %cst_14, %cst_13 : tensor<1x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%354 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x7x7xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355 : tensor<1x1024x7x7xf32>) outs(%331 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x7x7xf32>
    %padded_557 = tensor.pad %356 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x7x7xf32> to tensor<1x1024x9x9xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_557, %cst_10 : tensor<1x1024x9x9xf32>, tensor<1024x1024x3x3xf32>) outs(%332 : tensor<1x1024x7x7xf32>) -> tensor<1x1024x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x1024x7x7xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%357 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x1024x7x7xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x1024x7x7xf32>) outs(%331 : tensor<1x1024x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x1024x7x7xf32>
    %360 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%359, %cst_5 : tensor<1x1024x7x7xf32>, tensor<2048x1024x1x1xf32>) outs(%337 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %361 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%360 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %in_559: f32, %in_560: f32, %in_561: f32, %out: f32):
      %375 = arith.truncf %cst_522 : f64 to f32
      %376 = arith.addf %in_561, %375 : f32
      %377 = math.rsqrt %376 : f32
      %378 = arith.subf %in, %in_560 : f32
      %379 = arith.mulf %378, %377 : f32
      %380 = arith.mulf %379, %in_558 : f32
      %381 = arith.addf %380, %in_559 : f32
      linalg.yield %381 : f32
    } -> tensor<1x2048x7x7xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %353 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x2048x7x7xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x2048x7x7xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.cmpf ugt, %in, %cst_520 : f32
      %376 = arith.select %375, %in, %cst_520 : f32
      linalg.yield %376 : f32
    } -> tensor<1x2048x7x7xf32>
    %364 = tensor.empty() : tensor<1x2048x1x1xf32>
    %365 = linalg.fill ins(%cst_520 : f32) outs(%364 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %366 = tensor.empty() : tensor<7x7xf32>
    %367 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%363, %366 : tensor<1x2048x7x7xf32>, tensor<7x7xf32>) outs(%365 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %368 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%367 : tensor<1x2048x1x1xf32>) outs(%364 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %375 = arith.divf %in, %cst_523 : f32
      linalg.yield %375 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed = tensor.collapse_shape %368 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %369 = tensor.empty() : tensor<2048x1000xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x2048xf32>) outs(%369 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %371 = tensor.empty() : tensor<1x1000xf32>
    %372 = linalg.fill ins(%cst_520 : f32) outs(%371 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %373 = linalg.matmul ins(%collapsed, %370 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%372 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %374 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%373, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%371 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_558: f32, %out: f32):
      %375 = arith.addf %in, %in_558 : f32
      linalg.yield %375 : f32
    } -> tensor<1x1000xf32>
    return %374 : tensor<1x1000xf32>
  }
}
