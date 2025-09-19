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
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<2048x2048x1x1xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<2048x32x3x3xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<2048x2048x1x1xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<2048x2048x1x1xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<2048x32x3x3xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<2048x2048x1x1xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<2048x2048x1x1xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<2048x32x3x3xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<2048xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<2048x1024x1x1xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_343 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_344 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_345 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_346 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_347 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_348 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_349 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_350 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_351 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_352 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_353 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_354 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_355 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_356 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_357 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_358 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_359 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_360 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_361 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_362 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_363 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_364 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_365 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_366 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_367 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_368 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_369 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_370 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_371 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_372 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_373 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_374 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_375 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_376 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_377 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_378 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_379 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_380 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_381 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_382 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_383 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_384 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_385 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_386 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_387 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_388 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_389 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_390 = arith.constant dense_resource<__elided__> : tensor<1024x1024x1x1xf32>
    %cst_391 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_392 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_393 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_394 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_395 = arith.constant dense_resource<__elided__> : tensor<1024x16x3x3xf32>
    %cst_396 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_397 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_398 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_399 = arith.constant dense_resource<__elided__> : tensor<1024xf32>
    %cst_400 = arith.constant dense_resource<__elided__> : tensor<1024x512x1x1xf32>
    %cst_401 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_402 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_403 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_404 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_405 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_406 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_407 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_408 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_409 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_410 = arith.constant dense_resource<__elided__> : tensor<512x8x3x3xf32>
    %cst_411 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_412 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_413 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_414 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_415 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_416 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_417 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_418 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_419 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_420 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_421 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_422 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_423 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_424 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_425 = arith.constant dense_resource<__elided__> : tensor<512x8x3x3xf32>
    %cst_426 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_427 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_428 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_429 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_430 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_431 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_432 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_433 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_434 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_435 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_436 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_437 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_438 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_439 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_440 = arith.constant dense_resource<__elided__> : tensor<512x8x3x3xf32>
    %cst_441 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_442 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_443 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_444 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_445 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_446 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_447 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_448 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_449 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_450 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_451 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_452 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_453 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_454 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_455 = arith.constant dense_resource<__elided__> : tensor<512x512x1x1xf32>
    %cst_456 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_457 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_458 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_459 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_460 = arith.constant dense_resource<__elided__> : tensor<512x8x3x3xf32>
    %cst_461 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_462 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_463 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_464 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_465 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_466 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_467 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_468 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_469 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_470 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_471 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_472 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_473 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_474 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_475 = arith.constant dense_resource<__elided__> : tensor<256x4x3x3xf32>
    %cst_476 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_477 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_478 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_479 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_480 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_481 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_482 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_483 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_484 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_485 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_486 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_487 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_488 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_489 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_490 = arith.constant dense_resource<__elided__> : tensor<256x4x3x3xf32>
    %cst_491 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_492 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_493 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_494 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_495 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_496 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_497 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_498 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_499 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_500 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_501 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_502 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_503 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_504 = arith.constant dense_resource<__elided__> : tensor<256x256x1x1xf32>
    %cst_505 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_506 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_507 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_508 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_509 = arith.constant dense_resource<__elided__> : tensor<256x4x3x3xf32>
    %cst_510 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_511 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_512 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_513 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_514 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
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
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x64x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_524 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_521 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %6 = tensor.empty() : tensor<1x64x56x56xf32>
    %7 = linalg.fill ins(%cst_521 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_524, %8 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = tensor.empty() : tensor<1x256x56x56xf32>
    %11 = linalg.fill ins(%cst_520 : f32) outs(%10 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    %12 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_514 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %13 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12, %cst_511, %cst_510, %cst_513, %cst_512 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%12 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_525 = tensor.pad %14 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %cast = tensor.cast %padded_525 : tensor<1x256x58x58xf32> to tensor<?x?x?x?xf32>
    %cast_526 = tensor.cast %11 : tensor<1x256x56x56xf32> to tensor<1x256x?x?xf32>
    %expanded = tensor.expand_shape %cast [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_527 = tensor.expand_shape %cst_509 [[0, 1], [2], [3], [4]] : tensor<256x4x3x3xf32> into tensor<64x4x4x3x3xf32>
    %expanded_528 = tensor.expand_shape %cast_526 [[0], [1, 2], [3], [4]] : tensor<1x256x?x?xf32> into tensor<1x64x4x?x?xf32>
    %15 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded, %expanded_527 : tensor<?x64x?x?x?xf32>, tensor<64x4x4x3x3xf32>) outs(%expanded_528 : tensor<1x64x4x?x?xf32>) -> tensor<1x64x4x?x?xf32>
    %collapsed = tensor.collapse_shape %15 [[0], [1, 2], [3], [4]] : tensor<1x64x4x?x?xf32> into tensor<1x256x?x?xf32>
    %cast_529 = tensor.cast %collapsed : tensor<1x256x?x?xf32> to tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %16 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_529, %cst_506, %cst_505, %cst_508, %cst_507 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%cast_529 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%17, %cst_504 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_501, %cst_500, %cst_503, %cst_502 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%18 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %20 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%9, %cst_499 : tensor<1x64x56x56xf32>, tensor<256x64x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %21 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %cst_496, %cst_500, %cst_498, %cst_497 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%20 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %21 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %24 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%23, %cst_495 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %25 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24, %cst_492, %cst_491, %cst_494, %cst_493 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%24 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_530 = tensor.pad %26 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %cast_531 = tensor.cast %padded_530 : tensor<1x256x58x58xf32> to tensor<?x?x?x?xf32>
    %expanded_532 = tensor.expand_shape %cast_531 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_533 = tensor.expand_shape %cst_490 [[0, 1], [2], [3], [4]] : tensor<256x4x3x3xf32> into tensor<64x4x4x3x3xf32>
    %27 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_532, %expanded_533 : tensor<?x64x?x?x?xf32>, tensor<64x4x4x3x3xf32>) outs(%expanded_528 : tensor<1x64x4x?x?xf32>) -> tensor<1x64x4x?x?xf32>
    %collapsed_534 = tensor.collapse_shape %27 [[0], [1, 2], [3], [4]] : tensor<1x64x4x?x?xf32> into tensor<1x256x?x?xf32>
    %cast_535 = tensor.cast %collapsed_534 : tensor<1x256x?x?xf32> to tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_535, %cst_487, %cst_486, %cst_489, %cst_488 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%cast_535 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %cst_485 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_482, %cst_481, %cst_484, %cst_483 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%30 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %23 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %34 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%33, %cst_480 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %35 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_477, %cst_476, %cst_479, %cst_478 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%34 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %padded_536 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x256x56x56xf32> to tensor<1x256x58x58xf32>
    %cast_537 = tensor.cast %padded_536 : tensor<1x256x58x58xf32> to tensor<?x?x?x?xf32>
    %expanded_538 = tensor.expand_shape %cast_537 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_539 = tensor.expand_shape %cst_475 [[0, 1], [2], [3], [4]] : tensor<256x4x3x3xf32> into tensor<64x4x4x3x3xf32>
    %37 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_538, %expanded_539 : tensor<?x64x?x?x?xf32>, tensor<64x4x4x3x3xf32>) outs(%expanded_528 : tensor<1x64x4x?x?xf32>) -> tensor<1x64x4x?x?xf32>
    %collapsed_540 = tensor.collapse_shape %37 [[0], [1, 2], [3], [4]] : tensor<1x64x4x?x?xf32> into tensor<1x256x?x?xf32>
    %cast_541 = tensor.cast %collapsed_540 : tensor<1x256x?x?xf32> to tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %38 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_541, %cst_472, %cst_471, %cst_474, %cst_473 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%cast_541 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %40 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%39, %cst_470 : tensor<1x256x56x56xf32>, tensor<256x256x1x1xf32>) outs(%11 : tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %41 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %cst_467, %cst_466, %cst_469, %cst_468 : tensor<1x256x56x56xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%40 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x256x56x56xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41, %33 : tensor<1x256x56x56xf32>, tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x256x56x56xf32>
    %43 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42 : tensor<1x256x56x56xf32>) outs(%10 : tensor<1x256x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x256x56x56xf32>
    %44 = tensor.empty() : tensor<1x512x56x56xf32>
    %45 = linalg.fill ins(%cst_520 : f32) outs(%44 : tensor<1x512x56x56xf32>) -> tensor<1x512x56x56xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%43, %cst_465 : tensor<1x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%45 : tensor<1x512x56x56xf32>) -> tensor<1x512x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %47 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46, %cst_462, %cst_461, %cst_464, %cst_463 : tensor<1x512x56x56xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%46 : tensor<1x512x56x56xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x56x56xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x512x56x56xf32>) outs(%44 : tensor<1x512x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x56x56xf32>
    %padded_542 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x56x56xf32> to tensor<1x512x58x58xf32>
    %cast_543 = tensor.cast %padded_542 : tensor<1x512x58x58xf32> to tensor<?x?x?x?xf32>
    %49 = tensor.empty() : tensor<1x512x28x28xf32>
    %50 = linalg.fill ins(%cst_520 : f32) outs(%49 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    %cast_544 = tensor.cast %50 : tensor<1x512x28x28xf32> to tensor<1x512x?x?xf32>
    %expanded_545 = tensor.expand_shape %cast_543 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_546 = tensor.expand_shape %cst_460 [[0, 1], [2], [3], [4]] : tensor<512x8x3x3xf32> into tensor<64x8x8x3x3xf32>
    %expanded_547 = tensor.expand_shape %cast_544 [[0], [1, 2], [3], [4]] : tensor<1x512x?x?xf32> into tensor<1x64x8x?x?xf32>
    %51 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%expanded_545, %expanded_546 : tensor<?x64x?x?x?xf32>, tensor<64x8x8x3x3xf32>) outs(%expanded_547 : tensor<1x64x8x?x?xf32>) -> tensor<1x64x8x?x?xf32>
    %collapsed_548 = tensor.collapse_shape %51 [[0], [1, 2], [3], [4]] : tensor<1x64x8x?x?xf32> into tensor<1x512x?x?xf32>
    %cast_549 = tensor.cast %collapsed_548 : tensor<1x512x?x?xf32> to tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_549, %cst_457, %cst_456, %cst_459, %cst_458 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%cast_549 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%53, %cst_455 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %cst_452, %cst_451, %cst_454, %cst_453 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%54 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%43, %cst_450 : tensor<1x256x56x56xf32>, tensor<512x256x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_447, %cst_446, %cst_449, %cst_448 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%56 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %58 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55, %57 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x28x28xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %60 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%59, %cst_445 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %61 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%60, %cst_442, %cst_441, %cst_444, %cst_443 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%60 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %62 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_550 = tensor.pad %62 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %cast_551 = tensor.cast %padded_550 : tensor<1x512x30x30xf32> to tensor<?x?x?x?xf32>
    %expanded_552 = tensor.expand_shape %cast_551 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_553 = tensor.expand_shape %cst_440 [[0, 1], [2], [3], [4]] : tensor<512x8x3x3xf32> into tensor<64x8x8x3x3xf32>
    %63 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_552, %expanded_553 : tensor<?x64x?x?x?xf32>, tensor<64x8x8x3x3xf32>) outs(%expanded_547 : tensor<1x64x8x?x?xf32>) -> tensor<1x64x8x?x?xf32>
    %collapsed_554 = tensor.collapse_shape %63 [[0], [1, 2], [3], [4]] : tensor<1x64x8x?x?xf32> into tensor<1x512x?x?xf32>
    %cast_555 = tensor.cast %collapsed_554 : tensor<1x512x?x?xf32> to tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_555, %cst_437, %cst_436, %cst_439, %cst_438 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%cast_555 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%65, %cst_435 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_432, %cst_431, %cst_434, %cst_433 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%66 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %59 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x28x28xf32>
    %69 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %70 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%69, %cst_430 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %71 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70, %cst_427, %cst_426, %cst_429, %cst_428 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%70 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_556 = tensor.pad %72 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %cast_557 = tensor.cast %padded_556 : tensor<1x512x30x30xf32> to tensor<?x?x?x?xf32>
    %expanded_558 = tensor.expand_shape %cast_557 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_559 = tensor.expand_shape %cst_425 [[0, 1], [2], [3], [4]] : tensor<512x8x3x3xf32> into tensor<64x8x8x3x3xf32>
    %73 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_558, %expanded_559 : tensor<?x64x?x?x?xf32>, tensor<64x8x8x3x3xf32>) outs(%expanded_547 : tensor<1x64x8x?x?xf32>) -> tensor<1x64x8x?x?xf32>
    %collapsed_560 = tensor.collapse_shape %73 [[0], [1, 2], [3], [4]] : tensor<1x64x8x?x?xf32> into tensor<1x512x?x?xf32>
    %cast_561 = tensor.cast %collapsed_560 : tensor<1x512x?x?xf32> to tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %74 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_561, %cst_422, %cst_421, %cst_424, %cst_423 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%cast_561 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %75 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %76 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%75, %cst_420 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %77 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %cst_417, %cst_416, %cst_419, %cst_418 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%76 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %69 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x28x28xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %80 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%79, %cst_415 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %81 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80, %cst_412, %cst_411, %cst_414, %cst_413 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%80 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %82 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %padded_562 = tensor.pad %82 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x512x28x28xf32> to tensor<1x512x30x30xf32>
    %cast_563 = tensor.cast %padded_562 : tensor<1x512x30x30xf32> to tensor<?x?x?x?xf32>
    %expanded_564 = tensor.expand_shape %cast_563 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_565 = tensor.expand_shape %cst_410 [[0, 1], [2], [3], [4]] : tensor<512x8x3x3xf32> into tensor<64x8x8x3x3xf32>
    %83 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_564, %expanded_565 : tensor<?x64x?x?x?xf32>, tensor<64x8x8x3x3xf32>) outs(%expanded_547 : tensor<1x64x8x?x?xf32>) -> tensor<1x64x8x?x?xf32>
    %collapsed_566 = tensor.collapse_shape %83 [[0], [1, 2], [3], [4]] : tensor<1x64x8x?x?xf32> into tensor<1x512x?x?xf32>
    %cast_567 = tensor.cast %collapsed_566 : tensor<1x512x?x?xf32> to tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %84 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_567, %cst_407, %cst_406, %cst_409, %cst_408 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%cast_567 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %86 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%85, %cst_405 : tensor<1x512x28x28xf32>, tensor<512x512x1x1xf32>) outs(%50 : tensor<1x512x28x28xf32>) -> tensor<1x512x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %87 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86, %cst_402, %cst_401, %cst_404, %cst_403 : tensor<1x512x28x28xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%86 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x512x28x28xf32>
    %88 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%87, %79 : tensor<1x512x28x28xf32>, tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x512x28x28xf32>
    %89 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88 : tensor<1x512x28x28xf32>) outs(%49 : tensor<1x512x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x512x28x28xf32>
    %90 = tensor.empty() : tensor<1x1024x28x28xf32>
    %91 = linalg.fill ins(%cst_520 : f32) outs(%90 : tensor<1x1024x28x28xf32>) -> tensor<1x1024x28x28xf32>
    %92 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%89, %cst_400 : tensor<1x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%91 : tensor<1x1024x28x28xf32>) -> tensor<1x1024x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %93 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %cst_397, %cst_396, %cst_399, %cst_398 : tensor<1x1024x28x28xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%92 : tensor<1x1024x28x28xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x28x28xf32>
    %94 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x1024x28x28xf32>) outs(%90 : tensor<1x1024x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x28x28xf32>
    %padded_568 = tensor.pad %94 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x28x28xf32> to tensor<1x1024x30x30xf32>
    %cast_569 = tensor.cast %padded_568 : tensor<1x1024x30x30xf32> to tensor<?x?x?x?xf32>
    %95 = tensor.empty() : tensor<1x1024x14x14xf32>
    %96 = linalg.fill ins(%cst_520 : f32) outs(%95 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    %cast_570 = tensor.cast %96 : tensor<1x1024x14x14xf32> to tensor<1x1024x?x?xf32>
    %expanded_571 = tensor.expand_shape %cast_569 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_572 = tensor.expand_shape %cst_395 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %expanded_573 = tensor.expand_shape %cast_570 [[0], [1, 2], [3], [4]] : tensor<1x1024x?x?xf32> into tensor<1x64x16x?x?xf32>
    %97 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%expanded_571, %expanded_572 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_574 = tensor.collapse_shape %97 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_575 = tensor.cast %collapsed_574 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_575, %cst_392, %cst_391, %cst_394, %cst_393 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_575 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %100 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%99, %cst_390 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %101 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100, %cst_387, %cst_386, %cst_389, %cst_388 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%100 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %102 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%89, %cst_385 : tensor<1x512x28x28xf32>, tensor<1024x512x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %103 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%102, %cst_382, %cst_381, %cst_384, %cst_383 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%102 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %104 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101, %103 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %106 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%105, %cst_380 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %107 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106, %cst_377, %cst_376, %cst_379, %cst_378 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%106 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %108 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%107 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_576 = tensor.pad %108 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_577 = tensor.cast %padded_576 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_578 = tensor.expand_shape %cast_577 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_579 = tensor.expand_shape %cst_375 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %109 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_578, %expanded_579 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_580 = tensor.collapse_shape %109 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_581 = tensor.cast %collapsed_580 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %110 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_581, %cst_372, %cst_371, %cst_374, %cst_373 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_581 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %112 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %cst_370 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %113 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112, %cst_367, %cst_366, %cst_369, %cst_368 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%112 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %114 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%113, %105 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %115 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%114 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %116 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%115, %cst_365 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %117 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116, %cst_362, %cst_361, %cst_364, %cst_363 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%116 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %118 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%117 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_582 = tensor.pad %118 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_583 = tensor.cast %padded_582 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_584 = tensor.expand_shape %cast_583 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_585 = tensor.expand_shape %cst_360 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %119 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_584, %expanded_585 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_586 = tensor.collapse_shape %119 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_587 = tensor.cast %collapsed_586 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %120 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_587, %cst_357, %cst_356, %cst_359, %cst_358 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_587 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %121 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %122 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%121, %cst_355 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %123 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122, %cst_352, %cst_351, %cst_354, %cst_353 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%122 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %124 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%123, %115 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %125 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %126 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%125, %cst_350 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %127 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %cst_347, %cst_346, %cst_349, %cst_348 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%126 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %128 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_588 = tensor.pad %128 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_589 = tensor.cast %padded_588 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_590 = tensor.expand_shape %cast_589 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_591 = tensor.expand_shape %cst_345 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %129 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_590, %expanded_591 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_592 = tensor.collapse_shape %129 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_593 = tensor.cast %collapsed_592 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %130 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_593, %cst_342, %cst_341, %cst_344, %cst_343 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_593 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %131 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %132 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%131, %cst_340 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %133 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_337, %cst_336, %cst_339, %cst_338 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%132 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %134 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133, %125 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %135 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%134 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %136 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%135, %cst_335 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %137 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%136, %cst_332, %cst_331, %cst_334, %cst_333 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%136 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %138 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%137 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_594 = tensor.pad %138 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_595 = tensor.cast %padded_594 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_596 = tensor.expand_shape %cast_595 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_597 = tensor.expand_shape %cst_330 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %139 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_596, %expanded_597 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_598 = tensor.collapse_shape %139 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_599 = tensor.cast %collapsed_598 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %140 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_599, %cst_327, %cst_326, %cst_329, %cst_328 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_599 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %141 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%140 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %142 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%141, %cst_325 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %143 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%142, %cst_322, %cst_321, %cst_324, %cst_323 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%142 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %144 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%143, %135 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %145 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %146 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%145, %cst_320 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %147 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%146, %cst_317, %cst_316, %cst_319, %cst_318 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%146 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %148 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_600 = tensor.pad %148 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_601 = tensor.cast %padded_600 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_602 = tensor.expand_shape %cast_601 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_603 = tensor.expand_shape %cst_315 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %149 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_602, %expanded_603 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_604 = tensor.collapse_shape %149 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_605 = tensor.cast %collapsed_604 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %150 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_605, %cst_312, %cst_311, %cst_314, %cst_313 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_605 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %151 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %152 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%151, %cst_310 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %153 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152, %cst_307, %cst_306, %cst_309, %cst_308 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%152 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %154 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%153, %145 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %155 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %156 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%155, %cst_305 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %157 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156, %cst_302, %cst_301, %cst_304, %cst_303 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%156 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %158 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%157 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_606 = tensor.pad %158 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_607 = tensor.cast %padded_606 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_608 = tensor.expand_shape %cast_607 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_609 = tensor.expand_shape %cst_300 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %159 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_608, %expanded_609 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_610 = tensor.collapse_shape %159 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_611 = tensor.cast %collapsed_610 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %160 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_611, %cst_297, %cst_296, %cst_299, %cst_298 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_611 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %161 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%160 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %162 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%161, %cst_295 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %163 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%162, %cst_292, %cst_291, %cst_294, %cst_293 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%162 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %164 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%163, %155 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %165 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%164 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %166 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%165, %cst_290 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %167 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166, %cst_287, %cst_286, %cst_289, %cst_288 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%166 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %168 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_612 = tensor.pad %168 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_613 = tensor.cast %padded_612 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_614 = tensor.expand_shape %cast_613 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_615 = tensor.expand_shape %cst_285 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %169 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_614, %expanded_615 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_616 = tensor.collapse_shape %169 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_617 = tensor.cast %collapsed_616 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %170 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_617, %cst_282, %cst_281, %cst_284, %cst_283 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_617 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %171 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%170 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %172 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%171, %cst_280 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %173 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%172, %cst_277, %cst_276, %cst_279, %cst_278 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%172 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %174 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%173, %165 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %175 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%174 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %176 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%175, %cst_275 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %177 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176, %cst_272, %cst_271, %cst_274, %cst_273 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%176 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %178 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%177 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_618 = tensor.pad %178 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_619 = tensor.cast %padded_618 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_620 = tensor.expand_shape %cast_619 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_621 = tensor.expand_shape %cst_270 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %179 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_620, %expanded_621 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_622 = tensor.collapse_shape %179 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_623 = tensor.cast %collapsed_622 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %180 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_623, %cst_267, %cst_266, %cst_269, %cst_268 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_623 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %181 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%180 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %182 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%181, %cst_265 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %183 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %cst_262, %cst_261, %cst_264, %cst_263 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%182 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %184 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183, %175 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %185 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %186 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%185, %cst_260 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %187 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %cst_257, %cst_256, %cst_259, %cst_258 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%186 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %188 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%187 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_624 = tensor.pad %188 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_625 = tensor.cast %padded_624 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_626 = tensor.expand_shape %cast_625 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_627 = tensor.expand_shape %cst_255 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %189 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_626, %expanded_627 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_628 = tensor.collapse_shape %189 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_629 = tensor.cast %collapsed_628 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %190 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_629, %cst_252, %cst_251, %cst_254, %cst_253 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_629 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %191 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %192 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%191, %cst_250 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %193 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %cst_247, %cst_246, %cst_249, %cst_248 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%192 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %194 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %185 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %195 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %196 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%195, %cst_245 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %197 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196, %cst_242, %cst_241, %cst_244, %cst_243 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%196 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %198 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_630 = tensor.pad %198 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_631 = tensor.cast %padded_630 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_632 = tensor.expand_shape %cast_631 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_633 = tensor.expand_shape %cst_240 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %199 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_632, %expanded_633 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_634 = tensor.collapse_shape %199 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_635 = tensor.cast %collapsed_634 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %200 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_635, %cst_237, %cst_236, %cst_239, %cst_238 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_635 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %201 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %202 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%201, %cst_235 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %203 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202, %cst_232, %cst_231, %cst_234, %cst_233 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%202 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %204 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%203, %195 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %205 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%204 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %206 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%205, %cst_230 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %207 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206, %cst_227, %cst_226, %cst_229, %cst_228 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%206 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %208 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%207 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_636 = tensor.pad %208 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_637 = tensor.cast %padded_636 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_638 = tensor.expand_shape %cast_637 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_639 = tensor.expand_shape %cst_225 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %209 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_638, %expanded_639 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_640 = tensor.collapse_shape %209 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_641 = tensor.cast %collapsed_640 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %210 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_641, %cst_222, %cst_221, %cst_224, %cst_223 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_641 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %211 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%210 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %212 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%211, %cst_220 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %213 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %cst_217, %cst_216, %cst_219, %cst_218 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%212 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %214 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213, %205 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %215 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %216 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%215, %cst_215 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %217 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %cst_212, %cst_211, %cst_214, %cst_213 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%216 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %218 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%217 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_642 = tensor.pad %218 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_643 = tensor.cast %padded_642 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_644 = tensor.expand_shape %cast_643 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_645 = tensor.expand_shape %cst_210 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %219 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_644, %expanded_645 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_646 = tensor.collapse_shape %219 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_647 = tensor.cast %collapsed_646 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %220 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_647, %cst_207, %cst_206, %cst_209, %cst_208 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_647 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %221 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %222 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%221, %cst_205 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %223 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%222, %cst_202, %cst_201, %cst_204, %cst_203 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%222 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %224 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %215 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %225 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %226 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%225, %cst_200 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %227 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226, %cst_197, %cst_196, %cst_199, %cst_198 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%226 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %228 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%227 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_648 = tensor.pad %228 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_649 = tensor.cast %padded_648 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_650 = tensor.expand_shape %cast_649 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_651 = tensor.expand_shape %cst_195 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %229 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_650, %expanded_651 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_652 = tensor.collapse_shape %229 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_653 = tensor.cast %collapsed_652 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %230 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_653, %cst_192, %cst_191, %cst_194, %cst_193 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_653 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %231 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %232 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%231, %cst_190 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %233 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232, %cst_187, %cst_186, %cst_189, %cst_188 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%232 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %234 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%233, %225 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %235 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%234 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %236 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%235, %cst_185 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %237 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236, %cst_182, %cst_181, %cst_184, %cst_183 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%236 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %238 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%237 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_654 = tensor.pad %238 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_655 = tensor.cast %padded_654 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_656 = tensor.expand_shape %cast_655 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_657 = tensor.expand_shape %cst_180 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %239 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_656, %expanded_657 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_658 = tensor.collapse_shape %239 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_659 = tensor.cast %collapsed_658 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %240 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_659, %cst_177, %cst_176, %cst_179, %cst_178 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_659 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %241 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %242 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%241, %cst_175 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %243 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242, %cst_172, %cst_171, %cst_174, %cst_173 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%242 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %244 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%243, %235 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %245 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %246 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%245, %cst_170 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %247 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246, %cst_167, %cst_166, %cst_169, %cst_168 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%246 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %248 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_660 = tensor.pad %248 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_661 = tensor.cast %padded_660 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_662 = tensor.expand_shape %cast_661 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_663 = tensor.expand_shape %cst_165 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %249 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_662, %expanded_663 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_664 = tensor.collapse_shape %249 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_665 = tensor.cast %collapsed_664 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %250 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_665, %cst_162, %cst_161, %cst_164, %cst_163 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_665 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %251 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%250 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %252 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%251, %cst_160 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %253 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_157, %cst_156, %cst_159, %cst_158 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%252 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %254 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253, %245 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %255 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%254 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %256 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%255, %cst_155 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %257 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %cst_152, %cst_151, %cst_154, %cst_153 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%256 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %258 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_666 = tensor.pad %258 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_667 = tensor.cast %padded_666 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_668 = tensor.expand_shape %cast_667 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_669 = tensor.expand_shape %cst_150 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %259 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_668, %expanded_669 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_670 = tensor.collapse_shape %259 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_671 = tensor.cast %collapsed_670 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %260 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_671, %cst_147, %cst_146, %cst_149, %cst_148 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_671 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %261 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %262 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%261, %cst_145 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %263 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262, %cst_142, %cst_141, %cst_144, %cst_143 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%262 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %264 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%263, %255 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %265 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %266 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%265, %cst_140 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %267 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%266, %cst_137, %cst_136, %cst_139, %cst_138 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%266 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %268 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_672 = tensor.pad %268 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_673 = tensor.cast %padded_672 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_674 = tensor.expand_shape %cast_673 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_675 = tensor.expand_shape %cst_135 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %269 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_674, %expanded_675 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_676 = tensor.collapse_shape %269 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_677 = tensor.cast %collapsed_676 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %270 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_677, %cst_132, %cst_131, %cst_134, %cst_133 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_677 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %271 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %272 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%271, %cst_130 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %273 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272, %cst_127, %cst_126, %cst_129, %cst_128 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%272 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %274 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%273, %265 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %275 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %276 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%275, %cst_125 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %277 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276, %cst_122, %cst_121, %cst_124, %cst_123 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%276 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %278 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%277 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_678 = tensor.pad %278 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_679 = tensor.cast %padded_678 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_680 = tensor.expand_shape %cast_679 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_681 = tensor.expand_shape %cst_120 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %279 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_680, %expanded_681 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_682 = tensor.collapse_shape %279 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_683 = tensor.cast %collapsed_682 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %280 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_683, %cst_117, %cst_116, %cst_119, %cst_118 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_683 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %281 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%280 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %282 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%281, %cst_115 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %283 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%282, %cst_112, %cst_111, %cst_114, %cst_113 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%282 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %284 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%283, %275 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %285 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%284 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %286 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%285, %cst_110 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %287 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286, %cst_107, %cst_106, %cst_109, %cst_108 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%286 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %288 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_684 = tensor.pad %288 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_685 = tensor.cast %padded_684 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_686 = tensor.expand_shape %cast_685 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_687 = tensor.expand_shape %cst_105 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %289 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_686, %expanded_687 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_688 = tensor.collapse_shape %289 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_689 = tensor.cast %collapsed_688 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %290 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_689, %cst_102, %cst_101, %cst_104, %cst_103 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_689 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %291 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%290 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %292 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%291, %cst_100 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %293 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%292, %cst_97, %cst_96, %cst_99, %cst_98 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%292 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %294 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%293, %285 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %295 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%294 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %296 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%295, %cst_95 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %297 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296, %cst_92, %cst_91, %cst_94, %cst_93 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%296 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %298 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_690 = tensor.pad %298 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_691 = tensor.cast %padded_690 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_692 = tensor.expand_shape %cast_691 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_693 = tensor.expand_shape %cst_90 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %299 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_692, %expanded_693 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_694 = tensor.collapse_shape %299 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_695 = tensor.cast %collapsed_694 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %300 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_695, %cst_87, %cst_86, %cst_89, %cst_88 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_695 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %301 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%300 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %302 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%301, %cst_85 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %303 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %cst_82, %cst_81, %cst_84, %cst_83 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%302 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %304 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303, %295 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %305 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %306 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%305, %cst_80 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %307 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %cst_77, %cst_76, %cst_79, %cst_78 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%306 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %308 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%307 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_696 = tensor.pad %308 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_697 = tensor.cast %padded_696 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_698 = tensor.expand_shape %cast_697 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_699 = tensor.expand_shape %cst_75 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %309 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_698, %expanded_699 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_700 = tensor.collapse_shape %309 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_701 = tensor.cast %collapsed_700 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %310 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_701, %cst_72, %cst_71, %cst_74, %cst_73 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_701 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %311 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %312 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%311, %cst_70 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %313 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%312, %cst_67, %cst_66, %cst_69, %cst_68 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%312 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %314 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %305 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %315 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %316 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%315, %cst_65 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %317 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316, %cst_62, %cst_61, %cst_64, %cst_63 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%316 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %318 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %padded_702 = tensor.pad %318 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x1024x14x14xf32> to tensor<1x1024x16x16xf32>
    %cast_703 = tensor.cast %padded_702 : tensor<1x1024x16x16xf32> to tensor<?x?x?x?xf32>
    %expanded_704 = tensor.expand_shape %cast_703 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_705 = tensor.expand_shape %cst_60 [[0, 1], [2], [3], [4]] : tensor<1024x16x3x3xf32> into tensor<64x16x16x3x3xf32>
    %319 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_704, %expanded_705 : tensor<?x64x?x?x?xf32>, tensor<64x16x16x3x3xf32>) outs(%expanded_573 : tensor<1x64x16x?x?xf32>) -> tensor<1x64x16x?x?xf32>
    %collapsed_706 = tensor.collapse_shape %319 [[0], [1, 2], [3], [4]] : tensor<1x64x16x?x?xf32> into tensor<1x1024x?x?xf32>
    %cast_707 = tensor.cast %collapsed_706 : tensor<1x1024x?x?xf32> to tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %320 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_707, %cst_57, %cst_56, %cst_59, %cst_58 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%cast_707 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %321 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %322 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%321, %cst_55 : tensor<1x1024x14x14xf32>, tensor<1024x1024x1x1xf32>) outs(%96 : tensor<1x1024x14x14xf32>) -> tensor<1x1024x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %323 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %cst_52, %cst_51, %cst_54, %cst_53 : tensor<1x1024x14x14xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>, tensor<1024xf32>) outs(%322 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x1024x14x14xf32>
    %324 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323, %315 : tensor<1x1024x14x14xf32>, tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1024x14x14xf32>
    %325 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x1024x14x14xf32>) outs(%95 : tensor<1x1024x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x1024x14x14xf32>
    %326 = tensor.empty() : tensor<1x2048x14x14xf32>
    %327 = linalg.fill ins(%cst_520 : f32) outs(%326 : tensor<1x2048x14x14xf32>) -> tensor<1x2048x14x14xf32>
    %328 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%325, %cst_50 : tensor<1x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%327 : tensor<1x2048x14x14xf32>) -> tensor<1x2048x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %329 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %cst_47, %cst_46, %cst_49, %cst_48 : tensor<1x2048x14x14xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%328 : tensor<1x2048x14x14xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x14x14xf32>
    %330 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%329 : tensor<1x2048x14x14xf32>) outs(%326 : tensor<1x2048x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x14x14xf32>
    %padded_708 = tensor.pad %330 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x2048x14x14xf32> to tensor<1x2048x16x16xf32>
    %cast_709 = tensor.cast %padded_708 : tensor<1x2048x16x16xf32> to tensor<?x?x?x?xf32>
    %331 = tensor.empty() : tensor<1x2048x7x7xf32>
    %332 = linalg.fill ins(%cst_520 : f32) outs(%331 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    %cast_710 = tensor.cast %332 : tensor<1x2048x7x7xf32> to tensor<1x2048x?x?xf32>
    %expanded_711 = tensor.expand_shape %cast_709 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_712 = tensor.expand_shape %cst_45 [[0, 1], [2], [3], [4]] : tensor<2048x32x3x3xf32> into tensor<64x32x32x3x3xf32>
    %expanded_713 = tensor.expand_shape %cast_710 [[0], [1, 2], [3], [4]] : tensor<1x2048x?x?xf32> into tensor<1x64x32x?x?xf32>
    %333 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%expanded_711, %expanded_712 : tensor<?x64x?x?x?xf32>, tensor<64x32x32x3x3xf32>) outs(%expanded_713 : tensor<1x64x32x?x?xf32>) -> tensor<1x64x32x?x?xf32>
    %collapsed_714 = tensor.collapse_shape %333 [[0], [1, 2], [3], [4]] : tensor<1x64x32x?x?xf32> into tensor<1x2048x?x?xf32>
    %cast_715 = tensor.cast %collapsed_714 : tensor<1x2048x?x?xf32> to tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %334 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_715, %cst_42, %cst_41, %cst_44, %cst_43 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%cast_715 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %335 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %336 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%335, %cst_40 : tensor<1x2048x7x7xf32>, tensor<2048x2048x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %337 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %cst_37, %cst_36, %cst_39, %cst_38 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%336 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %338 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%325, %cst_35 : tensor<1x1024x14x14xf32>, tensor<2048x1024x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %339 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338, %cst_32, %cst_31, %cst_34, %cst_33 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%338 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %340 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%337, %339 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x7x7xf32>
    %341 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %342 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%341, %cst_30 : tensor<1x2048x7x7xf32>, tensor<2048x2048x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %343 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%342, %cst_27, %cst_26, %cst_29, %cst_28 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%342 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %344 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %padded_716 = tensor.pad %344 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x2048x7x7xf32> to tensor<1x2048x9x9xf32>
    %cast_717 = tensor.cast %padded_716 : tensor<1x2048x9x9xf32> to tensor<?x?x?x?xf32>
    %expanded_718 = tensor.expand_shape %cast_717 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_719 = tensor.expand_shape %cst_25 [[0, 1], [2], [3], [4]] : tensor<2048x32x3x3xf32> into tensor<64x32x32x3x3xf32>
    %345 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_718, %expanded_719 : tensor<?x64x?x?x?xf32>, tensor<64x32x32x3x3xf32>) outs(%expanded_713 : tensor<1x64x32x?x?xf32>) -> tensor<1x64x32x?x?xf32>
    %collapsed_720 = tensor.collapse_shape %345 [[0], [1, 2], [3], [4]] : tensor<1x64x32x?x?xf32> into tensor<1x2048x?x?xf32>
    %cast_721 = tensor.cast %collapsed_720 : tensor<1x2048x?x?xf32> to tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %346 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_721, %cst_22, %cst_21, %cst_24, %cst_23 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%cast_721 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %347 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %348 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%347, %cst_20 : tensor<1x2048x7x7xf32>, tensor<2048x2048x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %349 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%348, %cst_17, %cst_16, %cst_19, %cst_18 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%348 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %350 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%349, %341 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x7x7xf32>
    %351 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %352 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%351, %cst_15 : tensor<1x2048x7x7xf32>, tensor<2048x2048x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %353 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352, %cst_12, %cst_11, %cst_14, %cst_13 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%352 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %354 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%353 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %padded_722 = tensor.pad %354 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_520 : f32
    } : tensor<1x2048x7x7xf32> to tensor<1x2048x9x9xf32>
    %cast_723 = tensor.cast %padded_722 : tensor<1x2048x9x9xf32> to tensor<?x?x?x?xf32>
    %expanded_724 = tensor.expand_shape %cast_723 [[0], [1, 2], [3], [4]] : tensor<?x?x?x?xf32> into tensor<?x64x?x?x?xf32>
    %expanded_725 = tensor.expand_shape %cst_10 [[0, 1], [2], [3], [4]] : tensor<2048x32x3x3xf32> into tensor<64x32x32x3x3xf32>
    %355 = linalg.conv_2d_ngchw_gfchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%expanded_724, %expanded_725 : tensor<?x64x?x?x?xf32>, tensor<64x32x32x3x3xf32>) outs(%expanded_713 : tensor<1x64x32x?x?xf32>) -> tensor<1x64x32x?x?xf32>
    %collapsed_726 = tensor.collapse_shape %355 [[0], [1, 2], [3], [4]] : tensor<1x64x32x?x?xf32> into tensor<1x2048x?x?xf32>
    %cast_727 = tensor.cast %collapsed_726 : tensor<1x2048x?x?xf32> to tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %356 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cast_727, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%cast_727 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %357 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %358 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%357, %cst_5 : tensor<1x2048x7x7xf32>, tensor<2048x2048x1x1xf32>) outs(%332 : tensor<1x2048x7x7xf32>) -> tensor<1x2048x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %359 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x2048x7x7xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>, tensor<2048xf32>) outs(%358 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %in_730: f32, %in_731: f32, %in_732: f32, %out: f32):
      %373 = arith.truncf %cst_522 : f64 to f32
      %374 = arith.addf %in_732, %373 : f32
      %375 = math.rsqrt %374 : f32
      %376 = arith.subf %in, %in_731 : f32
      %377 = arith.mulf %376, %375 : f32
      %378 = arith.mulf %377, %in_729 : f32
      %379 = arith.addf %378, %in_730 : f32
      linalg.yield %379 : f32
    } -> tensor<1x2048x7x7xf32>
    %360 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%359, %351 : tensor<1x2048x7x7xf32>, tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x7x7xf32>
    %361 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%360 : tensor<1x2048x7x7xf32>) outs(%331 : tensor<1x2048x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.cmpf ugt, %in, %cst_520 : f32
      %374 = arith.select %373, %in, %cst_520 : f32
      linalg.yield %374 : f32
    } -> tensor<1x2048x7x7xf32>
    %362 = tensor.empty() : tensor<1x2048x1x1xf32>
    %363 = linalg.fill ins(%cst_520 : f32) outs(%362 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %364 = tensor.empty() : tensor<7x7xf32>
    %365 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%361, %364 : tensor<1x2048x7x7xf32>, tensor<7x7xf32>) outs(%363 : tensor<1x2048x1x1xf32>) -> tensor<1x2048x1x1xf32>
    %366 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%365 : tensor<1x2048x1x1xf32>) outs(%362 : tensor<1x2048x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %373 = arith.divf %in, %cst_523 : f32
      linalg.yield %373 : f32
    } -> tensor<1x2048x1x1xf32>
    %collapsed_728 = tensor.collapse_shape %366 [[0], [1, 2, 3]] : tensor<1x2048x1x1xf32> into tensor<1x2048xf32>
    %367 = tensor.empty() : tensor<2048x1000xf32>
    %368 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x2048xf32>) outs(%367 : tensor<2048x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<2048x1000xf32>
    %369 = tensor.empty() : tensor<1x1000xf32>
    %370 = linalg.fill ins(%cst_520 : f32) outs(%369 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %371 = linalg.matmul ins(%collapsed_728, %368 : tensor<1x2048xf32>, tensor<2048x1000xf32>) outs(%370 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %372 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%371, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%369 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_729: f32, %out: f32):
      %373 = arith.addf %in, %in_729 : f32
      linalg.yield %373 : f32
    } -> tensor<1x1000xf32>
    return %372 : tensor<1x1000xf32>
  }
}
