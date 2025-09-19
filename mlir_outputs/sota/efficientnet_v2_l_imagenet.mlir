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
  func.func @forward(%arg0: tensor<1x3x480x480xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x1280xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<1280xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<1280x640x1x1xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<640x3840x1x1xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<3840x160x1x1xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<160x3840x1x1xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<3840x1x3x3xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<3840xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<3840x640x1x1xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<640xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<640x2304x1x1xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_515 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_516 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_517 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_518 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_519 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_520 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_521 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_522 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_523 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_524 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_525 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_526 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_527 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_528 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_529 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_530 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_531 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_532 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_533 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_534 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_535 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_536 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_537 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_538 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_539 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_540 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_541 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_542 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_543 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_544 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_545 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_546 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_547 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_548 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_549 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_550 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_551 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_552 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_553 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_554 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_555 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_556 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_557 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_558 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_559 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_560 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_561 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_562 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_563 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_564 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_565 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_566 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_567 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_568 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_569 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_570 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_571 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_572 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_573 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_574 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_575 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_576 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_577 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_578 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_579 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_580 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_581 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_582 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_583 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_584 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_585 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_586 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_587 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_588 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_589 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_590 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_591 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_592 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_593 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_594 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_595 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_596 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_597 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_598 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_599 = arith.constant dense_resource<__elided__> : tensor<384x1344x1x1xf32>
    %cst_600 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_601 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_602 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_603 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_604 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_605 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_606 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_607 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_608 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_609 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_610 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_611 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_612 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_613 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_614 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_615 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_616 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_617 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_618 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_619 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_620 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_621 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_622 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_623 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_624 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_625 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_626 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_627 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_628 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_629 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_630 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_631 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_632 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_633 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_634 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_635 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_636 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_637 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_638 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_639 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_640 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_641 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_642 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_643 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_644 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_645 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_646 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_647 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_648 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_649 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_650 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_651 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_652 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_653 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_654 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_655 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_656 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_657 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_658 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_659 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_660 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_661 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_662 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_663 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_664 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_665 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_666 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_667 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_668 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_669 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_670 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_671 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_672 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_673 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_674 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_675 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_676 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_677 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_678 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_679 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_680 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_681 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_682 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_683 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_684 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_685 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_686 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_687 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_688 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_689 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_690 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_691 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_692 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_693 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_694 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_695 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_696 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_697 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_698 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_699 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_700 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_701 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_702 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_703 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_704 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_705 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_706 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_707 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_708 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_709 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_710 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_711 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_712 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_713 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_714 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_715 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_716 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_717 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_718 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_719 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_720 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_721 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_722 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_723 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_724 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_725 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_726 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_727 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_728 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_729 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_730 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_731 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_732 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_733 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_734 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_735 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_736 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_737 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_738 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_739 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_740 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_741 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_742 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_743 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_744 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_745 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_746 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_747 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_748 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_749 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_750 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_751 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_752 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_753 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_754 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_755 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_756 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_757 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_758 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_759 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_760 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_761 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_762 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_763 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_764 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_765 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_766 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_767 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_768 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_769 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_770 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_771 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_772 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_773 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_774 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_775 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_776 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_777 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_778 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_779 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_780 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_781 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_782 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_783 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_784 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_785 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_786 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_787 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_788 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_789 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_790 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_791 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_792 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_793 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_794 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_795 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_796 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_797 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_798 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_799 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_800 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_801 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_802 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_803 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_804 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_805 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_806 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_807 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_808 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_809 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_810 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_811 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_812 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_813 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_814 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_815 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_816 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_817 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_818 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_819 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_820 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_821 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_822 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_823 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_824 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_825 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_826 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_827 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_828 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_829 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_830 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_831 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_832 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_833 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_834 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_835 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_836 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_837 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_838 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_839 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_840 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_841 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_842 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_843 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_844 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_845 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_846 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_847 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_848 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_849 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_850 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_851 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_852 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_853 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_854 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_855 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_856 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_857 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_858 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_859 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_860 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_861 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_862 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_863 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_864 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_865 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_866 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_867 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_868 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_869 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_870 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_871 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_872 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_873 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_874 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_875 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_876 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_877 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_878 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_879 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_880 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_881 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_882 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_883 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_884 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_885 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_886 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_887 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_888 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_889 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_890 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_891 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_892 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_893 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_894 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_895 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_896 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_897 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_898 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_899 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_900 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_901 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_902 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_903 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_904 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_905 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_906 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_907 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_908 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_909 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_910 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_911 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_912 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_913 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_914 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_915 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_916 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_917 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_918 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_919 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_920 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_921 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_922 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_923 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_924 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_925 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_926 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_927 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_928 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_929 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_930 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_931 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_932 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_933 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_934 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_935 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_936 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_937 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_938 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_939 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_940 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_941 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_942 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_943 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_944 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_945 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_946 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_947 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_948 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_949 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_950 = arith.constant dense_resource<__elided__> : tensor<1344x1x3x3xf32>
    %cst_951 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_952 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_953 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_954 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_955 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_956 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_957 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_958 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_959 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_960 = arith.constant dense_resource<__elided__> : tensor<224x1152x1x1xf32>
    %cst_961 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_962 = arith.constant dense_resource<__elided__> : tensor<1152x48x1x1xf32>
    %cst_963 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_964 = arith.constant dense_resource<__elided__> : tensor<48x1152x1x1xf32>
    %cst_965 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_966 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_967 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_968 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_969 = arith.constant dense_resource<__elided__> : tensor<1152x1x3x3xf32>
    %cst_970 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_971 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_972 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_973 = arith.constant dense_resource<__elided__> : tensor<1152xf32>
    %cst_974 = arith.constant dense_resource<__elided__> : tensor<1152x192x1x1xf32>
    %cst_975 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_976 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_977 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_978 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_979 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_980 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_981 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_982 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_983 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_984 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_985 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_986 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_987 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_988 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_989 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_990 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_991 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_992 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_993 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_994 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_995 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_996 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_997 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_998 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_999 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1000 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1001 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1002 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1003 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1004 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1005 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1006 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1007 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1008 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1009 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1010 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1011 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1012 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1013 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1014 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1015 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1016 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1017 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1018 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1019 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1020 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1021 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1022 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1023 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1024 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1025 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1026 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1027 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1028 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1029 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1030 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1031 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1032 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1033 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1034 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1035 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1036 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1037 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1038 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1039 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1040 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1041 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1042 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1043 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1044 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1045 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1046 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1047 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1048 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1049 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1050 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1051 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1052 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1053 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1054 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1055 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1056 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1057 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1058 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1059 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1060 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1061 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1062 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1063 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1064 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1065 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1066 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1067 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1068 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1069 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1070 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1071 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1072 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1073 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1074 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1075 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1076 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1077 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1078 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1079 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1080 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1081 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1082 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1083 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1084 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1085 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1086 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1087 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1088 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1089 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1090 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1091 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1092 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1093 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1094 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1095 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1096 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1097 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1098 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1099 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1100 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1101 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1102 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1103 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1104 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1105 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1106 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1107 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1108 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1109 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1110 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1111 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1112 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1113 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1114 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1115 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1116 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1117 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1118 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1119 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1120 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1121 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1122 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1123 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1124 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1125 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1126 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1127 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1128 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1129 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1130 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1131 = arith.constant dense_resource<__elided__> : tensor<192x768x1x1xf32>
    %cst_1132 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1133 = arith.constant dense_resource<__elided__> : tensor<768x48x1x1xf32>
    %cst_1134 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_1135 = arith.constant dense_resource<__elided__> : tensor<48x768x1x1xf32>
    %cst_1136 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1137 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1138 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1139 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1140 = arith.constant dense_resource<__elided__> : tensor<768x1x3x3xf32>
    %cst_1141 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1142 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1143 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1144 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_1145 = arith.constant dense_resource<__elided__> : tensor<768x192x1x1xf32>
    %cst_1146 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1147 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1148 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1149 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_1150 = arith.constant dense_resource<__elided__> : tensor<192x384x1x1xf32>
    %cst_1151 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1152 = arith.constant dense_resource<__elided__> : tensor<384x24x1x1xf32>
    %cst_1153 = arith.constant dense_resource<__elided__> : tensor<24xf32>
    %cst_1154 = arith.constant dense_resource<__elided__> : tensor<24x384x1x1xf32>
    %cst_1155 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1156 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1157 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1158 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1159 = arith.constant dense_resource<__elided__> : tensor<384x1x3x3xf32>
    %cst_1160 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1161 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1162 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1163 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1164 = arith.constant dense_resource<__elided__> : tensor<384x96x1x1xf32>
    %cst_1165 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1166 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1167 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1168 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1169 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1170 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1171 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1172 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1173 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1174 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1175 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1176 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1177 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1178 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1179 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1180 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1181 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1182 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1183 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1184 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1185 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1186 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1187 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1188 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1189 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1190 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1191 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1192 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1193 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1194 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1195 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1196 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1197 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1198 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1199 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1200 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1201 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1202 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1203 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1204 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1205 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1206 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1207 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1208 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1209 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1210 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1211 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1212 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1213 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1214 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1215 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1216 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1217 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1218 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1219 = arith.constant dense_resource<__elided__> : tensor<96x384x1x1xf32>
    %cst_1220 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1221 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1222 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1223 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_1224 = arith.constant dense_resource<__elided__> : tensor<384x96x3x3xf32>
    %cst_1225 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1226 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1227 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1228 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_1229 = arith.constant dense_resource<__elided__> : tensor<96x256x1x1xf32>
    %cst_1230 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1231 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1232 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1233 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1234 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1235 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1236 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1237 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1238 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1239 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1240 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1241 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1242 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1243 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1244 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1245 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1246 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1247 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1248 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1249 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1250 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1251 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1252 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1253 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1254 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1255 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1256 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1257 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1258 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1259 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1260 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1261 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1262 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1263 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1264 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1265 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1266 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1267 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1268 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1269 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1270 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1271 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1272 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1273 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1274 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1275 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1276 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1277 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1278 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1279 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1280 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1281 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1282 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1283 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1284 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1285 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1286 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1287 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1288 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1289 = arith.constant dense_resource<__elided__> : tensor<64x256x1x1xf32>
    %cst_1290 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1291 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1292 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1293 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_1294 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_1295 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1296 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1297 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1298 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1299 = arith.constant dense_resource<__elided__> : tensor<64x128x1x1xf32>
    %cst_1300 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_1301 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_1302 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_1303 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_1304 = arith.constant dense_resource<__elided__> : tensor<128x32x3x3xf32>
    %cst_1305 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1306 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1307 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1308 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1309 = arith.constant dense_resource<__elided__> : tensor<32x32x3x3xf32>
    %cst_1310 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1311 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1312 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1313 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1314 = arith.constant dense_resource<__elided__> : tensor<32x32x3x3xf32>
    %cst_1315 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1316 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1317 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1318 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1319 = arith.constant dense_resource<__elided__> : tensor<32x32x3x3xf32>
    %cst_1320 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1321 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1322 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1323 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1324 = arith.constant dense_resource<__elided__> : tensor<32x32x3x3xf32>
    %cst_1325 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1326 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1327 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1328 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1329 = arith.constant dense_resource<__elided__> : tensor<32x3x3x3xf32>
    %false = arith.constant false
    %cst_1330 = arith.constant 0.000000e+00 : f32
    %cst_1331 = arith.constant 1.000000e+00 : f32
    %cst_1332 = arith.constant 1.000000e-03 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_1333 = arith.constant 9.000000e+02 : f32
    %cst_1334 = arith.constant 2.250000e+02 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3x480x480xf32> to tensor<1x3x482x482xf32>
    %0 = tensor.empty() : tensor<1x32x240x240xf32>
    %1 = linalg.fill ins(%cst_1330 : f32) outs(%0 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_1329 : tensor<1x3x482x482xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_1326, %cst_1325, %cst_1328, %cst_1327 : tensor<1x32x240x240xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%2 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x32x240x240xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x32x240x240xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %padded_1335 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x32x240x240xf32> to tensor<1x32x242x242xf32>
    %7 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1335, %cst_1324 : tensor<1x32x242x242xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_1321, %cst_1320, %cst_1323, %cst_1322 : tensor<1x32x240x240xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%7 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x32x240x240xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x32x240x240xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %6 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %padded_1336 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x32x240x240xf32> to tensor<1x32x242x242xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1336, %cst_1319 : tensor<1x32x242x242xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_1316, %cst_1315, %cst_1318, %cst_1317 : tensor<1x32x240x240xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%12 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x32x240x240xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x32x240x240xf32>
    %15 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %13 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %11 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %padded_1337 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x32x240x240xf32> to tensor<1x32x242x242xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1337, %cst_1314 : tensor<1x32x242x242xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    cf.assert %3, "training is not supported for now"
    %18 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_1311, %cst_1310, %cst_1313, %cst_1312 : tensor<1x32x240x240xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%17 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x32x240x240xf32>
    %19 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x32x240x240xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %16 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %padded_1338 = tensor.pad %21 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x32x240x240xf32> to tensor<1x32x242x242xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1338, %cst_1309 : tensor<1x32x242x242xf32>, tensor<32x32x3x3xf32>) outs(%1 : tensor<1x32x240x240xf32>) -> tensor<1x32x240x240xf32>
    cf.assert %3, "training is not supported for now"
    %23 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %cst_1306, %cst_1305, %cst_1308, %cst_1307 : tensor<1x32x240x240xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%22 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x32x240x240xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x32x240x240xf32>
    %25 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %23 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %21 : tensor<1x32x240x240xf32>, tensor<1x32x240x240xf32>) outs(%0 : tensor<1x32x240x240xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x32x240x240xf32>
    %padded_1339 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x32x240x240xf32> to tensor<1x32x242x242xf32>
    %27 = tensor.empty() : tensor<1x128x120x120xf32>
    %28 = linalg.fill ins(%cst_1330 : f32) outs(%27 : tensor<1x128x120x120xf32>) -> tensor<1x128x120x120xf32>
    %29 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1339, %cst_1304 : tensor<1x32x242x242xf32>, tensor<128x32x3x3xf32>) outs(%28 : tensor<1x128x120x120xf32>) -> tensor<1x128x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_1301, %cst_1300, %cst_1303, %cst_1302 : tensor<1x128x120x120xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%29 : tensor<1x128x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x128x120x120xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x128x120x120xf32>) outs(%27 : tensor<1x128x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x128x120x120xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x128x120x120xf32>, tensor<1x128x120x120xf32>) outs(%27 : tensor<1x128x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x128x120x120xf32>
    %33 = tensor.empty() : tensor<1x64x120x120xf32>
    %34 = linalg.fill ins(%cst_1330 : f32) outs(%33 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %cst_1299 : tensor<1x128x120x120xf32>, tensor<64x128x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %36 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_1296, %cst_1295, %cst_1298, %cst_1297 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%35 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1340 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %37 = tensor.empty() : tensor<1x256x120x120xf32>
    %38 = linalg.fill ins(%cst_1330 : f32) outs(%37 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1340, %cst_1294 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_1291, %cst_1290, %cst_1293, %cst_1292 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%39 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %40 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%42, %cst_1289 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %44 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %cst_1286, %cst_1285, %cst_1288, %cst_1287 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%43 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %45 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %36 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1341 = tensor.pad %45 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1341, %cst_1284 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_1281, %cst_1280, %cst_1283, %cst_1282 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%46 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %49 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %47 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%49, %cst_1279 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_1276, %cst_1275, %cst_1278, %cst_1277 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%50 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %45 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1342 = tensor.pad %52 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %53 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1342, %cst_1274 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %54 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53, %cst_1271, %cst_1270, %cst_1273, %cst_1272 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%53 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %54 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%56, %cst_1269 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_1266, %cst_1265, %cst_1268, %cst_1267 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%57 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %52 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1343 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1343, %cst_1264 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_1261, %cst_1260, %cst_1263, %cst_1262 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%60 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %61 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %64 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_1259 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %65 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %cst_1256, %cst_1255, %cst_1258, %cst_1257 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%64 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65, %59 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1344 = tensor.pad %66 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1344, %cst_1254 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %68 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %cst_1251, %cst_1250, %cst_1253, %cst_1252 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%67 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %68 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%70, %cst_1249 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_1246, %cst_1245, %cst_1248, %cst_1247 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%71 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %66 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1345 = tensor.pad %73 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %74 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1345, %cst_1244 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%38 : tensor<1x256x120x120xf32>) -> tensor<1x256x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %75 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_1241, %cst_1240, %cst_1243, %cst_1242 : tensor<1x256x120x120xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%74 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x120x120xf32>
    %76 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x120x120xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %75 : tensor<1x256x120x120xf32>, tensor<1x256x120x120xf32>) outs(%37 : tensor<1x256x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x120x120xf32>
    %78 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%77, %cst_1239 : tensor<1x256x120x120xf32>, tensor<64x256x1x1xf32>) outs(%34 : tensor<1x64x120x120xf32>) -> tensor<1x64x120x120xf32>
    cf.assert %3, "training is not supported for now"
    %79 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %cst_1236, %cst_1235, %cst_1238, %cst_1237 : tensor<1x64x120x120xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%78 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x64x120x120xf32>
    %80 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%79, %73 : tensor<1x64x120x120xf32>, tensor<1x64x120x120xf32>) outs(%33 : tensor<1x64x120x120xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x64x120x120xf32>
    %padded_1346 = tensor.pad %80 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x64x120x120xf32> to tensor<1x64x122x122xf32>
    %81 = tensor.empty() : tensor<1x256x60x60xf32>
    %82 = linalg.fill ins(%cst_1330 : f32) outs(%81 : tensor<1x256x60x60xf32>) -> tensor<1x256x60x60xf32>
    %83 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1346, %cst_1234 : tensor<1x64x122x122xf32>, tensor<256x64x3x3xf32>) outs(%82 : tensor<1x256x60x60xf32>) -> tensor<1x256x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %cst_1231, %cst_1230, %cst_1233, %cst_1232 : tensor<1x256x60x60xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%83 : tensor<1x256x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x256x60x60xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x60x60xf32>) outs(%81 : tensor<1x256x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x256x60x60xf32>
    %86 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %84 : tensor<1x256x60x60xf32>, tensor<1x256x60x60xf32>) outs(%81 : tensor<1x256x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x256x60x60xf32>
    %87 = tensor.empty() : tensor<1x96x60x60xf32>
    %88 = linalg.fill ins(%cst_1330 : f32) outs(%87 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%86, %cst_1229 : tensor<1x256x60x60xf32>, tensor<96x256x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_1226, %cst_1225, %cst_1228, %cst_1227 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%89 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1347 = tensor.pad %90 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %91 = tensor.empty() : tensor<1x384x60x60xf32>
    %92 = linalg.fill ins(%cst_1330 : f32) outs(%91 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    %93 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1347, %cst_1224 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %94 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %cst_1221, %cst_1220, %cst_1223, %cst_1222 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%93 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %95 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %96 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %94 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%96, %cst_1219 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_1216, %cst_1215, %cst_1218, %cst_1217 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%97 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98, %90 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1348 = tensor.pad %99 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1348, %cst_1214 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_1211, %cst_1210, %cst_1213, %cst_1212 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%100 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %102 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %103 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %101 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %104 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_1209 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %105 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_1206, %cst_1205, %cst_1208, %cst_1207 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%104 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %106 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105, %99 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1349 = tensor.pad %106 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %107 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1349, %cst_1204 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %108 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107, %cst_1201, %cst_1200, %cst_1203, %cst_1202 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%107 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %109 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %108 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%110, %cst_1199 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111, %cst_1196, %cst_1195, %cst_1198, %cst_1197 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%111 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %113 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %106 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1350 = tensor.pad %113 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1350, %cst_1194 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_1191, %cst_1190, %cst_1193, %cst_1192 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%114 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %115 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %118 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%117, %cst_1189 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_1186, %cst_1185, %cst_1188, %cst_1187 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%118 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119, %113 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1351 = tensor.pad %120 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %121 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1351, %cst_1184 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %122 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121, %cst_1181, %cst_1180, %cst_1183, %cst_1182 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%121 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %123 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %122 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %125 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%124, %cst_1179 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %126 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%125, %cst_1176, %cst_1175, %cst_1178, %cst_1177 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%125 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %127 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %120 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %padded_1352 = tensor.pad %127 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x96x60x60xf32> to tensor<1x96x62x62xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1352, %cst_1174 : tensor<1x96x62x62xf32>, tensor<384x96x3x3xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %129 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128, %cst_1171, %cst_1170, %cst_1173, %cst_1172 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%128 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %130 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %129 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %cst_1169 : tensor<1x384x60x60xf32>, tensor<96x384x1x1xf32>) outs(%88 : tensor<1x96x60x60xf32>) -> tensor<1x96x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %133 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_1166, %cst_1165, %cst_1168, %cst_1167 : tensor<1x96x60x60xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>, tensor<96xf32>) outs(%132 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x96x60x60xf32>
    %134 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %127 : tensor<1x96x60x60xf32>, tensor<1x96x60x60xf32>) outs(%87 : tensor<1x96x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x60x60xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_1164 : tensor<1x96x60x60xf32>, tensor<384x96x1x1xf32>) outs(%92 : tensor<1x384x60x60xf32>) -> tensor<1x384x60x60xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_1161, %cst_1160, %cst_1163, %cst_1162 : tensor<1x384x60x60xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%135 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x60x60xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136 : tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x60x60xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137, %136 : tensor<1x384x60x60xf32>, tensor<1x384x60x60xf32>) outs(%91 : tensor<1x384x60x60xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x60x60xf32>
    %padded_1353 = tensor.pad %138 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x384x60x60xf32> to tensor<1x384x62x62xf32>
    %139 = tensor.empty() : tensor<1x384x30x30xf32>
    %140 = linalg.fill ins(%cst_1330 : f32) outs(%139 : tensor<1x384x30x30xf32>) -> tensor<1x384x30x30xf32>
    %collapsed = tensor.collapse_shape %cst_1159 [[0, 1], [2], [3]] : tensor<384x1x3x3xf32> into tensor<384x3x3xf32>
    %141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1353, %collapsed : tensor<1x384x62x62xf32>, tensor<384x3x3xf32>) outs(%140 : tensor<1x384x30x30xf32>) -> tensor<1x384x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %142 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %cst_1156, %cst_1155, %cst_1158, %cst_1157 : tensor<1x384x30x30xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%141 : tensor<1x384x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x30x30xf32>
    %143 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142 : tensor<1x384x30x30xf32>) outs(%139 : tensor<1x384x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x30x30xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %142 : tensor<1x384x30x30xf32>, tensor<1x384x30x30xf32>) outs(%139 : tensor<1x384x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x30x30xf32>
    %145 = tensor.empty() : tensor<1x384x1x1xf32>
    %146 = linalg.fill ins(%cst_1330 : f32) outs(%145 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %147 = tensor.empty() : tensor<30x30xf32>
    %148 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%144, %147 : tensor<1x384x30x30xf32>, tensor<30x30xf32>) outs(%146 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %149 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%148 : tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x1x1xf32>
    %150 = tensor.empty() : tensor<1x24x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1153 : tensor<24xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x24x1x1xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%149, %cst_1154 : tensor<1x384x1x1xf32>, tensor<24x384x1x1xf32>) outs(%151 : tensor<1x24x1x1xf32>) -> tensor<1x24x1x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x24x1x1xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x24x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %152 : tensor<1x24x1x1xf32>, tensor<1x24x1x1xf32>) outs(%150 : tensor<1x24x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x24x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1151 : tensor<384xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x1x1xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%154, %cst_1152 : tensor<1x24x1x1xf32>, tensor<384x24x1x1xf32>) outs(%155 : tensor<1x384x1x1xf32>) -> tensor<1x384x1x1xf32>
    %157 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x384x1x1xf32>) outs(%145 : tensor<1x384x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x384x1x1xf32>
    %158 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %144 : tensor<1x384x1x1xf32>, tensor<1x384x30x30xf32>) outs(%139 : tensor<1x384x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x30x30xf32>
    %159 = tensor.empty() : tensor<1x192x30x30xf32>
    %160 = linalg.fill ins(%cst_1330 : f32) outs(%159 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    %161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_1150 : tensor<1x384x30x30xf32>, tensor<192x384x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %cst_1147, %cst_1146, %cst_1149, %cst_1148 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%161 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %163 = tensor.empty() : tensor<1x768x30x30xf32>
    %164 = linalg.fill ins(%cst_1330 : f32) outs(%163 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    %165 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%162, %cst_1145 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %166 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %cst_1142, %cst_1141, %cst_1144, %cst_1143 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%165 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %167 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167, %166 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1354 = tensor.pad %168 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1355 = tensor.collapse_shape %cst_1140 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %169 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1354, %collapsed_1355 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169, %cst_1137, %cst_1136, %cst_1139, %cst_1138 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%169 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %172 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %170 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %173 = tensor.empty() : tensor<1x768x1x1xf32>
    %174 = linalg.fill ins(%cst_1330 : f32) outs(%173 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %175 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%172, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %177 = tensor.empty() : tensor<1x48x1x1xf32>
    %178 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1134 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_1135 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%178 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %180 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%179 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %181 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %179 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1132 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %183 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %cst_1133 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%182 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %184 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %172 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%185, %cst_1131 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %187 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_1128, %cst_1127, %cst_1130, %cst_1129 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%186 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187, %162 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%188, %cst_1126 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189, %cst_1123, %cst_1122, %cst_1125, %cst_1124 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%189 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %192 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %190 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1356 = tensor.pad %192 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1357 = tensor.collapse_shape %cst_1121 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %193 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1356, %collapsed_1357 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %194 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_1118, %cst_1117, %cst_1120, %cst_1119 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%193 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %196 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %194 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %197 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%196, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %198 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %199 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1115 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%198, %cst_1116 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%199 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %201 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %202 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %200 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %203 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1113 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %204 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%202, %cst_1114 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%203 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %205 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %206 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %196 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %207 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%206, %cst_1112 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %208 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %cst_1109, %cst_1108, %cst_1111, %cst_1110 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%207 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %209 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %188 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%209, %cst_1107 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %211 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210, %cst_1104, %cst_1103, %cst_1106, %cst_1105 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%210 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %212 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %213 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %211 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1358 = tensor.pad %213 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1359 = tensor.collapse_shape %cst_1102 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %214 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1358, %collapsed_1359 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %215 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214, %cst_1099, %cst_1098, %cst_1101, %cst_1100 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%214 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %216 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%215 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %217 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %215 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %218 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%217, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %219 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %220 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1096 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %221 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%219, %cst_1097 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%220 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %223 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %221 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %224 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1094 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %225 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%223, %cst_1095 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%224 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %226 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %227 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %217 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %228 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%227, %cst_1093 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %229 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %cst_1090, %cst_1089, %cst_1092, %cst_1091 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%228 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %230 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%229, %209 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%230, %cst_1088 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %232 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231, %cst_1085, %cst_1084, %cst_1087, %cst_1086 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%231 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %233 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %234 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %232 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1360 = tensor.pad %234 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1361 = tensor.collapse_shape %cst_1083 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %235 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1360, %collapsed_1361 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %236 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%235, %cst_1080, %cst_1079, %cst_1082, %cst_1081 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%235 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %237 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237, %236 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %239 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%238, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %240 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1077 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %242 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%240, %cst_1078 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%241 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %244 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %242 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %245 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1075 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %246 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%244, %cst_1076 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%245 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %247 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %248 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247, %238 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %249 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%248, %cst_1074 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_1071, %cst_1070, %cst_1073, %cst_1072 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%249 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250, %230 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %cst_1069 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_1066, %cst_1065, %cst_1068, %cst_1067 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%252 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %254 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254, %253 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1362 = tensor.pad %255 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1363 = tensor.collapse_shape %cst_1064 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %256 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1362, %collapsed_1363 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %257 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %cst_1061, %cst_1060, %cst_1063, %cst_1062 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%256 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %258 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %259 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %257 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %260 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%259, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %261 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1058 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %263 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%261, %cst_1059 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%262 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %264 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %265 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264, %263 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %266 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1056 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %267 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%265, %cst_1057 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%266 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %268 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %269 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%268, %259 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%269, %cst_1055 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_1052, %cst_1051, %cst_1054, %cst_1053 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%270 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271, %251 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %273 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%272, %cst_1050 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %274 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %cst_1047, %cst_1046, %cst_1049, %cst_1048 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%273 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %274 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1364 = tensor.pad %276 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1365 = tensor.collapse_shape %cst_1045 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %277 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1364, %collapsed_1365 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %278 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277, %cst_1042, %cst_1041, %cst_1044, %cst_1043 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%277 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %279 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %280 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%279, %278 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %281 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%280, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %282 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%281 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1039 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%282, %cst_1040 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%283 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %284 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1037 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_1038 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%287 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %280 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_1036 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_1033, %cst_1032, %cst_1035, %cst_1034 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%291 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %272 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_1031 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_1028, %cst_1027, %cst_1030, %cst_1029 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%294 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %295 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1366 = tensor.pad %297 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1367 = tensor.collapse_shape %cst_1026 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %298 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1366, %collapsed_1367 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_1023, %cst_1022, %cst_1025, %cst_1024 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%298 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %299 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %302 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1020 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %305 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_1021 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%304 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %305 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1018 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %cst_1019 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%308 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %301 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_1017 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_1014, %cst_1013, %cst_1016, %cst_1015 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%312 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %293 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_1012 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_1009, %cst_1008, %cst_1011, %cst_1010 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%315 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %316 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1368 = tensor.pad %318 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1369 = tensor.collapse_shape %cst_1007 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %319 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1368, %collapsed_1369 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_1004, %cst_1003, %cst_1006, %cst_1005 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%319 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %323 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1001 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %326 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_1002 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%325 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_999 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %cst_1000 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%329 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %322 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%332, %cst_998 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_995, %cst_994, %cst_997, %cst_996 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%333 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %314 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %336 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_993 : tensor<1x192x30x30xf32>, tensor<768x192x1x1xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %337 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_990, %cst_989, %cst_992, %cst_991 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%336 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %338 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %337 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %padded_1370 = tensor.pad %339 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x768x30x30xf32> to tensor<1x768x32x32xf32>
    %collapsed_1371 = tensor.collapse_shape %cst_988 [[0, 1], [2], [3]] : tensor<768x1x3x3xf32> into tensor<768x3x3xf32>
    %340 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1370, %collapsed_1371 : tensor<1x768x32x32xf32>, tensor<768x3x3xf32>) outs(%164 : tensor<1x768x30x30xf32>) -> tensor<1x768x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_985, %cst_984, %cst_987, %cst_986 : tensor<1x768x30x30xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>) outs(%340 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x768x30x30xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x30x30xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x768x30x30xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %344 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %147 : tensor<1x768x30x30xf32>, tensor<30x30xf32>) outs(%174 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_982 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %cst_983 : tensor<1x768x1x1xf32>, tensor<48x768x1x1xf32>) outs(%346 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %347 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_980 : tensor<768xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %351 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_981 : tensor<1x48x1x1xf32>, tensor<768x48x1x1xf32>) outs(%350 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x768x1x1xf32>) outs(%173 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x768x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %343 : tensor<1x768x1x1xf32>, tensor<1x768x30x30xf32>) outs(%163 : tensor<1x768x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x768x30x30xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %cst_979 : tensor<1x768x30x30xf32>, tensor<192x768x1x1xf32>) outs(%160 : tensor<1x192x30x30xf32>) -> tensor<1x192x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_976, %cst_975, %cst_978, %cst_977 : tensor<1x192x30x30xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%354 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x192x30x30xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %335 : tensor<1x192x30x30xf32>, tensor<1x192x30x30xf32>) outs(%159 : tensor<1x192x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x192x30x30xf32>
    %357 = tensor.empty() : tensor<1x1152x30x30xf32>
    %358 = linalg.fill ins(%cst_1330 : f32) outs(%357 : tensor<1x1152x30x30xf32>) -> tensor<1x1152x30x30xf32>
    %359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_974 : tensor<1x192x30x30xf32>, tensor<1152x192x1x1xf32>) outs(%358 : tensor<1x1152x30x30xf32>) -> tensor<1x1152x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %360 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %cst_971, %cst_970, %cst_973, %cst_972 : tensor<1x1152x30x30xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%359 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1152x30x30xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x1152x30x30xf32>) outs(%357 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1152x30x30xf32>
    %362 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %360 : tensor<1x1152x30x30xf32>, tensor<1x1152x30x30xf32>) outs(%357 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1152x30x30xf32>
    %padded_1372 = tensor.pad %362 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1152x30x30xf32> to tensor<1x1152x32x32xf32>
    %collapsed_1373 = tensor.collapse_shape %cst_969 [[0, 1], [2], [3]] : tensor<1152x1x3x3xf32> into tensor<1152x3x3xf32>
    %363 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1372, %collapsed_1373 : tensor<1x1152x32x32xf32>, tensor<1152x3x3xf32>) outs(%358 : tensor<1x1152x30x30xf32>) -> tensor<1x1152x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %364 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %cst_966, %cst_965, %cst_968, %cst_967 : tensor<1x1152x30x30xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>, tensor<1152xf32>) outs(%363 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1152x30x30xf32>
    %365 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x1152x30x30xf32>) outs(%357 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1152x30x30xf32>
    %366 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365, %364 : tensor<1x1152x30x30xf32>, tensor<1x1152x30x30xf32>) outs(%357 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1152x30x30xf32>
    %367 = tensor.empty() : tensor<1x1152x1x1xf32>
    %368 = linalg.fill ins(%cst_1330 : f32) outs(%367 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %369 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %147 : tensor<1x1152x30x30xf32>, tensor<30x30xf32>) outs(%368 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x1152x1x1xf32>) outs(%367 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1152x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_963 : tensor<48xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_964 : tensor<1x1152x1x1xf32>, tensor<48x1152x1x1xf32>) outs(%371 : tensor<1x48x1x1xf32>) -> tensor<1x48x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x48x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %372 : tensor<1x48x1x1xf32>, tensor<1x48x1x1xf32>) outs(%177 : tensor<1x48x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x48x1x1xf32>
    %375 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_961 : tensor<1152xf32>) outs(%367 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1152x1x1xf32>
    %376 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_962 : tensor<1x48x1x1xf32>, tensor<1152x48x1x1xf32>) outs(%375 : tensor<1x1152x1x1xf32>) -> tensor<1x1152x1x1xf32>
    %377 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<1x1152x1x1xf32>) outs(%367 : tensor<1x1152x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1152x1x1xf32>
    %378 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%377, %366 : tensor<1x1152x1x1xf32>, tensor<1x1152x30x30xf32>) outs(%357 : tensor<1x1152x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1152x30x30xf32>
    %379 = tensor.empty() : tensor<1x224x30x30xf32>
    %380 = linalg.fill ins(%cst_1330 : f32) outs(%379 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    %381 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%378, %cst_960 : tensor<1x1152x30x30xf32>, tensor<224x1152x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %382 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381, %cst_957, %cst_956, %cst_959, %cst_958 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%381 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %383 = tensor.empty() : tensor<1x1344x30x30xf32>
    %384 = linalg.fill ins(%cst_1330 : f32) outs(%383 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    %385 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%382, %cst_955 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %386 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%385, %cst_952, %cst_951, %cst_954, %cst_953 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%385 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %387 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %388 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %386 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1374 = tensor.pad %388 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1375 = tensor.collapse_shape %cst_950 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %389 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1374, %collapsed_1375 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %390 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389, %cst_947, %cst_946, %cst_949, %cst_948 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%389 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %391 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %392 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391, %390 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %393 = tensor.empty() : tensor<1x1344x1x1xf32>
    %394 = linalg.fill ins(%cst_1330 : f32) outs(%393 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %395 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%392, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %396 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %397 = tensor.empty() : tensor<1x56x1x1xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_944 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %399 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%396, %cst_945 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%398 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %400 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %401 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400, %399 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %402 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_942 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %403 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%401, %cst_943 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%402 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %404 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %405 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %392 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %406 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%405, %cst_941 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %407 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406, %cst_938, %cst_937, %cst_940, %cst_939 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%406 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %408 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %382 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %409 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%408, %cst_936 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %410 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%409, %cst_933, %cst_932, %cst_935, %cst_934 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%409 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %411 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %412 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411, %410 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1376 = tensor.pad %412 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1377 = tensor.collapse_shape %cst_931 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %413 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1376, %collapsed_1377 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %414 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413, %cst_928, %cst_927, %cst_930, %cst_929 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%413 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %415 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %416 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%415, %414 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %417 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%416, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_925 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %420 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%418, %cst_926 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%419 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %421 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%420 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %422 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421, %420 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %423 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_923 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %424 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%422, %cst_924 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%423 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %426 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%425, %416 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %427 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%426, %cst_922 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %428 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427, %cst_919, %cst_918, %cst_921, %cst_920 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%427 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %408 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %430 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%429, %cst_917 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %431 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %cst_914, %cst_913, %cst_916, %cst_915 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%430 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %432 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %433 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %431 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1378 = tensor.pad %433 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1379 = tensor.collapse_shape %cst_912 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %434 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1378, %collapsed_1379 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %435 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_909, %cst_908, %cst_911, %cst_910 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%434 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %436 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %437 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436, %435 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %438 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%438 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %440 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_906 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %441 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%439, %cst_907 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%440 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442, %441 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %444 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_904 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %445 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%443, %cst_905 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%444 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %447 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446, %437 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %448 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%447, %cst_903 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %449 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %cst_900, %cst_899, %cst_902, %cst_901 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%448 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %450 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%449, %429 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %451 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%450, %cst_898 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %452 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %cst_895, %cst_894, %cst_897, %cst_896 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%451 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %454 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453, %452 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1380 = tensor.pad %454 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1381 = tensor.collapse_shape %cst_893 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %455 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1380, %collapsed_1381 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %456 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %cst_890, %cst_889, %cst_892, %cst_891 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%455 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %457 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %458 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457, %456 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %459 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%458, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %461 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_887 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %462 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%460, %cst_888 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%461 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %462 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %465 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_885 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %466 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%464, %cst_886 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%465 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %468 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%467, %458 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %469 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%468, %cst_884 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %470 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %cst_881, %cst_880, %cst_883, %cst_882 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%469 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %471 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470, %450 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %472 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%471, %cst_879 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %473 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472, %cst_876, %cst_875, %cst_878, %cst_877 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%472 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %475 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%474, %473 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1382 = tensor.pad %475 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1383 = tensor.collapse_shape %cst_874 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %476 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1382, %collapsed_1383 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %477 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476, %cst_871, %cst_870, %cst_873, %cst_872 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%476 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %478 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %479 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %477 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %480 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%479, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%480 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_868 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %483 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%481, %cst_869 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%482 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484, %483 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %486 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_866 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %487 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%485, %cst_867 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%486 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488, %479 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %490 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%489, %cst_865 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %491 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %cst_862, %cst_861, %cst_864, %cst_863 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%490 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %492 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491, %471 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %493 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%492, %cst_860 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %494 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %cst_857, %cst_856, %cst_859, %cst_858 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%493 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %495 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %496 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495, %494 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1384 = tensor.pad %496 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1385 = tensor.collapse_shape %cst_855 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %497 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1384, %collapsed_1385 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %498 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497, %cst_852, %cst_851, %cst_854, %cst_853 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%497 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %500 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%499, %498 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %501 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%500, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %503 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_849 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %504 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%502, %cst_850 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%503 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%505, %504 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_847 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %508 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%506, %cst_848 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%507 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %510 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%509, %500 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %511 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%510, %cst_846 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %512 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %cst_843, %cst_842, %cst_845, %cst_844 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%511 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %513 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %492 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %514 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%513, %cst_841 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %515 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514, %cst_838, %cst_837, %cst_840, %cst_839 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%514 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %516 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %517 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %515 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1386 = tensor.pad %517 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1387 = tensor.collapse_shape %cst_836 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %518 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1386, %collapsed_1387 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %519 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518, %cst_833, %cst_832, %cst_835, %cst_834 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%518 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %520 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %521 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %519 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %522 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%521, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %524 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_830 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %525 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%523, %cst_831 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%524 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526, %525 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %528 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_828 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %529 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%527, %cst_829 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%528 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %531 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530, %521 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %532 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%531, %cst_827 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %533 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %cst_824, %cst_823, %cst_826, %cst_825 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%532 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %534 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%533, %513 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %535 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%534, %cst_822 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %536 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535, %cst_819, %cst_818, %cst_821, %cst_820 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%535 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %537 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %538 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%537, %536 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1388 = tensor.pad %538 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1389 = tensor.collapse_shape %cst_817 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %539 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1388, %collapsed_1389 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %540 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539, %cst_814, %cst_813, %cst_816, %cst_815 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%539 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %541 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %542 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541, %540 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %543 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%542, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %545 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_811 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %546 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%544, %cst_812 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%545 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547, %546 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %549 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_809 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %550 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%548, %cst_810 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%549 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %551 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %552 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %542 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %553 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%552, %cst_808 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %554 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_805, %cst_804, %cst_807, %cst_806 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%553 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %555 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %534 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %556 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%555, %cst_803 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %557 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556, %cst_800, %cst_799, %cst_802, %cst_801 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%556 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %558 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %559 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558, %557 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1390 = tensor.pad %559 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1391 = tensor.collapse_shape %cst_798 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %560 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1390, %collapsed_1391 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %561 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560, %cst_795, %cst_794, %cst_797, %cst_796 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%560 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %562 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %563 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562, %561 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %564 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%563, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %566 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_792 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %567 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%565, %cst_793 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%566 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %567 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %570 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_790 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %571 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%569, %cst_791 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%570 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %573 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %563 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %574 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%573, %cst_789 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %575 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_786, %cst_785, %cst_788, %cst_787 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%574 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %576 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %555 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %577 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%576, %cst_784 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %578 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577, %cst_781, %cst_780, %cst_783, %cst_782 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%577 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %579 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %580 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579, %578 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1392 = tensor.pad %580 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1393 = tensor.collapse_shape %cst_779 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %581 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1392, %collapsed_1393 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %582 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %cst_776, %cst_775, %cst_778, %cst_777 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%581 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %583 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %584 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %582 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %585 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%584, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %587 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_773 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %588 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%586, %cst_774 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%587 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589, %588 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %591 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_771 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %592 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%590, %cst_772 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%591 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %594 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%593, %584 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %595 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%594, %cst_770 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %596 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %cst_767, %cst_766, %cst_769, %cst_768 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%595 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %597 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596, %576 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %598 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%597, %cst_765 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %599 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598, %cst_762, %cst_761, %cst_764, %cst_763 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%598 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %600 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %601 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%600, %599 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1394 = tensor.pad %601 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1395 = tensor.collapse_shape %cst_760 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %602 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1394, %collapsed_1395 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %603 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %cst_757, %cst_756, %cst_759, %cst_758 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%602 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %604 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %605 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604, %603 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %606 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%605, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_754 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %609 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%607, %cst_755 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%608 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610, %609 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %612 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_752 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %613 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%611, %cst_753 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%612 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %615 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %605 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %616 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%615, %cst_751 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %617 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %cst_748, %cst_747, %cst_750, %cst_749 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%616 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %618 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%617, %597 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %619 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%618, %cst_746 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %620 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619, %cst_743, %cst_742, %cst_745, %cst_744 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%619 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %621 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %622 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621, %620 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1396 = tensor.pad %622 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1397 = tensor.collapse_shape %cst_741 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %623 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1396, %collapsed_1397 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %624 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623, %cst_738, %cst_737, %cst_740, %cst_739 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%623 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %625 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %626 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%625, %624 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %627 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%626, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%627 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %629 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_735 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %630 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%628, %cst_736 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%629 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631, %630 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_733 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %634 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%632, %cst_734 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%633 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %636 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%635, %626 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %637 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%636, %cst_732 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %638 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%637, %cst_729, %cst_728, %cst_731, %cst_730 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%637 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %639 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %618 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %640 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%639, %cst_727 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %641 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640, %cst_724, %cst_723, %cst_726, %cst_725 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%640 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %642 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %643 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %641 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1398 = tensor.pad %643 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1399 = tensor.collapse_shape %cst_722 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %644 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1398, %collapsed_1399 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %645 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %cst_719, %cst_718, %cst_721, %cst_720 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%644 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %646 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %647 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %645 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %648 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%647, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %649 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %650 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_716 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %651 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%649, %cst_717 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%650 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %652 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652, %651 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %654 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_714 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %655 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_715 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%654 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %656 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656, %647 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %658 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%657, %cst_713 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %659 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %cst_710, %cst_709, %cst_712, %cst_711 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%658 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %660 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%659, %639 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %661 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%660, %cst_708 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %662 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %cst_705, %cst_704, %cst_707, %cst_706 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%661 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %663 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %664 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %662 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1400 = tensor.pad %664 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1401 = tensor.collapse_shape %cst_703 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %665 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1400, %collapsed_1401 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %666 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%665, %cst_700, %cst_699, %cst_702, %cst_701 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%665 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %667 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %668 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667, %666 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %669 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%668, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_697 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %672 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%670, %cst_698 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%671 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %673 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %674 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673, %672 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %675 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_695 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %676 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%674, %cst_696 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%675 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %678 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677, %668 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %679 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%678, %cst_694 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %680 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %cst_691, %cst_690, %cst_693, %cst_692 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%679 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %681 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680, %660 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %682 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%681, %cst_689 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %683 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682, %cst_686, %cst_685, %cst_688, %cst_687 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%682 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %684 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%683 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %685 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684, %683 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1402 = tensor.pad %685 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1403 = tensor.collapse_shape %cst_684 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %686 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1402, %collapsed_1403 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %687 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686, %cst_681, %cst_680, %cst_683, %cst_682 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%686 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %688 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %689 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688, %687 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %690 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%689, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %691 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%690 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %692 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_678 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %693 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%691, %cst_679 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%692 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %694 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694, %693 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %696 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_676 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %697 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%695, %cst_677 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%696 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %698 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%697 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %699 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698, %689 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %700 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%699, %cst_675 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %701 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700, %cst_672, %cst_671, %cst_674, %cst_673 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%700 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %702 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701, %681 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %703 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%702, %cst_670 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %704 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_667, %cst_666, %cst_669, %cst_668 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%703 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %705 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %706 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %704 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1404 = tensor.pad %706 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1405 = tensor.collapse_shape %cst_665 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %707 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1404, %collapsed_1405 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %708 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%707, %cst_662, %cst_661, %cst_664, %cst_663 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%707 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %709 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %710 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709, %708 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %711 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%710, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %712 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %713 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_659 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %714 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%712, %cst_660 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%713 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %715 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %716 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %714 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %717 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_657 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %718 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%716, %cst_658 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%717 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %719 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719, %710 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %721 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%720, %cst_656 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %722 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721, %cst_653, %cst_652, %cst_655, %cst_654 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%721 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %723 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722, %702 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %724 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%723, %cst_651 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %725 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %cst_648, %cst_647, %cst_650, %cst_649 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%724 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %726 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%725 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %727 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %725 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1406 = tensor.pad %727 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1407 = tensor.collapse_shape %cst_646 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %728 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1406, %collapsed_1407 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %729 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728, %cst_643, %cst_642, %cst_645, %cst_644 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%728 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %730 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %731 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730, %729 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %732 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%731, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %733 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%732 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %734 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_640 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %735 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%733, %cst_641 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%734 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %736 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %737 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736, %735 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_638 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %739 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%737, %cst_639 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%738 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %740 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%739 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740, %731 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %742 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%741, %cst_637 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %743 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742, %cst_634, %cst_633, %cst_636, %cst_635 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%742 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %744 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%743, %723 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %745 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%744, %cst_632 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %746 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745, %cst_629, %cst_628, %cst_631, %cst_630 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%745 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %747 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %748 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747, %746 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1408 = tensor.pad %748 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %collapsed_1409 = tensor.collapse_shape %cst_627 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %749 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1408, %collapsed_1409 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %750 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%749, %cst_624, %cst_623, %cst_626, %cst_625 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%749 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %751 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %752 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751, %750 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %753 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%752, %147 : tensor<1x1344x30x30xf32>, tensor<30x30xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %754 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1333 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %755 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_621 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %756 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%754, %cst_622 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%755 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %757 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %758 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%757, %756 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_619 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %760 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%758, %cst_620 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%759 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %761 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %762 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761, %752 : tensor<1x1344x1x1xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %763 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%762, %cst_618 : tensor<1x1344x30x30xf32>, tensor<224x1344x1x1xf32>) outs(%380 : tensor<1x224x30x30xf32>) -> tensor<1x224x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %764 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %cst_615, %cst_614, %cst_617, %cst_616 : tensor<1x224x30x30xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%763 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x224x30x30xf32>
    %765 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764, %744 : tensor<1x224x30x30xf32>, tensor<1x224x30x30xf32>) outs(%379 : tensor<1x224x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x224x30x30xf32>
    %766 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%765, %cst_613 : tensor<1x224x30x30xf32>, tensor<1344x224x1x1xf32>) outs(%384 : tensor<1x1344x30x30xf32>) -> tensor<1x1344x30x30xf32>
    cf.assert %3, "training is not supported for now"
    %767 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %cst_610, %cst_609, %cst_612, %cst_611 : tensor<1x1344x30x30xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%766 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x30x30xf32>
    %768 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%767 : tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x30x30xf32>
    %769 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %767 : tensor<1x1344x30x30xf32>, tensor<1x1344x30x30xf32>) outs(%383 : tensor<1x1344x30x30xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x30x30xf32>
    %padded_1410 = tensor.pad %769 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x1344x30x30xf32> to tensor<1x1344x32x32xf32>
    %770 = tensor.empty() : tensor<1x1344x15x15xf32>
    %771 = linalg.fill ins(%cst_1330 : f32) outs(%770 : tensor<1x1344x15x15xf32>) -> tensor<1x1344x15x15xf32>
    %collapsed_1411 = tensor.collapse_shape %cst_608 [[0, 1], [2], [3]] : tensor<1344x1x3x3xf32> into tensor<1344x3x3xf32>
    %772 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1410, %collapsed_1411 : tensor<1x1344x32x32xf32>, tensor<1344x3x3xf32>) outs(%771 : tensor<1x1344x15x15xf32>) -> tensor<1x1344x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %773 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772, %cst_605, %cst_604, %cst_607, %cst_606 : tensor<1x1344x15x15xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%772 : tensor<1x1344x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1344x15x15xf32>
    %774 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773 : tensor<1x1344x15x15xf32>) outs(%770 : tensor<1x1344x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x15x15xf32>
    %775 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%774, %773 : tensor<1x1344x15x15xf32>, tensor<1x1344x15x15xf32>) outs(%770 : tensor<1x1344x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x15x15xf32>
    %776 = tensor.empty() : tensor<15x15xf32>
    %777 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%775, %776 : tensor<1x1344x15x15xf32>, tensor<15x15xf32>) outs(%394 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %778 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x1x1xf32>
    %779 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_602 : tensor<56xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %780 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%778, %cst_603 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%779 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %781 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780 : tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x56x1x1xf32>
    %782 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781, %780 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%397 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x56x1x1xf32>
    %783 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_600 : tensor<1344xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %784 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%782, %cst_601 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%783 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784 : tensor<1x1344x1x1xf32>) outs(%393 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1344x1x1xf32>
    %786 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785, %775 : tensor<1x1344x1x1xf32>, tensor<1x1344x15x15xf32>) outs(%770 : tensor<1x1344x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1344x15x15xf32>
    %787 = tensor.empty() : tensor<1x384x15x15xf32>
    %788 = linalg.fill ins(%cst_1330 : f32) outs(%787 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%786, %cst_599 : tensor<1x1344x15x15xf32>, tensor<384x1344x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %790 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_596, %cst_595, %cst_598, %cst_597 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%789 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %791 = tensor.empty() : tensor<1x2304x15x15xf32>
    %792 = linalg.fill ins(%cst_1330 : f32) outs(%791 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    %793 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%790, %cst_594 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %794 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %cst_591, %cst_590, %cst_593, %cst_592 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%793 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %795 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %796 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795, %794 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1412 = tensor.pad %796 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1413 = tensor.collapse_shape %cst_589 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %797 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1412, %collapsed_1413 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %798 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797, %cst_586, %cst_585, %cst_588, %cst_587 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%797 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %799 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %800 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%799, %798 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %801 = tensor.empty() : tensor<1x2304x1x1xf32>
    %802 = linalg.fill ins(%cst_1330 : f32) outs(%801 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %803 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%800, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %804 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %805 = tensor.empty() : tensor<1x96x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_583 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %807 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%804, %cst_584 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%806 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %808 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %809 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %807 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %810 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_581 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %811 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%809, %cst_582 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%810 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %812 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %813 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %800 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %814 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%813, %cst_580 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %815 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814, %cst_577, %cst_576, %cst_579, %cst_578 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%814 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %816 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815, %790 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %817 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%816, %cst_575 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %818 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %cst_572, %cst_571, %cst_574, %cst_573 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%817 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %819 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %820 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819, %818 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1414 = tensor.pad %820 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1415 = tensor.collapse_shape %cst_570 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %821 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1414, %collapsed_1415 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %822 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%821, %cst_567, %cst_566, %cst_569, %cst_568 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%821 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %823 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%822 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %824 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823, %822 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %825 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%824, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %826 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %827 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_564 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %828 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%826, %cst_565 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%827 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %829 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %830 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %828 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %831 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_562 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %832 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%830, %cst_563 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%831 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %833 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %834 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%833, %824 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %835 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%834, %cst_561 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %836 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835, %cst_558, %cst_557, %cst_560, %cst_559 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%835 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %837 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836, %816 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %838 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%837, %cst_556 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %839 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %cst_553, %cst_552, %cst_555, %cst_554 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%838 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %840 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %841 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840, %839 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1416 = tensor.pad %841 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1417 = tensor.collapse_shape %cst_551 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %842 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1416, %collapsed_1417 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %843 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %cst_548, %cst_547, %cst_550, %cst_549 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%842 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %844 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %845 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844, %843 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %846 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%845, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %847 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %848 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_545 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %849 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%847, %cst_546 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%848 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %850 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %851 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%850, %849 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %852 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_543 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %853 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%851, %cst_544 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%852 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %854 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %855 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854, %845 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %856 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%855, %cst_542 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %857 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856, %cst_539, %cst_538, %cst_541, %cst_540 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%856 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %858 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %837 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %859 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%858, %cst_537 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %860 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859, %cst_534, %cst_533, %cst_536, %cst_535 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%859 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %861 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%860 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %862 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %860 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1418 = tensor.pad %862 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1419 = tensor.collapse_shape %cst_532 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %863 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1418, %collapsed_1419 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %864 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %cst_529, %cst_528, %cst_531, %cst_530 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%863 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %865 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%864 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %866 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %864 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %867 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%866, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %868 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %869 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_526 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %870 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%868, %cst_527 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%869 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %871 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%870 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %872 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871, %870 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %873 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_524 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %874 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%872, %cst_525 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%873 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %876 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%875, %866 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %877 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%876, %cst_523 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %878 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%877, %cst_520, %cst_519, %cst_522, %cst_521 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%877 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %879 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878, %858 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %880 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%879, %cst_518 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %881 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %cst_515, %cst_514, %cst_517, %cst_516 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%880 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %882 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %883 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %881 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1420 = tensor.pad %883 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1421 = tensor.collapse_shape %cst_513 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %884 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1420, %collapsed_1421 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %885 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %cst_510, %cst_509, %cst_512, %cst_511 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%884 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %886 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %887 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886, %885 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %888 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%887, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %889 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%888 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %890 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_507 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %891 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%889, %cst_508 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%890 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %892 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %893 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892, %891 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %894 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_505 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %895 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%893, %cst_506 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%894 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %896 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%895 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %897 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%896, %887 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %898 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%897, %cst_504 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %899 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898, %cst_501, %cst_500, %cst_503, %cst_502 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%898 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %900 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%899, %879 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %901 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%900, %cst_499 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %902 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901, %cst_496, %cst_495, %cst_498, %cst_497 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%901 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %903 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %904 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903, %902 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1422 = tensor.pad %904 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1423 = tensor.collapse_shape %cst_494 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %905 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1422, %collapsed_1423 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %906 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%905, %cst_491, %cst_490, %cst_493, %cst_492 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%905 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %907 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %908 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907, %906 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %909 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%908, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %910 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %911 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_488 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %912 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%910, %cst_489 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%911 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %913 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %914 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913, %912 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %915 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_486 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %916 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%914, %cst_487 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%915 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %917 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %918 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917, %908 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %919 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%918, %cst_485 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %920 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%919, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%919 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %921 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%920, %900 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %922 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%921, %cst_480 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %923 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%922 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %924 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%923 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %925 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%924, %923 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1424 = tensor.pad %925 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1425 = tensor.collapse_shape %cst_475 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %926 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1424, %collapsed_1425 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %927 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%926, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%926 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %928 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %929 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928, %927 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %930 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%929, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %931 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%930 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %932 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_469 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %933 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%931, %cst_470 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%932 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %934 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934, %933 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %936 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_467 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %937 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%935, %cst_468 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%936 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %938 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%937 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %939 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938, %929 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %940 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%939, %cst_466 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %941 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940, %cst_463, %cst_462, %cst_465, %cst_464 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%940 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %942 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941, %921 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %943 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%942, %cst_461 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %944 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %cst_458, %cst_457, %cst_460, %cst_459 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%943 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %945 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %946 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945, %944 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1426 = tensor.pad %946 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1427 = tensor.collapse_shape %cst_456 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %947 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1426, %collapsed_1427 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %948 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%947, %cst_453, %cst_452, %cst_455, %cst_454 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%947 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %949 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%948 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %950 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%949, %948 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %951 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%950, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %952 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%951 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %953 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_450 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %954 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%952, %cst_451 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%953 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %955 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%954 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %956 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%955, %954 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %957 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_448 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %958 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%956, %cst_449 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%957 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %959 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%958 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %960 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959, %950 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %961 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%960, %cst_447 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %962 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%961, %cst_444, %cst_443, %cst_446, %cst_445 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%961 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %963 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%962, %942 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %964 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%963, %cst_442 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %965 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%964, %cst_439, %cst_438, %cst_441, %cst_440 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%964 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %966 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%965 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %967 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966, %965 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1428 = tensor.pad %967 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1429 = tensor.collapse_shape %cst_437 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %968 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1428, %collapsed_1429 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %969 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%968, %cst_434, %cst_433, %cst_436, %cst_435 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%968 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %970 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %971 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970, %969 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %972 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%971, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %973 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%972 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %974 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_431 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %975 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%973, %cst_432 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%974 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %976 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%975 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %977 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%976, %975 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %978 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_429 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %979 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%977, %cst_430 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%978 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %980 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%979 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %981 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980, %971 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %982 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%981, %cst_428 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %983 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%982, %cst_425, %cst_424, %cst_427, %cst_426 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%982 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %984 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%983, %963 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %985 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%984, %cst_423 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %986 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%985, %cst_420, %cst_419, %cst_422, %cst_421 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%985 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %987 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%986 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %988 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%987, %986 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1430 = tensor.pad %988 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1431 = tensor.collapse_shape %cst_418 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %989 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1430, %collapsed_1431 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %990 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%989, %cst_415, %cst_414, %cst_417, %cst_416 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%989 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %991 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%990 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %992 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991, %990 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %993 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%992, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %994 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%993 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %995 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_412 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %996 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%994, %cst_413 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%995 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %997 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %998 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%997, %996 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %999 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_410 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1000 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%998, %cst_411 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%999 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1001 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1000 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1002 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001, %992 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1003 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1002, %cst_409 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1004 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1003, %cst_406, %cst_405, %cst_408, %cst_407 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1003 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1005 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1004, %984 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1006 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1005, %cst_404 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1007 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006, %cst_401, %cst_400, %cst_403, %cst_402 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1006 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1008 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1007 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1009 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1008, %1007 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1432 = tensor.pad %1009 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1433 = tensor.collapse_shape %cst_399 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1010 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1432, %collapsed_1433 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1011 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010, %cst_396, %cst_395, %cst_398, %cst_397 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1010 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1012 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1011 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1013 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1012, %1011 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1014 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1013, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1015 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1014 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1016 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_393 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1017 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1015, %cst_394 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1016 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1018 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1017 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1019 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018, %1017 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1020 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_391 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1021 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1019, %cst_392 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1020 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1022 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1021 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1023 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1013 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1024 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1023, %cst_390 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1025 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1024, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1024 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1026 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1025, %1005 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1027 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1026, %cst_385 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1028 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1027, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1027 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1029 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1028 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1030 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1029, %1028 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1434 = tensor.pad %1030 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1435 = tensor.collapse_shape %cst_380 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1031 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1434, %collapsed_1435 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1032 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1031, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1031 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1033 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1032 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1034 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1033, %1032 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1035 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1034, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1036 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1037 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_374 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1038 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1036, %cst_375 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1037 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1039 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1038 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1040 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1039, %1038 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1041 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_372 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1042 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1040, %cst_373 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1041 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1043 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1042 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1044 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1043, %1034 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1045 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1044, %cst_371 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1046 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1045, %cst_368, %cst_367, %cst_370, %cst_369 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1045 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1047 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1046, %1026 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1048 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1047, %cst_366 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1049 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048, %cst_363, %cst_362, %cst_365, %cst_364 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1048 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1050 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1049 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1051 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1050, %1049 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1436 = tensor.pad %1051 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1437 = tensor.collapse_shape %cst_361 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1052 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1436, %collapsed_1437 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1053 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1052, %cst_358, %cst_357, %cst_360, %cst_359 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1052 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1054 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1053 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1055 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054, %1053 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1056 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1055, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1057 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1058 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_355 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1059 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1057, %cst_356 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1058 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1060 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1061 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1060, %1059 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1062 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_353 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1063 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1061, %cst_354 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1062 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1064 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1063 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1065 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064, %1055 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1066 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1065, %cst_352 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1067 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1066, %cst_349, %cst_348, %cst_351, %cst_350 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1066 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1068 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1067, %1047 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1069 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1068, %cst_347 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1070 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1069, %cst_344, %cst_343, %cst_346, %cst_345 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1069 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1071 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1070 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1072 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1071, %1070 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1438 = tensor.pad %1072 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1439 = tensor.collapse_shape %cst_342 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1073 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1438, %collapsed_1439 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1074 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1073, %cst_339, %cst_338, %cst_341, %cst_340 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1073 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1075 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1074 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1076 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1075, %1074 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1077 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1076, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1078 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1077 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1079 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_336 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1080 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1078, %cst_337 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1079 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1081 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1082 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1081, %1080 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_334 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1084 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1082, %cst_335 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1083 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1085 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1086 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1085, %1076 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1087 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1086, %cst_333 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1088 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1087, %cst_330, %cst_329, %cst_332, %cst_331 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1087 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1089 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1088, %1068 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1090 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1089, %cst_328 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1091 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1090, %cst_325, %cst_324, %cst_327, %cst_326 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1090 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1092 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1091 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1093 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092, %1091 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1440 = tensor.pad %1093 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1441 = tensor.collapse_shape %cst_323 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1094 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1440, %collapsed_1441 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1095 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1094, %cst_320, %cst_319, %cst_322, %cst_321 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1094 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1096 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1095 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1097 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1096, %1095 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1098 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1097, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1099 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1098 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1100 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_317 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1101 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1099, %cst_318 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1100 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1102 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1101 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1103 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1102, %1101 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1104 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_315 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1103, %cst_316 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1104 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1106 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1105 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1107 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1106, %1097 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1107, %cst_314 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1109 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1108, %cst_311, %cst_310, %cst_313, %cst_312 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1108 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1110 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1109, %1089 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1111 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1110, %cst_309 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1112 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %cst_306, %cst_305, %cst_308, %cst_307 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1111 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1113 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1112 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1114 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1113, %1112 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1442 = tensor.pad %1114 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1443 = tensor.collapse_shape %cst_304 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1115 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1442, %collapsed_1443 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1116 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1115, %cst_301, %cst_300, %cst_303, %cst_302 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1115 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1117 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1116 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1118 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1117, %1116 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1119 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1118, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1120 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1119 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1121 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_298 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1122 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1120, %cst_299 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1121 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1123 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1122 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1124 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1123, %1122 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1125 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_296 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1124, %cst_297 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1125 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1127 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1126 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1128 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1127, %1118 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1129 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1128, %cst_295 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1130 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1129, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1129 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1131 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1130, %1110 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1131, %cst_290 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1133 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1132, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1132 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1134 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1133 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1135 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1134, %1133 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1444 = tensor.pad %1135 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1445 = tensor.collapse_shape %cst_285 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1136 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1444, %collapsed_1445 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1137 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1136 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1137 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1139 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1138, %1137 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1140 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1139, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1141 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1140 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1142 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_279 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1143 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1141, %cst_280 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1142 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1144 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1143 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1145 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1144, %1143 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1146 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_277 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1147 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1145, %cst_278 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1146 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1148 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1147 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1149 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1148, %1139 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1150 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1149, %cst_276 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1151 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1150, %cst_273, %cst_272, %cst_275, %cst_274 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1150 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1152 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1151, %1131 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1152, %cst_271 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1154 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1153, %cst_268, %cst_267, %cst_270, %cst_269 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1153 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1155 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1154 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1156 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1155, %1154 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1446 = tensor.pad %1156 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1447 = tensor.collapse_shape %cst_266 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1157 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1446, %collapsed_1447 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1158 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1157, %cst_263, %cst_262, %cst_265, %cst_264 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1157 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1159 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1158 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1160 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1159, %1158 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1161 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1160, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1162 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1161 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1163 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_260 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1162, %cst_261 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1163 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1165 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1164 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1166 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1165, %1164 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1167 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_258 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1168 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1166, %cst_259 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1167 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1169 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1170 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1169, %1160 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1171 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1170, %cst_257 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1172 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1171, %cst_254, %cst_253, %cst_256, %cst_255 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1171 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1173 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1172, %1152 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1173, %cst_252 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1175 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1174, %cst_249, %cst_248, %cst_251, %cst_250 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1174 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1176 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1175 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1177 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176, %1175 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1448 = tensor.pad %1177 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1449 = tensor.collapse_shape %cst_247 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1178 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1448, %collapsed_1449 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1179 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1178, %cst_244, %cst_243, %cst_246, %cst_245 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1178 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1180 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1181 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1180, %1179 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1182 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1181, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1183 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1182 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1184 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_241 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1183, %cst_242 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1184 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1186 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1185 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1187 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1186, %1185 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1188 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_239 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1189 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1187, %cst_240 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1188 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1190 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1189 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1191 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1190, %1181 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1192 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1191, %cst_238 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1193 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1192, %cst_235, %cst_234, %cst_237, %cst_236 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1192 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1194 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1193, %1173 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1195 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1194, %cst_233 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1196 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1195, %cst_230, %cst_229, %cst_232, %cst_231 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1195 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1197 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1196 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1198 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1197, %1196 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1450 = tensor.pad %1198 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1451 = tensor.collapse_shape %cst_228 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1199 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1450, %collapsed_1451 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1200 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1199, %cst_225, %cst_224, %cst_227, %cst_226 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1199 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1201 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1200 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1202 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1201, %1200 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1203 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1202, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1204 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1203 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1205 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_222 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1204, %cst_223 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1205 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1207 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1206 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1208 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1207, %1206 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1209 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_220 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1210 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1208, %cst_221 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1209 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1211 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1210 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1212 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1211, %1202 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1213 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1212, %cst_219 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1214 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1213, %cst_216, %cst_215, %cst_218, %cst_217 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1213 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1215 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1214, %1194 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1216 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1215, %cst_214 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1216, %cst_211, %cst_210, %cst_213, %cst_212 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1216 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1218 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1217 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1219 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1218, %1217 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1452 = tensor.pad %1219 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1453 = tensor.collapse_shape %cst_209 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1220 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1452, %collapsed_1453 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1221 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1220, %cst_206, %cst_205, %cst_208, %cst_207 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1220 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1222 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1221 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1223 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1222, %1221 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1224 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1223, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1225 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1224 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1226 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_203 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1227 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1225, %cst_204 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1226 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1228 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1227 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1229 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1228, %1227 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1230 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_201 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1231 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1229, %cst_202 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1230 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1232 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1231 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1233 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1232, %1223 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1234 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1233, %cst_200 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1235 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1234, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1234 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1236 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1235, %1215 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1236, %cst_195 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1238 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1237, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1237 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1239 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1238 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1240 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1239, %1238 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1454 = tensor.pad %1240 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1455 = tensor.collapse_shape %cst_190 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1241 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1454, %collapsed_1455 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1242 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1241, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1241 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1243 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1242 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1244 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1243, %1242 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1245 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1244, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1246 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1245 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1247 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_184 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1248 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1246, %cst_185 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1247 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1249 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1248 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1250 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1249, %1248 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1251 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_182 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1250, %cst_183 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1251 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1253 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1252 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1254 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1253, %1244 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1255 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1254, %cst_181 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1256 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1255, %cst_178, %cst_177, %cst_180, %cst_179 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1255 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1257 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1256, %1236 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1258 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1257, %cst_176 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1259 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1258, %cst_173, %cst_172, %cst_175, %cst_174 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1258 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1260 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1259 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1261 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1260, %1259 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1456 = tensor.pad %1261 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1457 = tensor.collapse_shape %cst_171 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1262 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1456, %collapsed_1457 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1262, %cst_168, %cst_167, %cst_170, %cst_169 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1262 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1264 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1263 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1265 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1264, %1263 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1266 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1265, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1267 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1266 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1268 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_165 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1269 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1267, %cst_166 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1268 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1270 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1269 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1271 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1270, %1269 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1272 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_163 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1273 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1271, %cst_164 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1272 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1274 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1273 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1275 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1274, %1265 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1276 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1275, %cst_162 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1277 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1276, %cst_159, %cst_158, %cst_161, %cst_160 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1276 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1278 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1277, %1257 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1279 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1278, %cst_157 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1279, %cst_154, %cst_153, %cst_156, %cst_155 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1279 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1280 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1282 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1281, %1280 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1458 = tensor.pad %1282 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1459 = tensor.collapse_shape %cst_152 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1283 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1458, %collapsed_1459 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1284 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1283, %cst_149, %cst_148, %cst_151, %cst_150 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1283 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1285 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1284 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1286 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1285, %1284 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1287 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1286, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1288 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1287 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1289 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1290 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1288, %cst_147 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1289 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1291 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1290 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1292 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1291, %1290 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1293 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_144 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1292, %cst_145 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1293 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1295 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1294 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1296 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1295, %1286 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1297 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1296, %cst_143 : tensor<1x2304x15x15xf32>, tensor<384x2304x1x1xf32>) outs(%788 : tensor<1x384x15x15xf32>) -> tensor<1x384x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1298 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1297, %cst_140, %cst_139, %cst_142, %cst_141 : tensor<1x384x15x15xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1297 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x384x15x15xf32>
    %1299 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1298, %1278 : tensor<1x384x15x15xf32>, tensor<1x384x15x15xf32>) outs(%787 : tensor<1x384x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x384x15x15xf32>
    %1300 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1299, %cst_138 : tensor<1x384x15x15xf32>, tensor<2304x384x1x1xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1301 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1300, %cst_135, %cst_134, %cst_137, %cst_136 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1300 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1302 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1301 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1303 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1302, %1301 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %padded_1460 = tensor.pad %1303 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x2304x15x15xf32> to tensor<1x2304x17x17xf32>
    %collapsed_1461 = tensor.collapse_shape %cst_133 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1304 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1460, %collapsed_1461 : tensor<1x2304x17x17xf32>, tensor<2304x3x3xf32>) outs(%792 : tensor<1x2304x15x15xf32>) -> tensor<1x2304x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1305 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1304, %cst_130, %cst_129, %cst_132, %cst_131 : tensor<1x2304x15x15xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1304 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x2304x15x15xf32>
    %1306 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1305 : tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x15x15xf32>
    %1307 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1306, %1305 : tensor<1x2304x15x15xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1308 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1307, %776 : tensor<1x2304x15x15xf32>, tensor<15x15xf32>) outs(%802 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1309 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1308 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x1x1xf32>
    %1310 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_127 : tensor<96xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1311 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1309, %cst_128 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1310 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1312 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1311 : tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x96x1x1xf32>
    %1313 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1312, %1311 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%805 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x96x1x1xf32>
    %1314 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_125 : tensor<2304xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1313, %cst_126 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1314 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1316 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1315 : tensor<1x2304x1x1xf32>) outs(%801 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x2304x1x1xf32>
    %1317 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1316, %1307 : tensor<1x2304x1x1xf32>, tensor<1x2304x15x15xf32>) outs(%791 : tensor<1x2304x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x2304x15x15xf32>
    %1318 = tensor.empty() : tensor<1x640x15x15xf32>
    %1319 = linalg.fill ins(%cst_1330 : f32) outs(%1318 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    %1320 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1317, %cst_124 : tensor<1x2304x15x15xf32>, tensor<640x2304x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1321 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1320, %cst_121, %cst_120, %cst_123, %cst_122 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1320 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1322 = tensor.empty() : tensor<1x3840x15x15xf32>
    %1323 = linalg.fill ins(%cst_1330 : f32) outs(%1322 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    %1324 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1321, %cst_119 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1325 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1324, %cst_116, %cst_115, %cst_118, %cst_117 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1324 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1326 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1325 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1327 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1326, %1325 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1462 = tensor.pad %1327 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1463 = tensor.collapse_shape %cst_114 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1328 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1462, %collapsed_1463 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1328, %cst_111, %cst_110, %cst_113, %cst_112 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1328 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1329 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1331 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1330, %1329 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1332 = tensor.empty() : tensor<1x3840x1x1xf32>
    %1333 = linalg.fill ins(%cst_1330 : f32) outs(%1332 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1334 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1331, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1335 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1334 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1336 = tensor.empty() : tensor<1x160x1x1xf32>
    %1337 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_108 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1335, %cst_109 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1337 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1339 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1338 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1340 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1339, %1338 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1341 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_106 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1342 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1340, %cst_107 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1341 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1343 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1342 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1344 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1343, %1331 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1345 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1344, %cst_105 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1346 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1345, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1345 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1347 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1346, %1321 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1348 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1347, %cst_100 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1349 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1348, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1348 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1350 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1349 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1351 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1350, %1349 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1464 = tensor.pad %1351 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1465 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1352 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1464, %collapsed_1465 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1352, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1352 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1354 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1353 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1355 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1354, %1353 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1356 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1355, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1357 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1356 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1358 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_89 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1359 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1357, %cst_90 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1358 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1360 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1359 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1361 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1360, %1359 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1362 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_87 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1363 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1361, %cst_88 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1362 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1364 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1363 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1365 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1364, %1355 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1366 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1365, %cst_86 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1367 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1366, %cst_83, %cst_82, %cst_85, %cst_84 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1366 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1368 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1367, %1347 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1369 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1368, %cst_81 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1370 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1369, %cst_78, %cst_77, %cst_80, %cst_79 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1369 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1371 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1370 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1372 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1371, %1370 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1466 = tensor.pad %1372 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1467 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1373 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1466, %collapsed_1467 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1374 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1373, %cst_73, %cst_72, %cst_75, %cst_74 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1373 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1375 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1374 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1376 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1375, %1374 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1377 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1376, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1378 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1377 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1379 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_70 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1380 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1378, %cst_71 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1379 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1381 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1380 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1382 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1381, %1380 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1383 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_68 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1384 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1382, %cst_69 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1383 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1385 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1384 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1386 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1385, %1376 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1387 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1386, %cst_67 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1388 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1387, %cst_64, %cst_63, %cst_66, %cst_65 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1387 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1389 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1388, %1368 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1390 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1389, %cst_62 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1391 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1390, %cst_59, %cst_58, %cst_61, %cst_60 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1390 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1392 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1391 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1393 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1392, %1391 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1468 = tensor.pad %1393 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1469 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1394 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1468, %collapsed_1469 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1395 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1394, %cst_54, %cst_53, %cst_56, %cst_55 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1394 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1396 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1395 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1397 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1396, %1395 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1398 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1397, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1399 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1398 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1400 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1401 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1399, %cst_52 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1400 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1402 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1401 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1403 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1402, %1401 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1404 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_49 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1405 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1403, %cst_50 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1404 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1406 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1405 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1407 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1406, %1397 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1408 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1407, %cst_48 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1409 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1408, %cst_45, %cst_44, %cst_47, %cst_46 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1408 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1410 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1409, %1389 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1411 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1410, %cst_43 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1412 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1411, %cst_40, %cst_39, %cst_42, %cst_41 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1411 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1413 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1412 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1414 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1413, %1412 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1470 = tensor.pad %1414 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1471 = tensor.collapse_shape %cst_38 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1415 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1470, %collapsed_1471 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1416 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1415, %cst_35, %cst_34, %cst_37, %cst_36 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1415 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1417 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1416 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1418 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1417, %1416 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1419 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1418, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1420 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1419 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1421 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1420, %cst_33 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1421 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1423 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1422 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1424 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1423, %1422 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1425 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1426 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1424, %cst_31 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1425 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1427 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1426 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1428 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1427, %1418 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1429 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1428, %cst_29 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1430 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1429, %cst_26, %cst_25, %cst_28, %cst_27 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1429 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1431 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1430, %1410 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1432 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1431, %cst_24 : tensor<1x640x15x15xf32>, tensor<3840x640x1x1xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1433 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1432, %cst_21, %cst_20, %cst_23, %cst_22 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1432 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1434 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1433 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1435 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1434, %1433 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %padded_1472 = tensor.pad %1435 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1330 : f32
    } : tensor<1x3840x15x15xf32> to tensor<1x3840x17x17xf32>
    %collapsed_1473 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1436 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1472, %collapsed_1473 : tensor<1x3840x17x17xf32>, tensor<3840x3x3xf32>) outs(%1323 : tensor<1x3840x15x15xf32>) -> tensor<1x3840x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1437 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1436, %cst_16, %cst_15, %cst_18, %cst_17 : tensor<1x3840x15x15xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1436 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x3840x15x15xf32>
    %1438 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1437 : tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x15x15xf32>
    %1439 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1438, %1437 : tensor<1x3840x15x15xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1440 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1439, %776 : tensor<1x3840x15x15xf32>, tensor<15x15xf32>) outs(%1333 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1441 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1440 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x1x1xf32>
    %1442 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<160xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1443 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1441, %cst_14 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1442 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1444 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1443 : tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x160x1x1xf32>
    %1445 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1444, %1443 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1336 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x160x1x1xf32>
    %1446 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<3840xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1445, %cst_12 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1446 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1448 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1447 : tensor<1x3840x1x1xf32>) outs(%1332 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x3840x1x1xf32>
    %1449 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1448, %1439 : tensor<1x3840x1x1xf32>, tensor<1x3840x15x15xf32>) outs(%1322 : tensor<1x3840x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x3840x15x15xf32>
    %1450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1449, %cst_10 : tensor<1x3840x15x15xf32>, tensor<640x3840x1x1xf32>) outs(%1319 : tensor<1x640x15x15xf32>) -> tensor<1x640x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1451 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1450, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x640x15x15xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1450 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x640x15x15xf32>
    %1452 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1451, %1431 : tensor<1x640x15x15xf32>, tensor<1x640x15x15xf32>) outs(%1318 : tensor<1x640x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x640x15x15xf32>
    %1453 = tensor.empty() : tensor<1x1280x15x15xf32>
    %1454 = linalg.fill ins(%cst_1330 : f32) outs(%1453 : tensor<1x1280x15x15xf32>) -> tensor<1x1280x15x15xf32>
    %1455 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1452, %cst_5 : tensor<1x640x15x15xf32>, tensor<1280x640x1x1xf32>) outs(%1454 : tensor<1x1280x15x15xf32>) -> tensor<1x1280x15x15xf32>
    cf.assert %3, "training is not supported for now"
    %1456 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1455, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x1280x15x15xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>, tensor<1280xf32>) outs(%1455 : tensor<1x1280x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %in_1476: f32, %in_1477: f32, %in_1478: f32, %out: f32):
      %1469 = arith.truncf %cst_1332 : f64 to f32
      %1470 = arith.addf %in_1478, %1469 : f32
      %1471 = math.rsqrt %1470 : f32
      %1472 = arith.subf %in, %in_1477 : f32
      %1473 = arith.mulf %1472, %1471 : f32
      %1474 = arith.mulf %1473, %in_1475 : f32
      %1475 = arith.addf %1474, %in_1476 : f32
      linalg.yield %1475 : f32
    } -> tensor<1x1280x15x15xf32>
    %1457 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1456 : tensor<1x1280x15x15xf32>) outs(%1453 : tensor<1x1280x15x15xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.negf %in : f32
      %1470 = math.exp %1469 : f32
      %1471 = arith.addf %1470, %cst_1331 : f32
      %1472 = arith.divf %cst_1331, %1471 : f32
      linalg.yield %1472 : f32
    } -> tensor<1x1280x15x15xf32>
    %1458 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1457, %1456 : tensor<1x1280x15x15xf32>, tensor<1x1280x15x15xf32>) outs(%1453 : tensor<1x1280x15x15xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.mulf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1280x15x15xf32>
    %1459 = tensor.empty() : tensor<1x1280x1x1xf32>
    %1460 = linalg.fill ins(%cst_1330 : f32) outs(%1459 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %1461 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1458, %776 : tensor<1x1280x15x15xf32>, tensor<15x15xf32>) outs(%1460 : tensor<1x1280x1x1xf32>) -> tensor<1x1280x1x1xf32>
    %1462 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1461 : tensor<1x1280x1x1xf32>) outs(%1459 : tensor<1x1280x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1469 = arith.divf %in, %cst_1334 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1280x1x1xf32>
    %collapsed_1474 = tensor.collapse_shape %1462 [[0], [1, 2, 3]] : tensor<1x1280x1x1xf32> into tensor<1x1280xf32>
    %1463 = tensor.empty() : tensor<1280x1000xf32>
    %1464 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1280xf32>) outs(%1463 : tensor<1280x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1280x1000xf32>
    %1465 = tensor.empty() : tensor<1x1000xf32>
    %1466 = linalg.fill ins(%cst_1330 : f32) outs(%1465 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1467 = linalg.matmul ins(%collapsed_1474, %1464 : tensor<1x1280xf32>, tensor<1280x1000xf32>) outs(%1466 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1468 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%1467, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1465 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_1475: f32, %out: f32):
      %1469 = arith.addf %in, %in_1475 : f32
      linalg.yield %1469 : f32
    } -> tensor<1x1000xf32>
    return %1468 : tensor<1x1000xf32>
  }
}
