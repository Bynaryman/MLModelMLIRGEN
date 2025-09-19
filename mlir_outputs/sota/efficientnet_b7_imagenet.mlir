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
  func.func @forward(%arg0: tensor<1x3x600x600xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x2560xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<2560xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<2560xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<2560xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<2560xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<2560x640x1x1xf32>
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
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<640x2304x1x1xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<2304x1x3x3xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<384x2304x1x1xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<2304x96x1x1xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<96x2304x1x1xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
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
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<2304x1x5x5xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<2304xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<2304x384x1x1xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<384x1344x1x1xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<224x1344x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<1344x56x1x1xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<56xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<56x1344x1x1xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<1344x1x5x5xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<1344xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<1344x224x1x1xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<224xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<224x960x1x1xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<960x1x5x5xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_515 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_516 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_517 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_518 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_519 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_520 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_521 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_522 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_523 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_524 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_525 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_526 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_527 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_528 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_529 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_530 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_531 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_532 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_533 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_534 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_535 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_536 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_537 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_538 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_539 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_540 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_541 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_542 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_543 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_544 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_545 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_546 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_547 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_548 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_549 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_550 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_551 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_552 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_553 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_554 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_555 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_556 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_557 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_558 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_559 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_560 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_561 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_562 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_563 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_564 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_565 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_566 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_567 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_568 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_569 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_570 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_571 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_572 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_573 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_574 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_575 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_576 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_577 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_578 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_579 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_580 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_581 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_582 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_583 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_584 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_585 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_586 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_587 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_588 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_589 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_590 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_591 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_592 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_593 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_594 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_595 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_596 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_597 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_598 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_599 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_600 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_601 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_602 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_603 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_604 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_605 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_606 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_607 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_608 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_609 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_610 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_611 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_612 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_613 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_614 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_615 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_616 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_617 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_618 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_619 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_620 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_621 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_622 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_623 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_624 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_625 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_626 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_627 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_628 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_629 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_630 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_631 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_632 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_633 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_634 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_635 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_636 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_637 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_638 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_639 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_640 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_641 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_642 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_643 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_644 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_645 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_646 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_647 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_648 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_649 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_650 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_651 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_652 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_653 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_654 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_655 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_656 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_657 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_658 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_659 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_660 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_661 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_662 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_663 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_664 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_665 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_666 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_667 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_668 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_669 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_670 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_671 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_672 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_673 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_674 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_675 = arith.constant dense_resource<__elided__> : tensor<160x960x1x1xf32>
    %cst_676 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_677 = arith.constant dense_resource<__elided__> : tensor<960x40x1x1xf32>
    %cst_678 = arith.constant dense_resource<__elided__> : tensor<40xf32>
    %cst_679 = arith.constant dense_resource<__elided__> : tensor<40x960x1x1xf32>
    %cst_680 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_681 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_682 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_683 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_684 = arith.constant dense_resource<__elided__> : tensor<960x1x3x3xf32>
    %cst_685 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_686 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_687 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_688 = arith.constant dense_resource<__elided__> : tensor<960xf32>
    %cst_689 = arith.constant dense_resource<__elided__> : tensor<960x160x1x1xf32>
    %cst_690 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_691 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_692 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_693 = arith.constant dense_resource<__elided__> : tensor<160xf32>
    %cst_694 = arith.constant dense_resource<__elided__> : tensor<160x480x1x1xf32>
    %cst_695 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_696 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_697 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_698 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_699 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_700 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_701 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_702 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_703 = arith.constant dense_resource<__elided__> : tensor<480x1x3x3xf32>
    %cst_704 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_705 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_706 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_707 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_708 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_709 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_710 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_711 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_712 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_713 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_714 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_715 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_716 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_717 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_718 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_719 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_720 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_721 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_722 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_723 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_724 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_725 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_726 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_727 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_728 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_729 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_730 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_731 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_732 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_733 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_734 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_735 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_736 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_737 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_738 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_739 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_740 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_741 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_742 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_743 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_744 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_745 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_746 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_747 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_748 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_749 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_750 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_751 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_752 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_753 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_754 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_755 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_756 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_757 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_758 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_759 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_760 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_761 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_762 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_763 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_764 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_765 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_766 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_767 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_768 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_769 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_770 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_771 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_772 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_773 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_774 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_775 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_776 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_777 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_778 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_779 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_780 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_781 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_782 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_783 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_784 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_785 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_786 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_787 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_788 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_789 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_790 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_791 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_792 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_793 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_794 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_795 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_796 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_797 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_798 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_799 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_800 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_801 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_802 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_803 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_804 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_805 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_806 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_807 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_808 = arith.constant dense_resource<__elided__> : tensor<80x480x1x1xf32>
    %cst_809 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_810 = arith.constant dense_resource<__elided__> : tensor<480x20x1x1xf32>
    %cst_811 = arith.constant dense_resource<__elided__> : tensor<20xf32>
    %cst_812 = arith.constant dense_resource<__elided__> : tensor<20x480x1x1xf32>
    %cst_813 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_814 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_815 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_816 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_817 = arith.constant dense_resource<__elided__> : tensor<480x1x5x5xf32>
    %cst_818 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_819 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_820 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_821 = arith.constant dense_resource<__elided__> : tensor<480xf32>
    %cst_822 = arith.constant dense_resource<__elided__> : tensor<480x80x1x1xf32>
    %cst_823 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_824 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_825 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_826 = arith.constant dense_resource<__elided__> : tensor<80xf32>
    %cst_827 = arith.constant dense_resource<__elided__> : tensor<80x288x1x1xf32>
    %cst_828 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_829 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_830 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_831 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_832 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_833 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_834 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_835 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_836 = arith.constant dense_resource<__elided__> : tensor<288x1x5x5xf32>
    %cst_837 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_838 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_839 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_840 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_841 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_842 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_843 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_844 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_845 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_846 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_847 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_848 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_849 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_850 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_851 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_852 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_853 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_854 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_855 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_856 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_857 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_858 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_859 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_860 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_861 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_862 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_863 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_864 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_865 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_866 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_867 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_868 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_869 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_870 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_871 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_872 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_873 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_874 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_875 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_876 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_877 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_878 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_879 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_880 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_881 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_882 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_883 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_884 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_885 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_886 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_887 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_888 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_889 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_890 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_891 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_892 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_893 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_894 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_895 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_896 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_897 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_898 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_899 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_900 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_901 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_902 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_903 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_904 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_905 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_906 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_907 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_908 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_909 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_910 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_911 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_912 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_913 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_914 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_915 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_916 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_917 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_918 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_919 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_920 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_921 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_922 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_923 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_924 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_925 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_926 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_927 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_928 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_929 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_930 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_931 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_932 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_933 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_934 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_935 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_936 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_937 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_938 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_939 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_940 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_941 = arith.constant dense_resource<__elided__> : tensor<48x288x1x1xf32>
    %cst_942 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_943 = arith.constant dense_resource<__elided__> : tensor<288x12x1x1xf32>
    %cst_944 = arith.constant dense_resource<__elided__> : tensor<12xf32>
    %cst_945 = arith.constant dense_resource<__elided__> : tensor<12x288x1x1xf32>
    %cst_946 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_947 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_948 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_949 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_950 = arith.constant dense_resource<__elided__> : tensor<288x1x3x3xf32>
    %cst_951 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_952 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_953 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_954 = arith.constant dense_resource<__elided__> : tensor<288xf32>
    %cst_955 = arith.constant dense_resource<__elided__> : tensor<288x48x1x1xf32>
    %cst_956 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_957 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_958 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_959 = arith.constant dense_resource<__elided__> : tensor<48xf32>
    %cst_960 = arith.constant dense_resource<__elided__> : tensor<48x192x1x1xf32>
    %cst_961 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_962 = arith.constant dense_resource<__elided__> : tensor<192x8x1x1xf32>
    %cst_963 = arith.constant dense<[0.0303641018, 0.00453905808, 0.0185847785, 0.0227163658, 0.00591206457, 0.00451850705, 0.0024824976, 0.0164530147]> : tensor<8xf32>
    %cst_964 = arith.constant dense_resource<__elided__> : tensor<8x192x1x1xf32>
    %cst_965 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_966 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_967 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_968 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_969 = arith.constant dense_resource<__elided__> : tensor<192x1x3x3xf32>
    %cst_970 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_971 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_972 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_973 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_974 = arith.constant dense_resource<__elided__> : tensor<192x32x1x1xf32>
    %cst_975 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_976 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_977 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_978 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_979 = arith.constant dense_resource<__elided__> : tensor<32x32x1x1xf32>
    %cst_980 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_981 = arith.constant dense_resource<__elided__> : tensor<32x8x1x1xf32>
    %cst_982 = arith.constant dense<[-0.00522768777, -0.00525168376, -0.00530744065, -5.266880e-03, -0.0052431752, -0.00524235051, -0.0052018459, -0.0052242903]> : tensor<8xf32>
    %cst_983 = arith.constant dense_resource<__elided__> : tensor<8x32x1x1xf32>
    %cst_984 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_985 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_986 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_987 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_988 = arith.constant dense_resource<__elided__> : tensor<32x1x3x3xf32>
    %cst_989 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_990 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_991 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_992 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_993 = arith.constant dense_resource<__elided__> : tensor<32x32x1x1xf32>
    %cst_994 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_995 = arith.constant dense_resource<__elided__> : tensor<32x8x1x1xf32>
    %cst_996 = arith.constant dense<[0.0525394827, 0.0527744927, 0.0466452651, 0.0219270587, 0.0319869705, 0.0210196599, 0.0135361683, 0.0773443803]> : tensor<8xf32>
    %cst_997 = arith.constant dense_resource<__elided__> : tensor<8x32x1x1xf32>
    %cst_998 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_999 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1000 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1001 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1002 = arith.constant dense_resource<__elided__> : tensor<32x1x3x3xf32>
    %cst_1003 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1004 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1005 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1006 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1007 = arith.constant dense_resource<__elided__> : tensor<32x32x1x1xf32>
    %cst_1008 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1009 = arith.constant dense_resource<__elided__> : tensor<32x8x1x1xf32>
    %cst_1010 = arith.constant dense<[-0.00243191281, 0.0282418616, -0.00250339904, -0.0020024816, 0.0321315862, -0.00249919901, -0.00252722809, 0.0247825421]> : tensor<8xf32>
    %cst_1011 = arith.constant dense_resource<__elided__> : tensor<8x32x1x1xf32>
    %cst_1012 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1013 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1014 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1015 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1016 = arith.constant dense_resource<__elided__> : tensor<32x1x3x3xf32>
    %cst_1017 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1018 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1019 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1020 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_1021 = arith.constant dense_resource<__elided__> : tensor<32x64x1x1xf32>
    %cst_1022 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1023 = arith.constant dense_resource<__elided__> : tensor<64x16x1x1xf32>
    %cst_1024 = arith.constant dense_resource<__elided__> : tensor<16xf32>
    %cst_1025 = arith.constant dense_resource<__elided__> : tensor<16x64x1x1xf32>
    %cst_1026 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1027 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1028 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1029 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1030 = arith.constant dense_resource<__elided__> : tensor<64x1x3x3xf32>
    %cst_1031 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1032 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1033 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1034 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_1035 = arith.constant dense_resource<__elided__> : tensor<64x3x3x3xf32>
    %false = arith.constant false
    %cst_1036 = arith.constant 0.000000e+00 : f32
    %cst_1037 = arith.constant 1.000000e+00 : f32
    %cst_1038 = arith.constant 1.000000e-03 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_1039 = arith.constant 9.000000e+04 : f32
    %cst_1040 = arith.constant 2.250000e+04 : f32
    %c2 = arith.constant 2 : index
    %cst_1041 = arith.constant 5.625000e+03 : f32
    %cst_1042 = arith.constant 1.444000e+03 : f32
    %cst_1043 = arith.constant 3.610000e+02 : f32
    %padded = tensor.pad %arg0 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x3x600x600xf32> to tensor<1x3x602x602xf32>
    %0 = tensor.empty() : tensor<1x64x300x300xf32>
    %1 = linalg.fill ins(%cst_1036 : f32) outs(%0 : tensor<1x64x300x300xf32>) -> tensor<1x64x300x300xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_1035 : tensor<1x3x602x602xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x300x300xf32>) -> tensor<1x64x300x300xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_1032, %cst_1031, %cst_1034, %cst_1033 : tensor<1x64x300x300xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x64x300x300xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x300x300xf32>) outs(%0 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x64x300x300xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5, %4 : tensor<1x64x300x300xf32>, tensor<1x64x300x300xf32>) outs(%0 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x64x300x300xf32>
    %padded_1044 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x64x300x300xf32> to tensor<1x64x302x302xf32>
    %collapsed = tensor.collapse_shape %cst_1030 [[0, 1], [2], [3]] : tensor<64x1x3x3xf32> into tensor<64x3x3xf32>
    %7 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1044, %collapsed : tensor<1x64x302x302xf32>, tensor<64x3x3xf32>) outs(%1 : tensor<1x64x300x300xf32>) -> tensor<1x64x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %8 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %cst_1027, %cst_1026, %cst_1029, %cst_1028 : tensor<1x64x300x300xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%7 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x64x300x300xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x64x300x300xf32>) outs(%0 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x64x300x300xf32>
    %10 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%9, %8 : tensor<1x64x300x300xf32>, tensor<1x64x300x300xf32>) outs(%0 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x64x300x300xf32>
    %11 = tensor.empty() : tensor<1x64x1x1xf32>
    %12 = linalg.fill ins(%cst_1036 : f32) outs(%11 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %13 = tensor.empty() : tensor<300x300xf32>
    %14 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%10, %13 : tensor<1x64x300x300xf32>, tensor<300x300xf32>) outs(%12 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %15 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x64x1x1xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1039 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x64x1x1xf32>
    %16 = tensor.empty() : tensor<1x16x1x1xf32>
    %17 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1024 : tensor<16xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x1x1xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%15, %cst_1025 : tensor<1x64x1x1xf32>, tensor<16x64x1x1xf32>) outs(%17 : tensor<1x16x1x1xf32>) -> tensor<1x16x1x1xf32>
    %19 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18 : tensor<1x16x1x1xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x16x1x1xf32>
    %20 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %18 : tensor<1x16x1x1xf32>, tensor<1x16x1x1xf32>) outs(%16 : tensor<1x16x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x16x1x1xf32>
    %21 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1022 : tensor<64xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x1x1xf32>
    %22 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%20, %cst_1023 : tensor<1x16x1x1xf32>, tensor<64x16x1x1xf32>) outs(%21 : tensor<1x64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x1x1xf32>) outs(%11 : tensor<1x64x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x64x1x1xf32>
    %24 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %10 : tensor<1x64x1x1xf32>, tensor<1x64x300x300xf32>) outs(%0 : tensor<1x64x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x64x300x300xf32>
    %25 = tensor.empty() : tensor<1x32x300x300xf32>
    %26 = linalg.fill ins(%cst_1036 : f32) outs(%25 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_1021 : tensor<1x64x300x300xf32>, tensor<32x64x1x1xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_1018, %cst_1017, %cst_1020, %cst_1019 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%27 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %padded_1045 = tensor.pad %28 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x32x300x300xf32> to tensor<1x32x302x302xf32>
    %collapsed_1046 = tensor.collapse_shape %cst_1016 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %29 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1045, %collapsed_1046 : tensor<1x32x302x302xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %30 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29, %cst_1013, %cst_1012, %cst_1015, %cst_1014 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%29 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %31 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x300x300xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %30 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %33 = tensor.empty() : tensor<1x32x1x1xf32>
    %34 = linalg.fill ins(%cst_1036 : f32) outs(%33 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %35 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%32, %13 : tensor<1x32x300x300xf32>, tensor<300x300xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %36 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1039 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x1x1xf32>
    %37 = tensor.empty() : tensor<1x8x1x1xf32>
    %38 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1010 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_1011 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%38 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %40 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x8x1x1xf32>
    %41 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %39 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x8x1x1xf32>
    %42 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_1008 : tensor<32xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %43 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_1009 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%42 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %44 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x1x1xf32>
    %45 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%44, %32 : tensor<1x32x1x1xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%45, %cst_1007 : tensor<1x32x300x300xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_1004, %cst_1003, %cst_1006, %cst_1005 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%46 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47, %28 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %padded_1047 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x32x300x300xf32> to tensor<1x32x302x302xf32>
    %collapsed_1048 = tensor.collapse_shape %cst_1002 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %49 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1047, %collapsed_1048 : tensor<1x32x302x302xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %50 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %cst_999, %cst_998, %cst_1001, %cst_1000 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%49 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x300x300xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %50 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %53 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%52, %13 : tensor<1x32x300x300xf32>, tensor<300x300xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %54 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%53 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1039 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x1x1xf32>
    %55 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_996 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%54, %cst_997 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%55 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x8x1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %56 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x8x1x1xf32>
    %59 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_994 : tensor<32xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%58, %cst_995 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%59 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %61 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61, %52 : tensor<1x32x1x1xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%62, %cst_993 : tensor<1x32x300x300xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_990, %cst_989, %cst_992, %cst_991 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%63 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64, %48 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %padded_1049 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x32x300x300xf32> to tensor<1x32x302x302xf32>
    %collapsed_1050 = tensor.collapse_shape %cst_988 [[0, 1], [2], [3]] : tensor<32x1x3x3xf32> into tensor<32x3x3xf32>
    %66 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1049, %collapsed_1050 : tensor<1x32x302x302xf32>, tensor<32x3x3xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_985, %cst_984, %cst_987, %cst_986 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%66 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x300x300xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %67 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %70 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%69, %13 : tensor<1x32x300x300xf32>, tensor<300x300xf32>) outs(%34 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %71 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1039 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x1x1xf32>
    %72 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_982 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%71, %cst_983 : tensor<1x32x1x1xf32>, tensor<8x32x1x1xf32>) outs(%72 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %74 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x8x1x1xf32>
    %75 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %73 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x8x1x1xf32>
    %76 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_980 : tensor<32xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x1x1xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %cst_981 : tensor<1x8x1x1xf32>, tensor<32x8x1x1xf32>) outs(%76 : tensor<1x32x1x1xf32>) -> tensor<1x32x1x1xf32>
    %78 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x32x1x1xf32>) outs(%33 : tensor<1x32x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x32x1x1xf32>
    %79 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78, %69 : tensor<1x32x1x1xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%79, %cst_979 : tensor<1x32x300x300xf32>, tensor<32x32x1x1xf32>) outs(%26 : tensor<1x32x300x300xf32>) -> tensor<1x32x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %cst_976, %cst_975, %cst_978, %cst_977 : tensor<1x32x300x300xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>, tensor<32xf32>) outs(%80 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x32x300x300xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81, %65 : tensor<1x32x300x300xf32>, tensor<1x32x300x300xf32>) outs(%25 : tensor<1x32x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x32x300x300xf32>
    %83 = tensor.empty() : tensor<1x192x300x300xf32>
    %84 = linalg.fill ins(%cst_1036 : f32) outs(%83 : tensor<1x192x300x300xf32>) -> tensor<1x192x300x300xf32>
    %85 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%82, %cst_974 : tensor<1x32x300x300xf32>, tensor<192x32x1x1xf32>) outs(%84 : tensor<1x192x300x300xf32>) -> tensor<1x192x300x300xf32>
    cf.assert %3, "training is not supported for now"
    %86 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%85, %cst_971, %cst_970, %cst_973, %cst_972 : tensor<1x192x300x300xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%85 : tensor<1x192x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x192x300x300xf32>
    %87 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x192x300x300xf32>) outs(%83 : tensor<1x192x300x300xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x192x300x300xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %86 : tensor<1x192x300x300xf32>, tensor<1x192x300x300xf32>) outs(%83 : tensor<1x192x300x300xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x192x300x300xf32>
    %padded_1051 = tensor.pad %88 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x192x300x300xf32> to tensor<1x192x302x302xf32>
    %89 = tensor.empty() : tensor<1x192x150x150xf32>
    %90 = linalg.fill ins(%cst_1036 : f32) outs(%89 : tensor<1x192x150x150xf32>) -> tensor<1x192x150x150xf32>
    %collapsed_1052 = tensor.collapse_shape %cst_969 [[0, 1], [2], [3]] : tensor<192x1x3x3xf32> into tensor<192x3x3xf32>
    %91 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1051, %collapsed_1052 : tensor<1x192x302x302xf32>, tensor<192x3x3xf32>) outs(%90 : tensor<1x192x150x150xf32>) -> tensor<1x192x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %92 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91, %cst_966, %cst_965, %cst_968, %cst_967 : tensor<1x192x150x150xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>, tensor<192xf32>) outs(%91 : tensor<1x192x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x192x150x150xf32>
    %93 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92 : tensor<1x192x150x150xf32>) outs(%89 : tensor<1x192x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x192x150x150xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93, %92 : tensor<1x192x150x150xf32>, tensor<1x192x150x150xf32>) outs(%89 : tensor<1x192x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x192x150x150xf32>
    %95 = tensor.empty() : tensor<1x192x1x1xf32>
    %96 = linalg.fill ins(%cst_1036 : f32) outs(%95 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %97 = tensor.empty() : tensor<150x150xf32>
    %98 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%94, %97 : tensor<1x192x150x150xf32>, tensor<150x150xf32>) outs(%96 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %99 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x192x1x1xf32>) outs(%95 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x192x1x1xf32>
    %100 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_963 : tensor<8xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x1x1xf32>
    %101 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_964 : tensor<1x192x1x1xf32>, tensor<8x192x1x1xf32>) outs(%100 : tensor<1x8x1x1xf32>) -> tensor<1x8x1x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x8x1x1xf32>
    %103 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %101 : tensor<1x8x1x1xf32>, tensor<1x8x1x1xf32>) outs(%37 : tensor<1x8x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x8x1x1xf32>
    %104 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_961 : tensor<192xf32>) outs(%95 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x1x1xf32>
    %105 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%103, %cst_962 : tensor<1x8x1x1xf32>, tensor<192x8x1x1xf32>) outs(%104 : tensor<1x192x1x1xf32>) -> tensor<1x192x1x1xf32>
    %106 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105 : tensor<1x192x1x1xf32>) outs(%95 : tensor<1x192x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x192x1x1xf32>
    %107 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %94 : tensor<1x192x1x1xf32>, tensor<1x192x150x150xf32>) outs(%89 : tensor<1x192x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x192x150x150xf32>
    %108 = tensor.empty() : tensor<1x48x150x150xf32>
    %109 = linalg.fill ins(%cst_1036 : f32) outs(%108 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    %110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_960 : tensor<1x192x150x150xf32>, tensor<48x192x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %111 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110, %cst_957, %cst_956, %cst_959, %cst_958 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%110 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %112 = tensor.empty() : tensor<1x288x150x150xf32>
    %113 = linalg.fill ins(%cst_1036 : f32) outs(%112 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    %114 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %cst_955 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %115 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114, %cst_952, %cst_951, %cst_954, %cst_953 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%114 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %116 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %117 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %115 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1053 = tensor.pad %117 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1054 = tensor.collapse_shape %cst_950 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %118 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1053, %collapsed_1054 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %119 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %cst_947, %cst_946, %cst_949, %cst_948 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%118 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %120 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %119 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %122 = tensor.empty() : tensor<1x288x1x1xf32>
    %123 = linalg.fill ins(%cst_1036 : f32) outs(%122 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %124 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %125 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %126 = tensor.empty() : tensor<1x12x1x1xf32>
    %127 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_944 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %128 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %cst_945 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%127 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %129 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129, %128 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_942 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%130, %cst_943 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%131 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %133 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %134 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %121 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %135 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%134, %cst_941 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %136 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135, %cst_938, %cst_937, %cst_940, %cst_939 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%135 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %137 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %111 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %138 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%137, %cst_936 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %139 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%138, %cst_933, %cst_932, %cst_935, %cst_934 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%138 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %140 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140, %139 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1055 = tensor.pad %141 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1056 = tensor.collapse_shape %cst_931 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %142 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1055, %collapsed_1056 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %143 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_928, %cst_927, %cst_930, %cst_929 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%142 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %145 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144, %143 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %146 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%145, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %147 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %148 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_925 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %149 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%147, %cst_926 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%148 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %150 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150, %149 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %152 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_923 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %153 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%151, %cst_924 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%152 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %154 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %155 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %145 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_922 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_919, %cst_918, %cst_921, %cst_920 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%156 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157, %137 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %159 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%158, %cst_917 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %160 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%159, %cst_914, %cst_913, %cst_916, %cst_915 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%159 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %162 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%161, %160 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1057 = tensor.pad %162 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1058 = tensor.collapse_shape %cst_912 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %163 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1057, %collapsed_1058 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %164 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %cst_909, %cst_908, %cst_911, %cst_910 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%163 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %166 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%165, %164 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %167 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%166, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %168 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %169 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_906 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %170 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%168, %cst_907 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%169 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %171 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %172 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%171, %170 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %173 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_904 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %174 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%172, %cst_905 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%173 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %175 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %176 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%175, %166 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %177 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%176, %cst_903 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %178 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177, %cst_900, %cst_899, %cst_902, %cst_901 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%177 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %179 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %158 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %180 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%179, %cst_898 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %181 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180, %cst_895, %cst_894, %cst_897, %cst_896 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%180 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %182 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %183 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %181 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1059 = tensor.pad %183 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1060 = tensor.collapse_shape %cst_893 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %184 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1059, %collapsed_1060 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %185 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184, %cst_890, %cst_889, %cst_892, %cst_891 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%184 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %186 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%185 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %187 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %185 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %188 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%187, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %189 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %190 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_887 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %191 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%189, %cst_888 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%190 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %193 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %191 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %194 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_885 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %195 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%193, %cst_886 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%194 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %196 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %197 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %187 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %198 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%197, %cst_884 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %199 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%198, %cst_881, %cst_880, %cst_883, %cst_882 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%198 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %200 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%199, %179 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %201 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%200, %cst_879 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %202 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201, %cst_876, %cst_875, %cst_878, %cst_877 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%201 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %203 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %202 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1061 = tensor.pad %204 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1062 = tensor.collapse_shape %cst_874 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %205 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1061, %collapsed_1062 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %206 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%205, %cst_871, %cst_870, %cst_873, %cst_872 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%205 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %207 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207, %206 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %209 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%208, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%209 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %211 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_868 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%210, %cst_869 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%211 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %213 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %214 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %212 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %215 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_866 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %216 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%214, %cst_867 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%215 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %217 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %218 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217, %208 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %219 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%218, %cst_865 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219, %cst_862, %cst_861, %cst_864, %cst_863 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%219 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220, %200 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_860 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %223 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_857, %cst_856, %cst_859, %cst_858 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%222 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %224 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %223 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1063 = tensor.pad %225 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x152x152xf32>
    %collapsed_1064 = tensor.collapse_shape %cst_855 [[0, 1], [2], [3]] : tensor<288x1x3x3xf32> into tensor<288x3x3xf32>
    %226 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1063, %collapsed_1064 : tensor<1x288x152x152xf32>, tensor<288x3x3xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %cst_852, %cst_851, %cst_854, %cst_853 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%226 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %229 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%228, %227 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %230 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%229, %97 : tensor<1x288x150x150xf32>, tensor<150x150xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %231 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1040 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %232 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_849 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %233 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %cst_850 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%232 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %234 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %235 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234, %233 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %236 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_847 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %237 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_848 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%236 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %239 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %229 : tensor<1x288x1x1xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %240 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%239, %cst_846 : tensor<1x288x150x150xf32>, tensor<48x288x1x1xf32>) outs(%109 : tensor<1x48x150x150xf32>) -> tensor<1x48x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %241 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %cst_843, %cst_842, %cst_845, %cst_844 : tensor<1x48x150x150xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>, tensor<48xf32>) outs(%240 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x48x150x150xf32>
    %242 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241, %221 : tensor<1x48x150x150xf32>, tensor<1x48x150x150xf32>) outs(%108 : tensor<1x48x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x48x150x150xf32>
    %243 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%242, %cst_841 : tensor<1x48x150x150xf32>, tensor<288x48x1x1xf32>) outs(%113 : tensor<1x288x150x150xf32>) -> tensor<1x288x150x150xf32>
    cf.assert %3, "training is not supported for now"
    %244 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %cst_838, %cst_837, %cst_840, %cst_839 : tensor<1x288x150x150xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%243 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x150x150xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x150x150xf32>
    %246 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%245, %244 : tensor<1x288x150x150xf32>, tensor<1x288x150x150xf32>) outs(%112 : tensor<1x288x150x150xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x150x150xf32>
    %padded_1065 = tensor.pad %246 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x288x150x150xf32> to tensor<1x288x154x154xf32>
    %247 = tensor.empty() : tensor<1x288x75x75xf32>
    %248 = linalg.fill ins(%cst_1036 : f32) outs(%247 : tensor<1x288x75x75xf32>) -> tensor<1x288x75x75xf32>
    %collapsed_1066 = tensor.collapse_shape %cst_836 [[0, 1], [2], [3]] : tensor<288x1x5x5xf32> into tensor<288x5x5xf32>
    %249 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1065, %collapsed_1066 : tensor<1x288x154x154xf32>, tensor<288x5x5xf32>) outs(%248 : tensor<1x288x75x75xf32>) -> tensor<1x288x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249, %cst_833, %cst_832, %cst_835, %cst_834 : tensor<1x288x75x75xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>, tensor<288xf32>) outs(%249 : tensor<1x288x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x288x75x75xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x288x75x75xf32>) outs(%247 : tensor<1x288x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x75x75xf32>
    %252 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %250 : tensor<1x288x75x75xf32>, tensor<1x288x75x75xf32>) outs(%247 : tensor<1x288x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x75x75xf32>
    %253 = tensor.empty() : tensor<75x75xf32>
    %254 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%252, %253 : tensor<1x288x75x75xf32>, tensor<75x75xf32>) outs(%123 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %255 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x1x1xf32>
    %256 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_830 : tensor<12xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x1x1xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_831 : tensor<1x288x1x1xf32>, tensor<12x288x1x1xf32>) outs(%256 : tensor<1x12x1x1xf32>) -> tensor<1x12x1x1xf32>
    %258 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x12x1x1xf32>
    %259 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%258, %257 : tensor<1x12x1x1xf32>, tensor<1x12x1x1xf32>) outs(%126 : tensor<1x12x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x12x1x1xf32>
    %260 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_828 : tensor<288xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x288x1x1xf32>
    %261 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%259, %cst_829 : tensor<1x12x1x1xf32>, tensor<288x12x1x1xf32>) outs(%260 : tensor<1x288x1x1xf32>) -> tensor<1x288x1x1xf32>
    %262 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261 : tensor<1x288x1x1xf32>) outs(%122 : tensor<1x288x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x288x1x1xf32>
    %263 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %252 : tensor<1x288x1x1xf32>, tensor<1x288x75x75xf32>) outs(%247 : tensor<1x288x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x288x75x75xf32>
    %264 = tensor.empty() : tensor<1x80x75x75xf32>
    %265 = linalg.fill ins(%cst_1036 : f32) outs(%264 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    %266 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%263, %cst_827 : tensor<1x288x75x75xf32>, tensor<80x288x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %267 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_824, %cst_823, %cst_826, %cst_825 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%266 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %268 = tensor.empty() : tensor<1x480x75x75xf32>
    %269 = linalg.fill ins(%cst_1036 : f32) outs(%268 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    %270 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%267, %cst_822 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %271 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270, %cst_819, %cst_818, %cst_821, %cst_820 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%270 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %272 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %273 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %271 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1067 = tensor.pad %273 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1068 = tensor.collapse_shape %cst_817 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %274 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1067, %collapsed_1068 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %275 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_814, %cst_813, %cst_816, %cst_815 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%274 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %276 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %277 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %275 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %278 = tensor.empty() : tensor<1x480x1x1xf32>
    %279 = linalg.fill ins(%cst_1036 : f32) outs(%278 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %280 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%277, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %281 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %282 = tensor.empty() : tensor<1x20x1x1xf32>
    %283 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_811 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %284 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %cst_812 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%283 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %285 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %286 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%285, %284 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %287 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_809 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %288 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%286, %cst_810 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%287 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %289 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%288 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %290 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289, %277 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %291 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%290, %cst_808 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %292 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%291, %cst_805, %cst_804, %cst_807, %cst_806 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%291 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %293 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %267 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %294 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%293, %cst_803 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %295 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294, %cst_800, %cst_799, %cst_802, %cst_801 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%294 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %296 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%295 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %297 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %295 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1069 = tensor.pad %297 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1070 = tensor.collapse_shape %cst_798 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %298 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1069, %collapsed_1070 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %299 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %cst_795, %cst_794, %cst_797, %cst_796 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%298 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %300 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%299 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300, %299 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %302 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %303 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %304 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_792 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %305 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%303, %cst_793 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%304 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %306 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %307 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %305 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_790 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %309 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%307, %cst_791 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%308 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %310 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %311 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310, %301 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_789 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_786, %cst_785, %cst_788, %cst_787 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%312 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %293 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %315 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%314, %cst_784 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %316 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315, %cst_781, %cst_780, %cst_783, %cst_782 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%315 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %317 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317, %316 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1071 = tensor.pad %318 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1072 = tensor.collapse_shape %cst_779 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %319 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1071, %collapsed_1072 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %cst_776, %cst_775, %cst_778, %cst_777 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%319 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %322 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %320 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %323 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%322, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %324 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %325 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_773 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %326 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%324, %cst_774 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%325 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %327 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %328 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327, %326 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %329 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_771 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %330 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%328, %cst_772 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%329 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %331 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %332 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331, %322 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %333 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%332, %cst_770 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333, %cst_767, %cst_766, %cst_769, %cst_768 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%333 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334, %314 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %336 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_765 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %337 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_762, %cst_761, %cst_764, %cst_763 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%336 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %338 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %339 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %337 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1073 = tensor.pad %339 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1074 = tensor.collapse_shape %cst_760 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %340 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1073, %collapsed_1074 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %341 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340, %cst_757, %cst_756, %cst_759, %cst_758 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%340 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %342 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %343 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %341 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %344 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%343, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %345 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %346 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_754 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %347 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%345, %cst_755 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%346 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %348 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%347 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %349 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %347 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %350 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_752 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %351 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%349, %cst_753 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%350 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %352 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %353 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %343 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %354 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%353, %cst_751 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %355 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%354, %cst_748, %cst_747, %cst_750, %cst_749 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%354 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %356 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%355, %335 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %357 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%356, %cst_746 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %358 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%357, %cst_743, %cst_742, %cst_745, %cst_744 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%357 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %359 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %358 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1075 = tensor.pad %360 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1076 = tensor.collapse_shape %cst_741 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %361 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1075, %collapsed_1076 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %362 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361, %cst_738, %cst_737, %cst_740, %cst_739 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%361 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %363 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %364 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363, %362 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %365 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%364, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %367 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_735 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %368 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%366, %cst_736 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%367 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %369 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %370 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369, %368 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %371 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_733 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %372 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%370, %cst_734 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%371 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %373 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%372 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %374 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %364 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %375 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%374, %cst_732 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %376 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375, %cst_729, %cst_728, %cst_731, %cst_730 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%375 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %377 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376, %356 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %378 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%377, %cst_727 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %379 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378, %cst_724, %cst_723, %cst_726, %cst_725 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%378 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %380 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%379 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %381 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380, %379 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1077 = tensor.pad %381 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x79x79xf32>
    %collapsed_1078 = tensor.collapse_shape %cst_722 [[0, 1], [2], [3]] : tensor<480x1x5x5xf32> into tensor<480x5x5xf32>
    %382 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1077, %collapsed_1078 : tensor<1x480x79x79xf32>, tensor<480x5x5xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %383 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382, %cst_719, %cst_718, %cst_721, %cst_720 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%382 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %384 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%383 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %385 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%384, %383 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %386 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%385, %253 : tensor<1x480x75x75xf32>, tensor<75x75xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %387 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1041 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %388 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_716 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %389 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%387, %cst_717 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%388 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %390 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %391 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %389 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_714 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %393 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%391, %cst_715 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%392 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %394 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394, %385 : tensor<1x480x1x1xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %396 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%395, %cst_713 : tensor<1x480x75x75xf32>, tensor<80x480x1x1xf32>) outs(%265 : tensor<1x80x75x75xf32>) -> tensor<1x80x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %397 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %cst_710, %cst_709, %cst_712, %cst_711 : tensor<1x80x75x75xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>, tensor<80xf32>) outs(%396 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x80x75x75xf32>
    %398 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%397, %377 : tensor<1x80x75x75xf32>, tensor<1x80x75x75xf32>) outs(%264 : tensor<1x80x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x80x75x75xf32>
    %399 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%398, %cst_708 : tensor<1x80x75x75xf32>, tensor<480x80x1x1xf32>) outs(%269 : tensor<1x480x75x75xf32>) -> tensor<1x480x75x75xf32>
    cf.assert %3, "training is not supported for now"
    %400 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399, %cst_705, %cst_704, %cst_707, %cst_706 : tensor<1x480x75x75xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%399 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x75x75xf32>
    %401 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x75x75xf32>
    %402 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401, %400 : tensor<1x480x75x75xf32>, tensor<1x480x75x75xf32>) outs(%268 : tensor<1x480x75x75xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x75x75xf32>
    %padded_1079 = tensor.pad %402 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x480x75x75xf32> to tensor<1x480x77x77xf32>
    %403 = tensor.empty() : tensor<1x480x38x38xf32>
    %404 = linalg.fill ins(%cst_1036 : f32) outs(%403 : tensor<1x480x38x38xf32>) -> tensor<1x480x38x38xf32>
    %collapsed_1080 = tensor.collapse_shape %cst_703 [[0, 1], [2], [3]] : tensor<480x1x3x3xf32> into tensor<480x3x3xf32>
    %405 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1079, %collapsed_1080 : tensor<1x480x77x77xf32>, tensor<480x3x3xf32>) outs(%404 : tensor<1x480x38x38xf32>) -> tensor<1x480x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %406 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405, %cst_700, %cst_699, %cst_702, %cst_701 : tensor<1x480x38x38xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>, tensor<480xf32>) outs(%405 : tensor<1x480x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x480x38x38xf32>
    %407 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406 : tensor<1x480x38x38xf32>) outs(%403 : tensor<1x480x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x38x38xf32>
    %408 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%407, %406 : tensor<1x480x38x38xf32>, tensor<1x480x38x38xf32>) outs(%403 : tensor<1x480x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x38x38xf32>
    %409 = tensor.empty() : tensor<38x38xf32>
    %410 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%408, %409 : tensor<1x480x38x38xf32>, tensor<38x38xf32>) outs(%279 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %411 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x1x1xf32>
    %412 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_697 : tensor<20xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x20x1x1xf32>
    %413 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%411, %cst_698 : tensor<1x480x1x1xf32>, tensor<20x480x1x1xf32>) outs(%412 : tensor<1x20x1x1xf32>) -> tensor<1x20x1x1xf32>
    %414 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%413 : tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x20x1x1xf32>
    %415 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%414, %413 : tensor<1x20x1x1xf32>, tensor<1x20x1x1xf32>) outs(%282 : tensor<1x20x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x20x1x1xf32>
    %416 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_695 : tensor<480xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x480x1x1xf32>
    %417 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%415, %cst_696 : tensor<1x20x1x1xf32>, tensor<480x20x1x1xf32>) outs(%416 : tensor<1x480x1x1xf32>) -> tensor<1x480x1x1xf32>
    %418 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%417 : tensor<1x480x1x1xf32>) outs(%278 : tensor<1x480x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x480x1x1xf32>
    %419 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %408 : tensor<1x480x1x1xf32>, tensor<1x480x38x38xf32>) outs(%403 : tensor<1x480x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x480x38x38xf32>
    %420 = tensor.empty() : tensor<1x160x38x38xf32>
    %421 = linalg.fill ins(%cst_1036 : f32) outs(%420 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    %422 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%419, %cst_694 : tensor<1x480x38x38xf32>, tensor<160x480x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %423 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %cst_691, %cst_690, %cst_693, %cst_692 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%422 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %424 = tensor.empty() : tensor<1x960x38x38xf32>
    %425 = linalg.fill ins(%cst_1036 : f32) outs(%424 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    %426 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%423, %cst_689 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %427 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %cst_686, %cst_685, %cst_688, %cst_687 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%426 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %428 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%427 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %429 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428, %427 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1081 = tensor.pad %429 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1082 = tensor.collapse_shape %cst_684 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %430 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1081, %collapsed_1082 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %431 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430, %cst_681, %cst_680, %cst_683, %cst_682 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%430 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %432 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %433 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%432, %431 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %434 = tensor.empty() : tensor<1x960x1x1xf32>
    %435 = linalg.fill ins(%cst_1036 : f32) outs(%434 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %436 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%433, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %437 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %438 = tensor.empty() : tensor<1x40x1x1xf32>
    %439 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_678 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %440 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%437, %cst_679 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%439 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %441 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %442 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441, %440 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_676 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %444 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%442, %cst_677 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%443 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %445 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%444 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %446 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%445, %433 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %447 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%446, %cst_675 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %448 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%447, %cst_672, %cst_671, %cst_674, %cst_673 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%447 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %449 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %423 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %450 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%449, %cst_670 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %451 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%450, %cst_667, %cst_666, %cst_669, %cst_668 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%450 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %452 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %453 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %451 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1083 = tensor.pad %453 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1084 = tensor.collapse_shape %cst_665 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %454 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1083, %collapsed_1084 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %455 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454, %cst_662, %cst_661, %cst_664, %cst_663 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%454 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %456 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %457 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %455 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %458 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%457, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %459 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_659 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %461 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%459, %cst_660 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%460 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %463 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%462, %461 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %464 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_657 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %465 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%463, %cst_658 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%464 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %466 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466, %457 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %468 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%467, %cst_656 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %469 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%468, %cst_653, %cst_652, %cst_655, %cst_654 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%468 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %470 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%469, %449 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %471 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%470, %cst_651 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %472 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471, %cst_648, %cst_647, %cst_650, %cst_649 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%471 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %473 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %474 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%473, %472 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1085 = tensor.pad %474 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1086 = tensor.collapse_shape %cst_646 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %475 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1085, %collapsed_1086 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %476 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%475, %cst_643, %cst_642, %cst_645, %cst_644 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%475 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %477 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %478 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%477, %476 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %479 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%478, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%479 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %481 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_640 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %482 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%480, %cst_641 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%481 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %483 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %484 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483, %482 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %485 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_638 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %486 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%484, %cst_639 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%485 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %487 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %488 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%487, %478 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %489 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%488, %cst_637 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %490 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489, %cst_634, %cst_633, %cst_636, %cst_635 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%489 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %491 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490, %470 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %492 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%491, %cst_632 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %493 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%492, %cst_629, %cst_628, %cst_631, %cst_630 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%492 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %494 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %495 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %493 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1087 = tensor.pad %495 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1088 = tensor.collapse_shape %cst_627 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %496 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1087, %collapsed_1088 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %497 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496, %cst_624, %cst_623, %cst_626, %cst_625 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%496 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %498 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%497 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %499 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%498, %497 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %500 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%499, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %501 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %502 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_621 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %503 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%501, %cst_622 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%502 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %504 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%503 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %505 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%504, %503 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %506 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_619 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %507 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%505, %cst_620 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%506 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %508 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%507 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %509 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %499 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %510 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%509, %cst_618 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %511 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%510, %cst_615, %cst_614, %cst_617, %cst_616 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%510 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %512 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511, %491 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %513 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%512, %cst_613 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %514 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513, %cst_610, %cst_609, %cst_612, %cst_611 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%513 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %515 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %516 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%515, %514 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1089 = tensor.pad %516 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1090 = tensor.collapse_shape %cst_608 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %517 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1089, %collapsed_1090 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %518 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %cst_605, %cst_604, %cst_607, %cst_606 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%517 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %519 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %520 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519, %518 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %521 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%520, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %522 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %523 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_602 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %524 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%522, %cst_603 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%523 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %525 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %526 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525, %524 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %527 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_600 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %528 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%526, %cst_601 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%527 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %529 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%528 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %530 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%529, %520 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %531 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%530, %cst_599 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %532 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531, %cst_596, %cst_595, %cst_598, %cst_597 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%531 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %533 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532, %512 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %534 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%533, %cst_594 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %535 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%534, %cst_591, %cst_590, %cst_593, %cst_592 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%534 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %536 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%535 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %537 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536, %535 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1091 = tensor.pad %537 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1092 = tensor.collapse_shape %cst_589 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %538 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1091, %collapsed_1092 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %539 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %cst_586, %cst_585, %cst_588, %cst_587 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%538 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %540 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %541 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %539 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %542 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%541, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %543 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %544 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_583 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %545 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%543, %cst_584 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%544 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %546 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%545 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %547 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %545 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_581 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %549 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%547, %cst_582 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%548 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %551 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550, %541 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %552 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%551, %cst_580 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %553 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %cst_577, %cst_576, %cst_579, %cst_578 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%552 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %554 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %533 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %555 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%554, %cst_575 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %556 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555, %cst_572, %cst_571, %cst_574, %cst_573 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%555 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %557 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %558 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%557, %556 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1093 = tensor.pad %558 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1094 = tensor.collapse_shape %cst_570 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %559 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1093, %collapsed_1094 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %560 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559, %cst_567, %cst_566, %cst_569, %cst_568 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%559 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %561 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %562 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %560 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %563 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%562, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %564 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%563 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %565 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_564 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %566 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%564, %cst_565 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%565 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %567 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %568 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %566 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_562 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %570 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%568, %cst_563 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%569 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %571 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %572 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571, %562 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %573 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%572, %cst_561 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %574 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573, %cst_558, %cst_557, %cst_560, %cst_559 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%573 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %575 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %554 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %576 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%575, %cst_556 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %577 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %cst_553, %cst_552, %cst_555, %cst_554 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%576 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %578 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%577 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %579 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578, %577 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1095 = tensor.pad %579 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1096 = tensor.collapse_shape %cst_551 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %580 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1095, %collapsed_1096 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %581 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %cst_548, %cst_547, %cst_550, %cst_549 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%580 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %582 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %583 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %581 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %584 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%583, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %585 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_545 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %587 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%585, %cst_546 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%586 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %588 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %589 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588, %587 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_543 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %591 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%589, %cst_544 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%590 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %592 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %593 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592, %583 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %594 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%593, %cst_542 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %595 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594, %cst_539, %cst_538, %cst_541, %cst_540 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%594 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %596 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%595, %575 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %597 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%596, %cst_537 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %598 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%597, %cst_534, %cst_533, %cst_536, %cst_535 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%597 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %599 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %600 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%599, %598 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1097 = tensor.pad %600 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x40x40xf32>
    %collapsed_1098 = tensor.collapse_shape %cst_532 [[0, 1], [2], [3]] : tensor<960x1x3x3xf32> into tensor<960x3x3xf32>
    %601 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1097, %collapsed_1098 : tensor<1x960x40x40xf32>, tensor<960x3x3xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %602 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601, %cst_529, %cst_528, %cst_531, %cst_530 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%601 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %603 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %604 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603, %602 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %605 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%604, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %606 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%605 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %607 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_526 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %608 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%606, %cst_527 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%607 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %609 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %610 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609, %608 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %611 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_524 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %612 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%610, %cst_525 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%611 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %613 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%612 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %614 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %604 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %615 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%614, %cst_523 : tensor<1x960x38x38xf32>, tensor<160x960x1x1xf32>) outs(%421 : tensor<1x160x38x38xf32>) -> tensor<1x160x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %616 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615, %cst_520, %cst_519, %cst_522, %cst_521 : tensor<1x160x38x38xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>, tensor<160xf32>) outs(%615 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x160x38x38xf32>
    %617 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616, %596 : tensor<1x160x38x38xf32>, tensor<1x160x38x38xf32>) outs(%420 : tensor<1x160x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x38x38xf32>
    %618 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%617, %cst_518 : tensor<1x160x38x38xf32>, tensor<960x160x1x1xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %619 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%618, %cst_515, %cst_514, %cst_517, %cst_516 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%618 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %620 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%619 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %621 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620, %619 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %padded_1099 = tensor.pad %621 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x960x38x38xf32> to tensor<1x960x42x42xf32>
    %collapsed_1100 = tensor.collapse_shape %cst_513 [[0, 1], [2], [3]] : tensor<960x1x5x5xf32> into tensor<960x5x5xf32>
    %622 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1099, %collapsed_1100 : tensor<1x960x42x42xf32>, tensor<960x5x5xf32>) outs(%425 : tensor<1x960x38x38xf32>) -> tensor<1x960x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %623 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622, %cst_510, %cst_509, %cst_512, %cst_511 : tensor<1x960x38x38xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>, tensor<960xf32>) outs(%622 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x960x38x38xf32>
    %624 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%623 : tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x38x38xf32>
    %625 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%624, %623 : tensor<1x960x38x38xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %626 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%625, %409 : tensor<1x960x38x38xf32>, tensor<38x38xf32>) outs(%435 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %627 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x1x1xf32>
    %628 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_507 : tensor<40xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x40x1x1xf32>
    %629 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%627, %cst_508 : tensor<1x960x1x1xf32>, tensor<40x960x1x1xf32>) outs(%628 : tensor<1x40x1x1xf32>) -> tensor<1x40x1x1xf32>
    %630 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%629 : tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x40x1x1xf32>
    %631 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%630, %629 : tensor<1x40x1x1xf32>, tensor<1x40x1x1xf32>) outs(%438 : tensor<1x40x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x40x1x1xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_505 : tensor<960xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x960x1x1xf32>
    %633 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%631, %cst_506 : tensor<1x40x1x1xf32>, tensor<960x40x1x1xf32>) outs(%632 : tensor<1x960x1x1xf32>) -> tensor<1x960x1x1xf32>
    %634 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x960x1x1xf32>) outs(%434 : tensor<1x960x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x960x1x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634, %625 : tensor<1x960x1x1xf32>, tensor<1x960x38x38xf32>) outs(%424 : tensor<1x960x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x960x38x38xf32>
    %636 = tensor.empty() : tensor<1x224x38x38xf32>
    %637 = linalg.fill ins(%cst_1036 : f32) outs(%636 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    %638 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%635, %cst_504 : tensor<1x960x38x38xf32>, tensor<224x960x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %639 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638, %cst_501, %cst_500, %cst_503, %cst_502 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%638 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %640 = tensor.empty() : tensor<1x1344x38x38xf32>
    %641 = linalg.fill ins(%cst_1036 : f32) outs(%640 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    %642 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%639, %cst_499 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %643 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%642, %cst_496, %cst_495, %cst_498, %cst_497 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%642 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %644 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %645 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %643 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1101 = tensor.pad %645 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1102 = tensor.collapse_shape %cst_494 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %646 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1101, %collapsed_1102 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %647 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %cst_491, %cst_490, %cst_493, %cst_492 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%646 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %648 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %649 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%648, %647 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %650 = tensor.empty() : tensor<1x1344x1x1xf32>
    %651 = linalg.fill ins(%cst_1036 : f32) outs(%650 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %652 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%649, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %653 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %654 = tensor.empty() : tensor<1x56x1x1xf32>
    %655 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_488 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %656 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%653, %cst_489 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%655 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %657 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %658 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%657, %656 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %659 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_486 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %660 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%658, %cst_487 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%659 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %661 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%660 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %662 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661, %649 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %663 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%662, %cst_485 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %664 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%663 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %665 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664, %639 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %666 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%665, %cst_480 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %667 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%666 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %668 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%667 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %669 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668, %667 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1103 = tensor.pad %669 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1104 = tensor.collapse_shape %cst_475 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %670 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1103, %collapsed_1104 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %671 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%670 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %672 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %673 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %671 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %674 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%673, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %675 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_469 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %677 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%675, %cst_470 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%676 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %678 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %679 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%678, %677 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %680 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_467 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %681 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%679, %cst_468 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%680 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %682 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %683 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682, %673 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %684 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%683, %cst_466 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %685 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%684, %cst_463, %cst_462, %cst_465, %cst_464 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%684 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %686 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%685, %665 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %687 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%686, %cst_461 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %688 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%687, %cst_458, %cst_457, %cst_460, %cst_459 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%687 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %689 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %690 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%689, %688 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1105 = tensor.pad %690 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1106 = tensor.collapse_shape %cst_456 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %691 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1105, %collapsed_1106 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %692 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691, %cst_453, %cst_452, %cst_455, %cst_454 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%691 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %693 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %694 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693, %692 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %695 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%694, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %696 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%695 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %697 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_450 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %698 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%696, %cst_451 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%697 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %699 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %700 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699, %698 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %701 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_448 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %702 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%700, %cst_449 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%701 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %703 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%702 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %704 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %694 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %705 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%704, %cst_447 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %706 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705, %cst_444, %cst_443, %cst_446, %cst_445 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%705 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %707 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706, %686 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %708 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%707, %cst_442 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %709 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%708, %cst_439, %cst_438, %cst_441, %cst_440 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%708 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %710 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%709 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %711 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710, %709 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1107 = tensor.pad %711 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1108 = tensor.collapse_shape %cst_437 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %712 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1107, %collapsed_1108 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %713 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %cst_434, %cst_433, %cst_436, %cst_435 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%712 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %714 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%713 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %715 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714, %713 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %716 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%715, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %717 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %718 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_431 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %719 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%717, %cst_432 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%718 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %720 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%719 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %721 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720, %719 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %722 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_429 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %723 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%721, %cst_430 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%722 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %724 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %725 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724, %715 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %726 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%725, %cst_428 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %727 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %cst_425, %cst_424, %cst_427, %cst_426 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%726 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %728 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%727, %707 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %729 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%728, %cst_423 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %730 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729, %cst_420, %cst_419, %cst_422, %cst_421 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%729 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %731 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %732 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731, %730 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1109 = tensor.pad %732 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1110 = tensor.collapse_shape %cst_418 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %733 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1109, %collapsed_1110 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %734 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %cst_415, %cst_414, %cst_417, %cst_416 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%733 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %735 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %736 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735, %734 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %737 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%736, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %738 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%737 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %739 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_412 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %740 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%738, %cst_413 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%739 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %741 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %742 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741, %740 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %743 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_410 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %744 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%742, %cst_411 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%743 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %745 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%744 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %746 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%745, %736 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %747 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%746, %cst_409 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %748 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%747, %cst_406, %cst_405, %cst_408, %cst_407 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%747 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %749 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748, %728 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %750 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%749, %cst_404 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %751 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%750, %cst_401, %cst_400, %cst_403, %cst_402 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%750 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %752 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %753 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %751 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1111 = tensor.pad %753 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1112 = tensor.collapse_shape %cst_399 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %754 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1111, %collapsed_1112 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %755 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754, %cst_396, %cst_395, %cst_398, %cst_397 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%754 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %756 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%755 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %757 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %755 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %758 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%757, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %759 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %760 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_393 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %761 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%759, %cst_394 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%760 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %762 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %763 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%762, %761 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %764 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_391 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %765 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%763, %cst_392 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%764 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %766 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %767 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766, %757 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %768 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%767, %cst_390 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %769 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%768 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %770 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%769, %749 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %771 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%770, %cst_385 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %772 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%771 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %773 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %774 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%773, %772 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1113 = tensor.pad %774 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1114 = tensor.collapse_shape %cst_380 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %775 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1113, %collapsed_1114 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %776 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%775, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%775 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %777 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %778 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %776 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %779 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%778, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %780 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %781 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_374 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %782 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%780, %cst_375 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%781 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %783 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %784 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783, %782 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %785 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_372 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %786 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%784, %cst_373 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%785 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %787 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %788 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%787, %778 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %789 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%788, %cst_371 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %790 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789, %cst_368, %cst_367, %cst_370, %cst_369 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%789 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %791 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790, %770 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %792 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%791, %cst_366 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %793 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%792, %cst_363, %cst_362, %cst_365, %cst_364 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%792 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %794 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %795 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794, %793 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1115 = tensor.pad %795 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1116 = tensor.collapse_shape %cst_361 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %796 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1115, %collapsed_1116 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %797 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796, %cst_358, %cst_357, %cst_360, %cst_359 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%796 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %798 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%797 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %799 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%798, %797 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %800 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%799, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %801 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%800 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %802 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_355 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %803 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%801, %cst_356 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%802 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %804 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%803 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %805 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%804, %803 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %806 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_353 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %807 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%805, %cst_354 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%806 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %808 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%807 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %809 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %799 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %810 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%809, %cst_352 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %811 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%810, %cst_349, %cst_348, %cst_351, %cst_350 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%810 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %812 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811, %791 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %813 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%812, %cst_347 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %814 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813, %cst_344, %cst_343, %cst_346, %cst_345 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%813 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %815 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %816 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%815, %814 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1117 = tensor.pad %816 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %collapsed_1118 = tensor.collapse_shape %cst_342 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %817 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1117, %collapsed_1118 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %818 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%817, %cst_339, %cst_338, %cst_341, %cst_340 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%817 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %819 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %820 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819, %818 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %821 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%820, %409 : tensor<1x1344x38x38xf32>, tensor<38x38xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %822 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%821 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1042 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %823 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_336 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %824 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%822, %cst_337 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%823 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %825 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %826 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825, %824 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %827 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_334 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %828 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%826, %cst_335 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%827 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %829 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%828 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %830 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829, %820 : tensor<1x1344x1x1xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %831 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%830, %cst_333 : tensor<1x1344x38x38xf32>, tensor<224x1344x1x1xf32>) outs(%637 : tensor<1x224x38x38xf32>) -> tensor<1x224x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %832 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831, %cst_330, %cst_329, %cst_332, %cst_331 : tensor<1x224x38x38xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>, tensor<224xf32>) outs(%831 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x224x38x38xf32>
    %833 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832, %812 : tensor<1x224x38x38xf32>, tensor<1x224x38x38xf32>) outs(%636 : tensor<1x224x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x224x38x38xf32>
    %834 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%833, %cst_328 : tensor<1x224x38x38xf32>, tensor<1344x224x1x1xf32>) outs(%641 : tensor<1x1344x38x38xf32>) -> tensor<1x1344x38x38xf32>
    cf.assert %3, "training is not supported for now"
    %835 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%834, %cst_325, %cst_324, %cst_327, %cst_326 : tensor<1x1344x38x38xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%834 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x38x38xf32>
    %836 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%835 : tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x38x38xf32>
    %837 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836, %835 : tensor<1x1344x38x38xf32>, tensor<1x1344x38x38xf32>) outs(%640 : tensor<1x1344x38x38xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x38x38xf32>
    %padded_1119 = tensor.pad %837 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x1344x38x38xf32> to tensor<1x1344x42x42xf32>
    %838 = tensor.empty() : tensor<1x1344x19x19xf32>
    %839 = linalg.fill ins(%cst_1036 : f32) outs(%838 : tensor<1x1344x19x19xf32>) -> tensor<1x1344x19x19xf32>
    %collapsed_1120 = tensor.collapse_shape %cst_323 [[0, 1], [2], [3]] : tensor<1344x1x5x5xf32> into tensor<1344x5x5xf32>
    %840 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_1119, %collapsed_1120 : tensor<1x1344x42x42xf32>, tensor<1344x5x5xf32>) outs(%839 : tensor<1x1344x19x19xf32>) -> tensor<1x1344x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %841 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%840, %cst_320, %cst_319, %cst_322, %cst_321 : tensor<1x1344x19x19xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>, tensor<1344xf32>) outs(%840 : tensor<1x1344x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x1344x19x19xf32>
    %842 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841 : tensor<1x1344x19x19xf32>) outs(%838 : tensor<1x1344x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x19x19xf32>
    %843 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %841 : tensor<1x1344x19x19xf32>, tensor<1x1344x19x19xf32>) outs(%838 : tensor<1x1344x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x19x19xf32>
    %844 = tensor.empty() : tensor<19x19xf32>
    %845 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%843, %844 : tensor<1x1344x19x19xf32>, tensor<19x19xf32>) outs(%651 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %846 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%845 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x1x1xf32>
    %847 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_317 : tensor<56xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x1x1xf32>
    %848 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%846, %cst_318 : tensor<1x1344x1x1xf32>, tensor<56x1344x1x1xf32>) outs(%847 : tensor<1x56x1x1xf32>) -> tensor<1x56x1x1xf32>
    %849 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848 : tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x56x1x1xf32>
    %850 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849, %848 : tensor<1x56x1x1xf32>, tensor<1x56x1x1xf32>) outs(%654 : tensor<1x56x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x56x1x1xf32>
    %851 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_315 : tensor<1344xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1344x1x1xf32>
    %852 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%850, %cst_316 : tensor<1x56x1x1xf32>, tensor<1344x56x1x1xf32>) outs(%851 : tensor<1x1344x1x1xf32>) -> tensor<1x1344x1x1xf32>
    %853 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%852 : tensor<1x1344x1x1xf32>) outs(%650 : tensor<1x1344x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x1344x1x1xf32>
    %854 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %843 : tensor<1x1344x1x1xf32>, tensor<1x1344x19x19xf32>) outs(%838 : tensor<1x1344x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1344x19x19xf32>
    %855 = tensor.empty() : tensor<1x384x19x19xf32>
    %856 = linalg.fill ins(%cst_1036 : f32) outs(%855 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    %857 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%854, %cst_314 : tensor<1x1344x19x19xf32>, tensor<384x1344x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %858 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%857, %cst_311, %cst_310, %cst_313, %cst_312 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%857 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %859 = tensor.empty() : tensor<1x2304x19x19xf32>
    %860 = linalg.fill ins(%cst_1036 : f32) outs(%859 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    %861 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%858, %cst_309 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %862 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %cst_306, %cst_305, %cst_308, %cst_307 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%861 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %863 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %864 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%863, %862 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1121 = tensor.pad %864 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1122 = tensor.collapse_shape %cst_304 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %865 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1121, %collapsed_1122 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %866 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865, %cst_301, %cst_300, %cst_303, %cst_302 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%865 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %867 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %868 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%867, %866 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %869 = tensor.empty() : tensor<1x2304x1x1xf32>
    %870 = linalg.fill ins(%cst_1036 : f32) outs(%869 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %871 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%868, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %872 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %873 = tensor.empty() : tensor<1x96x1x1xf32>
    %874 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_298 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %875 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%872, %cst_299 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%874 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %876 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%875 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %877 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876, %875 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %878 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_296 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %879 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%877, %cst_297 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%878 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %880 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %881 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880, %868 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %882 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%881, %cst_295 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %883 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%882, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%882 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %884 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883, %858 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %885 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%884, %cst_290 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %886 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%885 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %887 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %888 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%887, %886 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1123 = tensor.pad %888 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1124 = tensor.collapse_shape %cst_285 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %889 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1123, %collapsed_1124 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %890 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%889, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%889 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %891 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %892 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891, %890 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %893 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%892, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %894 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%893 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %895 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_279 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %896 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%894, %cst_280 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%895 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %897 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%896 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %898 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%897, %896 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %899 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_277 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %900 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%898, %cst_278 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%899 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %901 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%900 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %902 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901, %892 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %903 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%902, %cst_276 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %904 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903, %cst_273, %cst_272, %cst_275, %cst_274 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%903 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %905 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904, %884 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %906 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%905, %cst_271 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %907 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906, %cst_268, %cst_267, %cst_270, %cst_269 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%906 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %908 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%907 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %909 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%908, %907 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1125 = tensor.pad %909 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1126 = tensor.collapse_shape %cst_266 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %910 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1125, %collapsed_1126 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %911 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910, %cst_263, %cst_262, %cst_265, %cst_264 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%910 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %912 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %913 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%912, %911 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %914 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%913, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %915 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%914 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %916 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_260 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %917 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%915, %cst_261 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%916 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %918 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%917 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %919 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%918, %917 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %920 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_258 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %921 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%919, %cst_259 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%920 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %922 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%921 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %923 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922, %913 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %924 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%923, %cst_257 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %925 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%924, %cst_254, %cst_253, %cst_256, %cst_255 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%924 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %926 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%925, %905 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %927 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%926, %cst_252 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %928 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%927, %cst_249, %cst_248, %cst_251, %cst_250 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%927 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %929 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %930 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%929, %928 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1127 = tensor.pad %930 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1128 = tensor.collapse_shape %cst_247 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %931 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1127, %collapsed_1128 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %932 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931, %cst_244, %cst_243, %cst_246, %cst_245 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%931 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %933 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%932 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %934 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933, %932 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %935 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%934, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %936 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%935 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %937 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_241 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %938 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%936, %cst_242 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%937 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %939 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %940 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%939, %938 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %941 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_239 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %942 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%940, %cst_240 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%941 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %943 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%942 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %944 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %934 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %945 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%944, %cst_238 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %946 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945, %cst_235, %cst_234, %cst_237, %cst_236 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%945 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %947 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946, %926 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %948 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%947, %cst_233 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %949 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%948, %cst_230, %cst_229, %cst_232, %cst_231 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%948 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %950 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%949 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %951 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%950, %949 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1129 = tensor.pad %951 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1130 = tensor.collapse_shape %cst_228 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %952 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1129, %collapsed_1130 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %953 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952, %cst_225, %cst_224, %cst_227, %cst_226 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%952 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %954 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%953 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %955 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%954, %953 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %956 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%955, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %957 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %958 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_222 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %959 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%957, %cst_223 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%958 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %960 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%959 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %961 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%960, %959 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %962 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_220 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %963 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%961, %cst_221 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%962 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %964 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%963 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %965 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%964, %955 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %966 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%965, %cst_219 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %967 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966, %cst_216, %cst_215, %cst_218, %cst_217 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%966 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %968 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%967, %947 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %969 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%968, %cst_214 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %970 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969, %cst_211, %cst_210, %cst_213, %cst_212 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%969 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %971 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %972 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%971, %970 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1131 = tensor.pad %972 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1132 = tensor.collapse_shape %cst_209 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %973 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1131, %collapsed_1132 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %974 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%973, %cst_206, %cst_205, %cst_208, %cst_207 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%973 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %975 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%974 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %976 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%975, %974 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %977 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%976, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %978 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%977 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %979 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_203 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %980 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%978, %cst_204 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%979 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %981 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %982 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981, %980 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %983 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_201 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %984 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%982, %cst_202 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%983 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %985 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%984 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %986 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%985, %976 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %987 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%986, %cst_200 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %988 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%987, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%987 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %989 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%988, %968 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %990 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%989, %cst_195 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %991 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%990, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%990 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %992 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %993 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992, %991 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1133 = tensor.pad %993 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1134 = tensor.collapse_shape %cst_190 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %994 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1133, %collapsed_1134 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %995 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%994 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %996 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%995 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %997 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %995 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %998 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%997, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %999 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1000 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_184 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1001 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%999, %cst_185 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1000 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1002 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1003 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1002, %1001 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1004 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_182 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1005 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1003, %cst_183 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1004 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1006 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1005 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1007 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006, %997 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1008 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1007, %cst_181 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1009 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1008, %cst_178, %cst_177, %cst_180, %cst_179 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1008 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1010 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1009, %989 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1011 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1010, %cst_176 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1012 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1011, %cst_173, %cst_172, %cst_175, %cst_174 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1011 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1013 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1012 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1014 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1013, %1012 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1135 = tensor.pad %1014 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1136 = tensor.collapse_shape %cst_171 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %1015 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1135, %collapsed_1136 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1016 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1015, %cst_168, %cst_167, %cst_170, %cst_169 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1015 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1017 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1018 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1017, %1016 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1019 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1018, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1020 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1019 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1021 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_165 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1022 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1020, %cst_166 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1021 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1023 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1024 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1023, %1022 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1025 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_163 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1026 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1024, %cst_164 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1025 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1027 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1028 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1027, %1018 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1029 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1028, %cst_162 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1030 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1029, %cst_159, %cst_158, %cst_161, %cst_160 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1029 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1031 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1030, %1010 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1032 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1031, %cst_157 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1033 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1032, %cst_154, %cst_153, %cst_156, %cst_155 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1032 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1034 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1033 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1035 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1034, %1033 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1137 = tensor.pad %1035 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1138 = tensor.collapse_shape %cst_152 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %1036 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1137, %collapsed_1138 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1037 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1036, %cst_149, %cst_148, %cst_151, %cst_150 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1036 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1038 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1037 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1039 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1038, %1037 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1040 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1039, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1041 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1040 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1042 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1043 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1041, %cst_147 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1042 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1044 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1043 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1045 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1044, %1043 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1046 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_144 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1047 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1045, %cst_145 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1046 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1048 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1047 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1049 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048, %1039 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1050 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1049, %cst_143 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1051 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1050, %cst_140, %cst_139, %cst_142, %cst_141 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1050 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1052 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051, %1031 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1053 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1052, %cst_138 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1054 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1053, %cst_135, %cst_134, %cst_137, %cst_136 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1053 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1055 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1056 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1055, %1054 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1139 = tensor.pad %1056 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1140 = tensor.collapse_shape %cst_133 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %1057 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1139, %collapsed_1140 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1058 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1057, %cst_130, %cst_129, %cst_132, %cst_131 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1057 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1059 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1058 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1060 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059, %1058 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1061 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1060, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1062 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1061 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1063 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_127 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1064 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1062, %cst_128 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1063 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1065 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1066 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1065, %1064 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1067 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_125 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1068 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1066, %cst_126 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1067 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1069 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1068 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1070 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1069, %1060 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1071 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1070, %cst_124 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1072 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1071, %cst_121, %cst_120, %cst_123, %cst_122 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1071 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1073 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1072, %1052 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1074 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1073, %cst_119 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1075 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1074, %cst_116, %cst_115, %cst_118, %cst_117 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1074 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1076 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1075 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1077 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1076, %1075 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1141 = tensor.pad %1077 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1142 = tensor.collapse_shape %cst_114 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %1078 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1141, %collapsed_1142 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1079 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1078, %cst_111, %cst_110, %cst_113, %cst_112 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1078 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1080 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1079 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1081 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080, %1079 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1082 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1081, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1082 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1084 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_108 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1085 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1083, %cst_109 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1084 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1086 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1085 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1087 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1086, %1085 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1088 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_106 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1089 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1087, %cst_107 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1088 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1090 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1089 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1091 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1090, %1081 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1092 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1091, %cst_105 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1093 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1092 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1094 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1093, %1073 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1095 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1094, %cst_100 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1096 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1095, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1095 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1097 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1096 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1098 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1097, %1096 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1143 = tensor.pad %1098 low[0, 0, 2, 2] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x23x23xf32>
    %collapsed_1144 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<2304x1x5x5xf32> into tensor<2304x5x5xf32>
    %1099 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1143, %collapsed_1144 : tensor<1x2304x23x23xf32>, tensor<2304x5x5xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1100 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1099, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1099 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1101 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1100 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1102 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1101, %1100 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1103 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1102, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1104 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1103 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1105 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_89 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1104, %cst_90 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1105 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1107 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1106 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1108 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1107, %1106 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1109 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_87 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1110 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1108, %cst_88 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1109 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1111 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1110 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1112 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111, %1102 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1113 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1112, %cst_86 : tensor<1x2304x19x19xf32>, tensor<384x2304x1x1xf32>) outs(%856 : tensor<1x384x19x19xf32>) -> tensor<1x384x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1114 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1113, %cst_83, %cst_82, %cst_85, %cst_84 : tensor<1x384x19x19xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>, tensor<384xf32>) outs(%1113 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x384x19x19xf32>
    %1115 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114, %1094 : tensor<1x384x19x19xf32>, tensor<1x384x19x19xf32>) outs(%855 : tensor<1x384x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x384x19x19xf32>
    %1116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1115, %cst_81 : tensor<1x384x19x19xf32>, tensor<2304x384x1x1xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1116, %cst_78, %cst_77, %cst_80, %cst_79 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1116 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1117 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1119 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1118, %1117 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %padded_1145 = tensor.pad %1119 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x2304x19x19xf32> to tensor<1x2304x21x21xf32>
    %collapsed_1146 = tensor.collapse_shape %cst_76 [[0, 1], [2], [3]] : tensor<2304x1x3x3xf32> into tensor<2304x3x3xf32>
    %1120 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1145, %collapsed_1146 : tensor<1x2304x21x21xf32>, tensor<2304x3x3xf32>) outs(%860 : tensor<1x2304x19x19xf32>) -> tensor<1x2304x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1121 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1120, %cst_73, %cst_72, %cst_75, %cst_74 : tensor<1x2304x19x19xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>, tensor<2304xf32>) outs(%1120 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2304x19x19xf32>
    %1122 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1121 : tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x19x19xf32>
    %1123 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1122, %1121 : tensor<1x2304x19x19xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1124 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1123, %844 : tensor<1x2304x19x19xf32>, tensor<19x19xf32>) outs(%870 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1125 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1124 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x1x1xf32>
    %1126 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_70 : tensor<96xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x1x1xf32>
    %1127 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1125, %cst_71 : tensor<1x2304x1x1xf32>, tensor<96x2304x1x1xf32>) outs(%1126 : tensor<1x96x1x1xf32>) -> tensor<1x96x1x1xf32>
    %1128 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1127 : tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x96x1x1xf32>
    %1129 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1128, %1127 : tensor<1x96x1x1xf32>, tensor<1x96x1x1xf32>) outs(%873 : tensor<1x96x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x96x1x1xf32>
    %1130 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_68 : tensor<2304xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2304x1x1xf32>
    %1131 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1129, %cst_69 : tensor<1x96x1x1xf32>, tensor<2304x96x1x1xf32>) outs(%1130 : tensor<1x2304x1x1xf32>) -> tensor<1x2304x1x1xf32>
    %1132 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1131 : tensor<1x2304x1x1xf32>) outs(%869 : tensor<1x2304x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2304x1x1xf32>
    %1133 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1132, %1123 : tensor<1x2304x1x1xf32>, tensor<1x2304x19x19xf32>) outs(%859 : tensor<1x2304x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2304x19x19xf32>
    %1134 = tensor.empty() : tensor<1x640x19x19xf32>
    %1135 = linalg.fill ins(%cst_1036 : f32) outs(%1134 : tensor<1x640x19x19xf32>) -> tensor<1x640x19x19xf32>
    %1136 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1133, %cst_67 : tensor<1x2304x19x19xf32>, tensor<640x2304x1x1xf32>) outs(%1135 : tensor<1x640x19x19xf32>) -> tensor<1x640x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1137 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136, %cst_64, %cst_63, %cst_66, %cst_65 : tensor<1x640x19x19xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1136 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x640x19x19xf32>
    %1138 = tensor.empty() : tensor<1x3840x19x19xf32>
    %1139 = linalg.fill ins(%cst_1036 : f32) outs(%1138 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    %1140 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1137, %cst_62 : tensor<1x640x19x19xf32>, tensor<3840x640x1x1xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1141 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1140, %cst_59, %cst_58, %cst_61, %cst_60 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1140 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1142 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1141 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1143 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1142, %1141 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %padded_1147 = tensor.pad %1143 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x3840x19x19xf32> to tensor<1x3840x21x21xf32>
    %collapsed_1148 = tensor.collapse_shape %cst_57 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1144 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1147, %collapsed_1148 : tensor<1x3840x21x21xf32>, tensor<3840x3x3xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1145 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1144, %cst_54, %cst_53, %cst_56, %cst_55 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1144 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1146 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1145 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1147 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1146, %1145 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1148 = tensor.empty() : tensor<1x3840x1x1xf32>
    %1149 = linalg.fill ins(%cst_1036 : f32) outs(%1148 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1150 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1147, %844 : tensor<1x3840x19x19xf32>, tensor<19x19xf32>) outs(%1149 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1151 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1150 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x1x1xf32>
    %1152 = tensor.empty() : tensor<1x160x1x1xf32>
    %1153 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51 : tensor<160xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1154 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1151, %cst_52 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1153 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1155 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1154 : tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x160x1x1xf32>
    %1156 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1155, %1154 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x1x1xf32>
    %1157 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_49 : tensor<3840xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1158 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1156, %cst_50 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1157 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1159 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1158 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x1x1xf32>
    %1160 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1159, %1147 : tensor<1x3840x1x1xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1161 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1160, %cst_48 : tensor<1x3840x19x19xf32>, tensor<640x3840x1x1xf32>) outs(%1135 : tensor<1x640x19x19xf32>) -> tensor<1x640x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1162 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1161, %cst_45, %cst_44, %cst_47, %cst_46 : tensor<1x640x19x19xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1161 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x640x19x19xf32>
    %1163 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1162, %1137 : tensor<1x640x19x19xf32>, tensor<1x640x19x19xf32>) outs(%1134 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x640x19x19xf32>
    %1164 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1163, %cst_43 : tensor<1x640x19x19xf32>, tensor<3840x640x1x1xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1165 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1164, %cst_40, %cst_39, %cst_42, %cst_41 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1164 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1166 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1165 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1167 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1166, %1165 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %padded_1149 = tensor.pad %1167 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x3840x19x19xf32> to tensor<1x3840x21x21xf32>
    %collapsed_1150 = tensor.collapse_shape %cst_38 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1168 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1149, %collapsed_1150 : tensor<1x3840x21x21xf32>, tensor<3840x3x3xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1169 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168, %cst_35, %cst_34, %cst_37, %cst_36 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1168 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1170 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1169 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1171 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1170, %1169 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1172 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1171, %844 : tensor<1x3840x19x19xf32>, tensor<19x19xf32>) outs(%1149 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1173 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1172 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x1x1xf32>
    %1174 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_32 : tensor<160xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1175 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1173, %cst_33 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1174 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1176 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1175 : tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x160x1x1xf32>
    %1177 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176, %1175 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x1x1xf32>
    %1178 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<3840xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1179 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1177, %cst_31 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1178 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1180 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x1x1xf32>
    %1181 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1180, %1171 : tensor<1x3840x1x1xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1181, %cst_29 : tensor<1x3840x19x19xf32>, tensor<640x3840x1x1xf32>) outs(%1135 : tensor<1x640x19x19xf32>) -> tensor<1x640x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1182, %cst_26, %cst_25, %cst_28, %cst_27 : tensor<1x640x19x19xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1182 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x640x19x19xf32>
    %1184 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1183, %1163 : tensor<1x640x19x19xf32>, tensor<1x640x19x19xf32>) outs(%1134 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x640x19x19xf32>
    %1185 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1184, %cst_24 : tensor<1x640x19x19xf32>, tensor<3840x640x1x1xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1186 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1185, %cst_21, %cst_20, %cst_23, %cst_22 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1185 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1187 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1186 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1188 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1187, %1186 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %padded_1151 = tensor.pad %1188 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_1036 : f32
    } : tensor<1x3840x19x19xf32> to tensor<1x3840x21x21xf32>
    %collapsed_1152 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<3840x1x3x3xf32> into tensor<3840x3x3xf32>
    %1189 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_1151, %collapsed_1152 : tensor<1x3840x21x21xf32>, tensor<3840x3x3xf32>) outs(%1139 : tensor<1x3840x19x19xf32>) -> tensor<1x3840x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1189, %cst_16, %cst_15, %cst_18, %cst_17 : tensor<1x3840x19x19xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>, tensor<3840xf32>) outs(%1189 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x3840x19x19xf32>
    %1191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1190 : tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x19x19xf32>
    %1192 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1191, %1190 : tensor<1x3840x19x19xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1193 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1192, %844 : tensor<1x3840x19x19xf32>, tensor<19x19xf32>) outs(%1149 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1194 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1193 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x1x1xf32>
    %1195 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_13 : tensor<160xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x160x1x1xf32>
    %1196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1194, %cst_14 : tensor<1x3840x1x1xf32>, tensor<160x3840x1x1xf32>) outs(%1195 : tensor<1x160x1x1xf32>) -> tensor<1x160x1x1xf32>
    %1197 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1196 : tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x160x1x1xf32>
    %1198 = linalg.generic {indexing_maps = [#map3, #map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1197, %1196 : tensor<1x160x1x1xf32>, tensor<1x160x1x1xf32>) outs(%1152 : tensor<1x160x1x1xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x160x1x1xf32>
    %1199 = linalg.generic {indexing_maps = [#map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11 : tensor<3840xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x3840x1x1xf32>
    %1200 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1198, %cst_12 : tensor<1x160x1x1xf32>, tensor<3840x160x1x1xf32>) outs(%1199 : tensor<1x3840x1x1xf32>) -> tensor<1x3840x1x1xf32>
    %1201 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1200 : tensor<1x3840x1x1xf32>) outs(%1148 : tensor<1x3840x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x3840x1x1xf32>
    %1202 = linalg.generic {indexing_maps = [#map3, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1201, %1192 : tensor<1x3840x1x1xf32>, tensor<1x3840x19x19xf32>) outs(%1138 : tensor<1x3840x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x3840x19x19xf32>
    %1203 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1202, %cst_10 : tensor<1x3840x19x19xf32>, tensor<640x3840x1x1xf32>) outs(%1135 : tensor<1x640x19x19xf32>) -> tensor<1x640x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1204 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1203, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x640x19x19xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>, tensor<640xf32>) outs(%1203 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x640x19x19xf32>
    %1205 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1204, %1184 : tensor<1x640x19x19xf32>, tensor<1x640x19x19xf32>) outs(%1134 : tensor<1x640x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x640x19x19xf32>
    %1206 = tensor.empty() : tensor<1x2560x19x19xf32>
    %1207 = linalg.fill ins(%cst_1036 : f32) outs(%1206 : tensor<1x2560x19x19xf32>) -> tensor<1x2560x19x19xf32>
    %1208 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1205, %cst_5 : tensor<1x640x19x19xf32>, tensor<2560x640x1x1xf32>) outs(%1207 : tensor<1x2560x19x19xf32>) -> tensor<1x2560x19x19xf32>
    cf.assert %3, "training is not supported for now"
    %1209 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1208, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x2560x19x19xf32>, tensor<2560xf32>, tensor<2560xf32>, tensor<2560xf32>, tensor<2560xf32>) outs(%1208 : tensor<1x2560x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %in_1155: f32, %in_1156: f32, %in_1157: f32, %out: f32):
      %1222 = arith.truncf %cst_1038 : f64 to f32
      %1223 = arith.addf %in_1157, %1222 : f32
      %1224 = math.rsqrt %1223 : f32
      %1225 = arith.subf %in, %in_1156 : f32
      %1226 = arith.mulf %1225, %1224 : f32
      %1227 = arith.mulf %1226, %in_1154 : f32
      %1228 = arith.addf %1227, %in_1155 : f32
      linalg.yield %1228 : f32
    } -> tensor<1x2560x19x19xf32>
    %1210 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1209 : tensor<1x2560x19x19xf32>) outs(%1206 : tensor<1x2560x19x19xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.negf %in : f32
      %1223 = math.exp %1222 : f32
      %1224 = arith.addf %1223, %cst_1037 : f32
      %1225 = arith.divf %cst_1037, %1224 : f32
      linalg.yield %1225 : f32
    } -> tensor<1x2560x19x19xf32>
    %1211 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1210, %1209 : tensor<1x2560x19x19xf32>, tensor<1x2560x19x19xf32>) outs(%1206 : tensor<1x2560x19x19xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.mulf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2560x19x19xf32>
    %1212 = tensor.empty() : tensor<1x2560x1x1xf32>
    %1213 = linalg.fill ins(%cst_1036 : f32) outs(%1212 : tensor<1x2560x1x1xf32>) -> tensor<1x2560x1x1xf32>
    %1214 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1211, %844 : tensor<1x2560x19x19xf32>, tensor<19x19xf32>) outs(%1213 : tensor<1x2560x1x1xf32>) -> tensor<1x2560x1x1xf32>
    %1215 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1214 : tensor<1x2560x1x1xf32>) outs(%1212 : tensor<1x2560x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1222 = arith.divf %in, %cst_1043 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x2560x1x1xf32>
    %collapsed_1153 = tensor.collapse_shape %1215 [[0], [1, 2, 3]] : tensor<1x2560x1x1xf32> into tensor<1x2560xf32>
    %1216 = tensor.empty() : tensor<2560x1000xf32>
    %1217 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x2560xf32>) outs(%1216 : tensor<2560x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2560x1000xf32>
    %1218 = tensor.empty() : tensor<1x1000xf32>
    %1219 = linalg.fill ins(%cst_1036 : f32) outs(%1218 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1220 = linalg.matmul ins(%collapsed_1153, %1217 : tensor<1x2560xf32>, tensor<2560x1000xf32>) outs(%1219 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1221 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%1220, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1218 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_1154: f32, %out: f32):
      %1222 = arith.addf %in, %in_1154 : f32
      linalg.yield %1222 : f32
    } -> tensor<1x1000xf32>
    return %1221 : tensor<1x1000xf32>
  }
}
