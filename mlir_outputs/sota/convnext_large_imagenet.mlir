#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d3, d1)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>
#map4 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, 0)>
#map5 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>
#map8 = affine_map<(d0, d1) -> (d0, d1)>
#map9 = affine_map<(d0, d1) -> (d1, d0)>
#map10 = affine_map<(d0, d1, d2, d3) -> (d2, d3)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d1, 0, 0)>
#map12 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, 0)>
#map13 = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3)>
#map14 = affine_map<(d0, d1) -> (0, d1)>
#map15 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ConvNeXt"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x1536xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<1536x6144xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<6144xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<6144x1536xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<1536x1x7x7xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<1536x1x1xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<1536x6144xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<6144xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<6144x1536xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<1536x1x7x7xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<1536x1x1xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<1536x6144xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<6144xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<6144x1536xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<1536x1x7x7xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<1536x1x1xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<1536x768x2x2xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_181 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_182 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_183 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_184 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_185 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_186 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_187 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_188 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_189 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_190 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_191 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_192 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_193 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_194 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_195 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_196 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_197 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_198 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_199 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_200 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_201 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_202 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_203 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_204 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_205 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_206 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_207 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_208 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_209 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_210 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_211 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_212 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_213 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_214 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_215 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_216 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_217 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_218 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_219 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_220 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_221 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_222 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_223 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_224 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_225 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_226 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_227 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_228 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_229 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_230 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_231 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_232 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_233 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_234 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_235 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_236 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_237 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_238 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_239 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_240 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_241 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_242 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_243 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_244 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_245 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_246 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_247 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_248 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_249 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_250 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_251 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_252 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_253 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_254 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_255 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_256 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_257 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_258 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_259 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_260 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_261 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_262 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_263 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_264 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_265 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_266 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_267 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_268 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_269 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_270 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_271 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_272 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_273 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_274 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_275 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_276 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_277 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_278 = arith.constant dense_resource<__elided__> : tensor<768x384x2x2xf32>
    %cst_279 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_280 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_281 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_282 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_283 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_284 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_285 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_286 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_287 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_288 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_289 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_290 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_291 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_292 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_293 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_294 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_295 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_296 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_297 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_298 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_299 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_300 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_301 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_302 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_303 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_304 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_305 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_306 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_307 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_308 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_309 = arith.constant dense_resource<__elided__> : tensor<384x192x2x2xf32>
    %cst_310 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_311 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_312 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_313 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_314 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_315 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_316 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_317 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_318 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_319 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_320 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_321 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_322 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_323 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_324 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_325 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_326 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_327 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_328 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_329 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_330 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_331 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_332 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_333 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_334 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_335 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_336 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_337 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_338 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_339 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_340 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_341 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_342 = arith.constant dense_resource<__elided__> : tensor<192x3x4x4xf32>
    %cst_343 = arith.constant 0.000000e+00 : f32
    %cst_344 = arith.constant 1.000000e+00 : f32
    %cst_345 = arith.constant 1.41421354 : f32
    %cst_346 = arith.constant 5.000000e-01 : f32
    %cst_347 = arith.constant 9.9999999999999995E-7 : f64
    %cst_348 = arith.constant 1.920000e+02 : f32
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %cst_349 = arith.constant 3.840000e+02 : f32
    %cst_350 = arith.constant 7.680000e+02 : f32
    %cst_351 = arith.constant 1.536000e+03 : f32
    %cst_352 = arith.constant 4.900000e+01 : f32
    %0 = tensor.empty() : tensor<1x192x56x56xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_341 : tensor<192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%arg0, %cst_342 : tensor<1x3x224x224xf32>, tensor<192x3x4x4xf32>) outs(%1 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %3 = tensor.empty() : tensor<1x56x56x192xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x192x56x56xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %5 = tensor.empty() : tensor<1x56x56x1xf32>
    %6 = linalg.fill ins(%cst_343 : f32) outs(%5 : tensor<1x56x56x1xf32>) -> tensor<1x56x56x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%4 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %8 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %9 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %9 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %11 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %10 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%11 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %13 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %14 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x56x56x1xf32>
    %15 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %16 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %17 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %16 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %18 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_340 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %19 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_339 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x56x56x192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %padded = tensor.pad %20 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x192x56x56xf32> to tensor<1x192x62x62xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_336 : tensor<192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %collapsed = tensor.collapse_shape %cst_337 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %22 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %collapsed : tensor<1x192x62x62xf32>, tensor<192x7x7xf32>) outs(%21 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x192x56x56xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%23 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %26 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %26 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %28 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %27 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%28 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %30 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %31 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x56x56x1xf32>
    %32 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %33 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %34 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %33 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %35 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_335 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %36 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_334 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %37 = tensor.empty() : tensor<192x768xf32>
    %38 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_333 : tensor<768x192xf32>) outs(%37 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %39 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %40 = tensor.empty() : tensor<1x56x192x768xf32>
    %41 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<192x768xf32>) outs(%40 : tensor<1x56x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x192x768xf32>
    %collapsed_353 = tensor.collapse_shape %39 [[0, 1], [2], [3]] : tensor<1x56x56x192xf32> into tensor<56x56x192xf32>
    %collapsed_354 = tensor.collapse_shape %41 [[0, 1], [2], [3]] : tensor<1x56x192x768xf32> into tensor<56x192x768xf32>
    %42 = tensor.empty() : tensor<56x56x768xf32>
    %43 = linalg.fill ins(%cst_343 : f32) outs(%42 : tensor<56x56x768xf32>) -> tensor<56x56x768xf32>
    %44 = linalg.batch_matmul ins(%collapsed_353, %collapsed_354 : tensor<56x56x192xf32>, tensor<56x192x768xf32>) outs(%43 : tensor<56x56x768xf32>) -> tensor<56x56x768xf32>
    %expanded = tensor.expand_shape %44 [[0, 1], [2], [3]] : tensor<56x56x768xf32> into tensor<1x56x56x768xf32>
    %45 = tensor.empty() : tensor<1x56x56x768xf32>
    %46 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %cst_332 : tensor<1x56x56x768xf32>, tensor<768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x768xf32>
    %47 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x56x56x768xf32>
    %48 = tensor.empty() : tensor<768x192xf32>
    %49 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_331 : tensor<192x768xf32>) outs(%48 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %50 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x768xf32>
    %51 = tensor.empty() : tensor<1x56x768x192xf32>
    %52 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<768x192xf32>) outs(%51 : tensor<1x56x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x768x192xf32>
    %collapsed_355 = tensor.collapse_shape %50 [[0, 1], [2], [3]] : tensor<1x56x56x768xf32> into tensor<56x56x768xf32>
    %collapsed_356 = tensor.collapse_shape %52 [[0, 1], [2], [3]] : tensor<1x56x768x192xf32> into tensor<56x768x192xf32>
    %53 = tensor.empty() : tensor<56x56x192xf32>
    %54 = linalg.fill ins(%cst_343 : f32) outs(%53 : tensor<56x56x192xf32>) -> tensor<56x56x192xf32>
    %55 = linalg.batch_matmul ins(%collapsed_355, %collapsed_356 : tensor<56x56x768xf32>, tensor<56x768x192xf32>) outs(%54 : tensor<56x56x192xf32>) -> tensor<56x56x192xf32>
    %expanded_357 = tensor.expand_shape %55 [[0, 1], [2], [3]] : tensor<56x56x192xf32> into tensor<1x56x56x192xf32>
    %56 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_357, %cst_330 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x56x56x192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_338, %57 : tensor<192x1x1xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %20 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %padded_358 = tensor.pad %59 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x192x56x56xf32> to tensor<1x192x62x62xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_327 : tensor<192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %collapsed_359 = tensor.collapse_shape %cst_328 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %61 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_358, %collapsed_359 : tensor<1x192x62x62xf32>, tensor<192x7x7xf32>) outs(%60 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x192x56x56xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%62 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %64 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %65 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %66 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %65 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %67 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %66 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%67 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x56x56x1xf32>
    %71 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %73 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %72 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %74 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_326 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %75 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_325 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %76 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_324 : tensor<768x192xf32>) outs(%37 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %77 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %78 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<192x768xf32>) outs(%40 : tensor<1x56x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x192x768xf32>
    %collapsed_360 = tensor.collapse_shape %77 [[0, 1], [2], [3]] : tensor<1x56x56x192xf32> into tensor<56x56x192xf32>
    %collapsed_361 = tensor.collapse_shape %78 [[0, 1], [2], [3]] : tensor<1x56x192x768xf32> into tensor<56x192x768xf32>
    %79 = linalg.batch_matmul ins(%collapsed_360, %collapsed_361 : tensor<56x56x192xf32>, tensor<56x192x768xf32>) outs(%43 : tensor<56x56x768xf32>) -> tensor<56x56x768xf32>
    %expanded_362 = tensor.expand_shape %79 [[0, 1], [2], [3]] : tensor<56x56x768xf32> into tensor<1x56x56x768xf32>
    %80 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_362, %cst_323 : tensor<1x56x56x768xf32>, tensor<768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x768xf32>
    %81 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x56x56x768xf32>
    %82 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_322 : tensor<192x768xf32>) outs(%48 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %83 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x768xf32>
    %84 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<768x192xf32>) outs(%51 : tensor<1x56x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x768x192xf32>
    %collapsed_363 = tensor.collapse_shape %83 [[0, 1], [2], [3]] : tensor<1x56x56x768xf32> into tensor<56x56x768xf32>
    %collapsed_364 = tensor.collapse_shape %84 [[0, 1], [2], [3]] : tensor<1x56x768x192xf32> into tensor<56x768x192xf32>
    %85 = linalg.batch_matmul ins(%collapsed_363, %collapsed_364 : tensor<56x56x768xf32>, tensor<56x768x192xf32>) outs(%54 : tensor<56x56x192xf32>) -> tensor<56x56x192xf32>
    %expanded_365 = tensor.expand_shape %85 [[0, 1], [2], [3]] : tensor<56x56x192xf32> into tensor<1x56x56x192xf32>
    %86 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_365, %cst_321 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x56x56x192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_329, %87 : tensor<192x1x1xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %59 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %padded_366 = tensor.pad %89 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x192x56x56xf32> to tensor<1x192x62x62xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_318 : tensor<192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %collapsed_367 = tensor.collapse_shape %cst_319 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %91 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_366, %collapsed_367 : tensor<1x192x62x62xf32>, tensor<192x7x7xf32>) outs(%90 : tensor<1x192x56x56xf32>) -> tensor<1x192x56x56xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x192x56x56xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%92 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %94 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %95 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %97 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %96 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%97 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %99 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %100 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x56x56x1xf32>
    %101 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %103 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %102 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %104 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_317 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %105 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_316 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %106 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_315 : tensor<768x192xf32>) outs(%37 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %107 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105 : tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %108 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<192x768xf32>) outs(%40 : tensor<1x56x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x192x768xf32>
    %collapsed_368 = tensor.collapse_shape %107 [[0, 1], [2], [3]] : tensor<1x56x56x192xf32> into tensor<56x56x192xf32>
    %collapsed_369 = tensor.collapse_shape %108 [[0, 1], [2], [3]] : tensor<1x56x192x768xf32> into tensor<56x192x768xf32>
    %109 = linalg.batch_matmul ins(%collapsed_368, %collapsed_369 : tensor<56x56x192xf32>, tensor<56x192x768xf32>) outs(%43 : tensor<56x56x768xf32>) -> tensor<56x56x768xf32>
    %expanded_370 = tensor.expand_shape %109 [[0, 1], [2], [3]] : tensor<56x56x768xf32> into tensor<1x56x56x768xf32>
    %110 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_370, %cst_314 : tensor<1x56x56x768xf32>, tensor<768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x768xf32>
    %111 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x56x56x768xf32>
    %112 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_313 : tensor<192x768xf32>) outs(%48 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %113 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x56x56x768xf32>) outs(%45 : tensor<1x56x56x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x768xf32>
    %114 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<768x192xf32>) outs(%51 : tensor<1x56x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x768x192xf32>
    %collapsed_371 = tensor.collapse_shape %113 [[0, 1], [2], [3]] : tensor<1x56x56x768xf32> into tensor<56x56x768xf32>
    %collapsed_372 = tensor.collapse_shape %114 [[0, 1], [2], [3]] : tensor<1x56x768x192xf32> into tensor<56x768x192xf32>
    %115 = linalg.batch_matmul ins(%collapsed_371, %collapsed_372 : tensor<56x56x768xf32>, tensor<56x768x192xf32>) outs(%54 : tensor<56x56x192xf32>) -> tensor<56x56x192xf32>
    %expanded_373 = tensor.expand_shape %115 [[0, 1], [2], [3]] : tensor<56x56x192xf32> into tensor<1x56x56x192xf32>
    %116 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_373, %cst_312 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x56x56x192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %118 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_320, %117 : tensor<192x1x1xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %119 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %89 : tensor<1x192x56x56xf32>, tensor<1x192x56x56xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x192x56x56xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x192x56x56xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%120 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %122 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %123 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %124 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %123 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %125 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %124 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%125 : tensor<1x56x56x192xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %127 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_348 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %128 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x56x56x1xf32>
    %129 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x192xf32>
    %131 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %130 : tensor<1x56x56x192xf32>, tensor<1x56x56x192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %132 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_311 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %133 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_310 : tensor<1x56x56x192xf32>, tensor<192xf32>) outs(%3 : tensor<1x56x56x192xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x56x56x192xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x56x56x192xf32>) outs(%0 : tensor<1x192x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x56x56xf32>
    %135 = tensor.empty() : tensor<1x384x28x28xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_308 : tensor<384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%134, %cst_309 : tensor<1x192x56x56xf32>, tensor<384x192x2x2xf32>) outs(%136 : tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %padded_374 = tensor.pad %137 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x384x28x28xf32> to tensor<1x384x34x34xf32>
    %138 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_305 : tensor<384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %collapsed_375 = tensor.collapse_shape %cst_306 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %139 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_374, %collapsed_375 : tensor<1x384x34x34xf32>, tensor<384x7x7xf32>) outs(%138 : tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %140 = tensor.empty() : tensor<1x28x28x384xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x384x28x28xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %142 = tensor.empty() : tensor<1x28x28x1xf32>
    %143 = linalg.fill ins(%cst_343 : f32) outs(%142 : tensor<1x28x28x1xf32>) -> tensor<1x28x28x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%141 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %145 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %146 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %147 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %146 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %148 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %147 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%148 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %150 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %151 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x28x28x1xf32>
    %152 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %154 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %153 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_304 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %156 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_303 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %157 = tensor.empty() : tensor<384x1536xf32>
    %158 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_302 : tensor<1536x384xf32>) outs(%157 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %159 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %160 = tensor.empty() : tensor<1x28x384x1536xf32>
    %161 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<384x1536xf32>) outs(%160 : tensor<1x28x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x384x1536xf32>
    %collapsed_376 = tensor.collapse_shape %159 [[0, 1], [2], [3]] : tensor<1x28x28x384xf32> into tensor<28x28x384xf32>
    %collapsed_377 = tensor.collapse_shape %161 [[0, 1], [2], [3]] : tensor<1x28x384x1536xf32> into tensor<28x384x1536xf32>
    %162 = tensor.empty() : tensor<28x28x1536xf32>
    %163 = linalg.fill ins(%cst_343 : f32) outs(%162 : tensor<28x28x1536xf32>) -> tensor<28x28x1536xf32>
    %164 = linalg.batch_matmul ins(%collapsed_376, %collapsed_377 : tensor<28x28x384xf32>, tensor<28x384x1536xf32>) outs(%163 : tensor<28x28x1536xf32>) -> tensor<28x28x1536xf32>
    %expanded_378 = tensor.expand_shape %164 [[0, 1], [2], [3]] : tensor<28x28x1536xf32> into tensor<1x28x28x1536xf32>
    %165 = tensor.empty() : tensor<1x28x28x1536xf32>
    %166 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_378, %cst_301 : tensor<1x28x28x1536xf32>, tensor<1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1536xf32>
    %167 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x28x28x1536xf32>
    %168 = tensor.empty() : tensor<1536x384xf32>
    %169 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_300 : tensor<384x1536xf32>) outs(%168 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %170 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x1536xf32>
    %171 = tensor.empty() : tensor<1x28x1536x384xf32>
    %172 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<1536x384xf32>) outs(%171 : tensor<1x28x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x1536x384xf32>
    %collapsed_379 = tensor.collapse_shape %170 [[0, 1], [2], [3]] : tensor<1x28x28x1536xf32> into tensor<28x28x1536xf32>
    %collapsed_380 = tensor.collapse_shape %172 [[0, 1], [2], [3]] : tensor<1x28x1536x384xf32> into tensor<28x1536x384xf32>
    %173 = tensor.empty() : tensor<28x28x384xf32>
    %174 = linalg.fill ins(%cst_343 : f32) outs(%173 : tensor<28x28x384xf32>) -> tensor<28x28x384xf32>
    %175 = linalg.batch_matmul ins(%collapsed_379, %collapsed_380 : tensor<28x28x1536xf32>, tensor<28x1536x384xf32>) outs(%174 : tensor<28x28x384xf32>) -> tensor<28x28x384xf32>
    %expanded_381 = tensor.expand_shape %175 [[0, 1], [2], [3]] : tensor<28x28x384xf32> into tensor<1x28x28x384xf32>
    %176 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_381, %cst_299 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x28x28x384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_307, %177 : tensor<384x1x1xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %179 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %137 : tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %padded_382 = tensor.pad %179 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x384x28x28xf32> to tensor<1x384x34x34xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_296 : tensor<384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %collapsed_383 = tensor.collapse_shape %cst_297 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %181 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_382, %collapsed_383 : tensor<1x384x34x34xf32>, tensor<384x7x7xf32>) outs(%180 : tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x384x28x28xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%182 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %184 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %186 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %185 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %187 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %186 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%187 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %189 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %190 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x28x28x1xf32>
    %191 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %193 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %192 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %194 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_295 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_294 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %196 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_293 : tensor<1536x384xf32>) outs(%157 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %197 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %198 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<384x1536xf32>) outs(%160 : tensor<1x28x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x384x1536xf32>
    %collapsed_384 = tensor.collapse_shape %197 [[0, 1], [2], [3]] : tensor<1x28x28x384xf32> into tensor<28x28x384xf32>
    %collapsed_385 = tensor.collapse_shape %198 [[0, 1], [2], [3]] : tensor<1x28x384x1536xf32> into tensor<28x384x1536xf32>
    %199 = linalg.batch_matmul ins(%collapsed_384, %collapsed_385 : tensor<28x28x384xf32>, tensor<28x384x1536xf32>) outs(%163 : tensor<28x28x1536xf32>) -> tensor<28x28x1536xf32>
    %expanded_386 = tensor.expand_shape %199 [[0, 1], [2], [3]] : tensor<28x28x1536xf32> into tensor<1x28x28x1536xf32>
    %200 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_386, %cst_292 : tensor<1x28x28x1536xf32>, tensor<1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1536xf32>
    %201 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x28x28x1536xf32>
    %202 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_291 : tensor<384x1536xf32>) outs(%168 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %203 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x1536xf32>
    %204 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<1536x384xf32>) outs(%171 : tensor<1x28x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x1536x384xf32>
    %collapsed_387 = tensor.collapse_shape %203 [[0, 1], [2], [3]] : tensor<1x28x28x1536xf32> into tensor<28x28x1536xf32>
    %collapsed_388 = tensor.collapse_shape %204 [[0, 1], [2], [3]] : tensor<1x28x1536x384xf32> into tensor<28x1536x384xf32>
    %205 = linalg.batch_matmul ins(%collapsed_387, %collapsed_388 : tensor<28x28x1536xf32>, tensor<28x1536x384xf32>) outs(%174 : tensor<28x28x384xf32>) -> tensor<28x28x384xf32>
    %expanded_389 = tensor.expand_shape %205 [[0, 1], [2], [3]] : tensor<28x28x384xf32> into tensor<1x28x28x384xf32>
    %206 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_389, %cst_290 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x28x28x384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %208 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_298, %207 : tensor<384x1x1xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %209 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %179 : tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %padded_390 = tensor.pad %209 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x384x28x28xf32> to tensor<1x384x34x34xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_287 : tensor<384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %collapsed_391 = tensor.collapse_shape %cst_288 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %211 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_390, %collapsed_391 : tensor<1x384x34x34xf32>, tensor<384x7x7xf32>) outs(%210 : tensor<1x384x28x28xf32>) -> tensor<1x384x28x28xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x384x28x28xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%212 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %215 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %216 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %215 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %217 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %216 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%217 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %219 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %220 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x28x28x1xf32>
    %221 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %223 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %222 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_286 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %225 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_285 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %226 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_284 : tensor<1536x384xf32>) outs(%157 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %228 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<384x1536xf32>) outs(%160 : tensor<1x28x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x384x1536xf32>
    %collapsed_392 = tensor.collapse_shape %227 [[0, 1], [2], [3]] : tensor<1x28x28x384xf32> into tensor<28x28x384xf32>
    %collapsed_393 = tensor.collapse_shape %228 [[0, 1], [2], [3]] : tensor<1x28x384x1536xf32> into tensor<28x384x1536xf32>
    %229 = linalg.batch_matmul ins(%collapsed_392, %collapsed_393 : tensor<28x28x384xf32>, tensor<28x384x1536xf32>) outs(%163 : tensor<28x28x1536xf32>) -> tensor<28x28x1536xf32>
    %expanded_394 = tensor.expand_shape %229 [[0, 1], [2], [3]] : tensor<28x28x1536xf32> into tensor<1x28x28x1536xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_394, %cst_283 : tensor<1x28x28x1536xf32>, tensor<1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1536xf32>
    %231 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x28x28x1536xf32>
    %232 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_282 : tensor<384x1536xf32>) outs(%168 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %233 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x28x28x1536xf32>) outs(%165 : tensor<1x28x28x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x1536xf32>
    %234 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<1536x384xf32>) outs(%171 : tensor<1x28x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x1536x384xf32>
    %collapsed_395 = tensor.collapse_shape %233 [[0, 1], [2], [3]] : tensor<1x28x28x1536xf32> into tensor<28x28x1536xf32>
    %collapsed_396 = tensor.collapse_shape %234 [[0, 1], [2], [3]] : tensor<1x28x1536x384xf32> into tensor<28x1536x384xf32>
    %235 = linalg.batch_matmul ins(%collapsed_395, %collapsed_396 : tensor<28x28x1536xf32>, tensor<28x1536x384xf32>) outs(%174 : tensor<28x28x384xf32>) -> tensor<28x28x384xf32>
    %expanded_397 = tensor.expand_shape %235 [[0, 1], [2], [3]] : tensor<28x28x384xf32> into tensor<1x28x28x384xf32>
    %236 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_397, %cst_281 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x28x28x384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_289, %237 : tensor<384x1x1xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %239 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %209 : tensor<1x384x28x28xf32>, tensor<1x384x28x28xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x384x28x28xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x384x28x28xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%240 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %242 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %244 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %243 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %245 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %244 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%245 : tensor<1x28x28x384xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %247 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_349 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %248 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x28x28x1xf32>
    %249 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x1xf32>
    %250 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x384xf32>
    %251 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %250 : tensor<1x28x28x384xf32>, tensor<1x28x28x384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %252 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_280 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %253 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_279 : tensor<1x28x28x384xf32>, tensor<384xf32>) outs(%140 : tensor<1x28x28x384xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x28x28x384xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x28x28x384xf32>) outs(%135 : tensor<1x384x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x28x28xf32>
    %255 = tensor.empty() : tensor<1x768x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_277 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%254, %cst_278 : tensor<1x384x28x28xf32>, tensor<768x384x2x2xf32>) outs(%256 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %padded_398 = tensor.pad %257 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_274 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_399 = tensor.collapse_shape %cst_275 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %259 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_398, %collapsed_399 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%258 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %260 = tensor.empty() : tensor<1x14x14x768xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %262 = tensor.empty() : tensor<1x14x14x1xf32>
    %263 = linalg.fill ins(%cst_343 : f32) outs(%262 : tensor<1x14x14x1xf32>) -> tensor<1x14x14x1xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%261 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %266 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %267 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %266 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %268 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %267 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%268 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %270 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %271 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %272 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %274 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %273 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %275 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_273 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %276 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_272 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %277 = tensor.empty() : tensor<768x3072xf32>
    %278 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_271 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %280 = tensor.empty() : tensor<1x14x768x3072xf32>
    %281 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_400 = tensor.collapse_shape %279 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_401 = tensor.collapse_shape %281 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %282 = tensor.empty() : tensor<14x14x3072xf32>
    %283 = linalg.fill ins(%cst_343 : f32) outs(%282 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %284 = linalg.batch_matmul ins(%collapsed_400, %collapsed_401 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_402 = tensor.expand_shape %284 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %285 = tensor.empty() : tensor<1x14x14x3072xf32>
    %286 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_402, %cst_270 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %287 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %288 = tensor.empty() : tensor<3072x768xf32>
    %289 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_269 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %290 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %291 = tensor.empty() : tensor<1x14x3072x768xf32>
    %292 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_403 = tensor.collapse_shape %290 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_404 = tensor.collapse_shape %292 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %293 = tensor.empty() : tensor<14x14x768xf32>
    %294 = linalg.fill ins(%cst_343 : f32) outs(%293 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %295 = linalg.batch_matmul ins(%collapsed_403, %collapsed_404 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_405 = tensor.expand_shape %295 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %296 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_405, %cst_268 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %297 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %298 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_276, %297 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %257 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_406 = tensor.pad %299 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %300 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_265 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_407 = tensor.collapse_shape %cst_266 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %301 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_406, %collapsed_407 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%300 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%302 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %305 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %305 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %306 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%307 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %309 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %310 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %311 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %312 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %313 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %312 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %314 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst_264 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_263 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %316 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_262 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %317 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %318 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_408 = tensor.collapse_shape %317 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_409 = tensor.collapse_shape %318 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %319 = linalg.batch_matmul ins(%collapsed_408, %collapsed_409 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_410 = tensor.expand_shape %319 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %320 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_410, %cst_261 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %322 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_260 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %323 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %324 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_411 = tensor.collapse_shape %323 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_412 = tensor.collapse_shape %324 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %325 = linalg.batch_matmul ins(%collapsed_411, %collapsed_412 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_413 = tensor.expand_shape %325 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %326 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_413, %cst_259 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_267, %327 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %299 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_414 = tensor.pad %329 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_256 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_415 = tensor.collapse_shape %cst_257 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %331 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_414, %collapsed_415 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%330 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%332 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %334 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %336 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %335 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %337 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %336 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%337 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %339 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %340 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %341 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %343 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %342 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %344 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_255 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %345 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_254 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_253 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %347 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %348 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_416 = tensor.collapse_shape %347 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_417 = tensor.collapse_shape %348 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %349 = linalg.batch_matmul ins(%collapsed_416, %collapsed_417 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_418 = tensor.expand_shape %349 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %350 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_418, %cst_252 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %351 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %352 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_251 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %353 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %354 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_419 = tensor.collapse_shape %353 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_420 = tensor.collapse_shape %354 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %355 = linalg.batch_matmul ins(%collapsed_419, %collapsed_420 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_421 = tensor.expand_shape %355 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %356 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_421, %cst_250 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %358 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_258, %357 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %329 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_422 = tensor.pad %359 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %360 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_247 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_423 = tensor.collapse_shape %cst_248 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %361 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_422, %collapsed_423 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%360 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %363 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%362 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %364 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %365 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %366 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362, %365 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %367 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %366 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%367 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %369 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %370 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %371 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %372 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %373 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %372 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %374 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %cst_246 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %375 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %cst_245 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %376 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_244 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %377 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %378 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_424 = tensor.collapse_shape %377 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_425 = tensor.collapse_shape %378 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %379 = linalg.batch_matmul ins(%collapsed_424, %collapsed_425 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_426 = tensor.expand_shape %379 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %380 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_426, %cst_243 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %381 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %382 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_242 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %383 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %384 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_427 = tensor.collapse_shape %383 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_428 = tensor.collapse_shape %384 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %385 = linalg.batch_matmul ins(%collapsed_427, %collapsed_428 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_429 = tensor.expand_shape %385 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %386 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_429, %cst_241 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_249, %387 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %359 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_430 = tensor.pad %389 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %390 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_238 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_431 = tensor.collapse_shape %cst_239 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %391 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_430, %collapsed_431 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%390 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %393 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%392 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %394 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %396 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %395 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %397 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %396 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%397 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %399 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %400 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %401 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %402 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %403 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %402 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %404 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_237 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %405 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_236 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %406 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_235 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %407 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %408 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_432 = tensor.collapse_shape %407 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_433 = tensor.collapse_shape %408 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %409 = linalg.batch_matmul ins(%collapsed_432, %collapsed_433 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_434 = tensor.expand_shape %409 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %410 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_434, %cst_234 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %411 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %412 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_233 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %413 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %414 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_435 = tensor.collapse_shape %413 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_436 = tensor.collapse_shape %414 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %415 = linalg.batch_matmul ins(%collapsed_435, %collapsed_436 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_437 = tensor.expand_shape %415 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %416 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_437, %cst_232 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_240, %417 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %389 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_438 = tensor.pad %419 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_229 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_439 = tensor.collapse_shape %cst_230 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %421 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_438, %collapsed_439 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%420 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %422 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %423 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%422 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %424 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %426 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %425 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %427 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %426 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%427 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %429 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %430 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %431 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %433 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %432 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %434 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %cst_228 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %435 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_227 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %436 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_226 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %437 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %438 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_440 = tensor.collapse_shape %437 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_441 = tensor.collapse_shape %438 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %439 = linalg.batch_matmul ins(%collapsed_440, %collapsed_441 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_442 = tensor.expand_shape %439 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %440 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_442, %cst_225 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %441 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %442 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_224 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %443 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %444 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_443 = tensor.collapse_shape %443 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_444 = tensor.collapse_shape %444 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %445 = linalg.batch_matmul ins(%collapsed_443, %collapsed_444 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_445 = tensor.expand_shape %445 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %446 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_445, %cst_223 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_231, %447 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %449 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %419 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_446 = tensor.pad %449 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %450 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_220 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_447 = tensor.collapse_shape %cst_221 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %451 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_446, %collapsed_447 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%450 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%452 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %454 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %455 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %456 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %455 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %457 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %456 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%457 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %459 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %460 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %461 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %463 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %462 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %464 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %cst_219 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %465 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %cst_218 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %466 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_217 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %467 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %468 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_448 = tensor.collapse_shape %467 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_449 = tensor.collapse_shape %468 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %469 = linalg.batch_matmul ins(%collapsed_448, %collapsed_449 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_450 = tensor.expand_shape %469 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %470 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_450, %cst_216 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %471 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %472 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_215 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %473 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %474 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_451 = tensor.collapse_shape %473 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_452 = tensor.collapse_shape %474 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %475 = linalg.batch_matmul ins(%collapsed_451, %collapsed_452 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_453 = tensor.expand_shape %475 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %476 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_453, %cst_214 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %477 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %478 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_222, %477 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %479 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %449 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_454 = tensor.pad %479 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_211 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_455 = tensor.collapse_shape %cst_212 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %481 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_454, %collapsed_455 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%480 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%482 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %484 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %486 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %485 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %487 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %486 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %488 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%487 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %489 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %490 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %491 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %492 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %493 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %492 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %494 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %cst_210 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %495 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_209 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %496 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_208 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %497 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %498 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_456 = tensor.collapse_shape %497 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_457 = tensor.collapse_shape %498 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %499 = linalg.batch_matmul ins(%collapsed_456, %collapsed_457 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_458 = tensor.expand_shape %499 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %500 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_458, %cst_207 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %501 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %502 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_206 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %503 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %504 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_459 = tensor.collapse_shape %503 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_460 = tensor.collapse_shape %504 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %505 = linalg.batch_matmul ins(%collapsed_459, %collapsed_460 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_461 = tensor.expand_shape %505 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %506 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_461, %cst_205 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %508 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_213, %507 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %509 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %479 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_462 = tensor.pad %509 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %510 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_202 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_463 = tensor.collapse_shape %cst_203 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %511 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_462, %collapsed_463 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%510 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%512 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %514 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %515 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %516 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %515 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %517 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %516 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %518 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%517 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %519 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %520 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %521 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %522 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %523 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %522 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %524 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %cst_201 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %525 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %cst_200 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %526 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_199 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %527 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %528 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_464 = tensor.collapse_shape %527 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_465 = tensor.collapse_shape %528 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %529 = linalg.batch_matmul ins(%collapsed_464, %collapsed_465 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_466 = tensor.expand_shape %529 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %530 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_466, %cst_198 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %531 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %532 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_197 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %533 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %534 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_467 = tensor.collapse_shape %533 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_468 = tensor.collapse_shape %534 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %535 = linalg.batch_matmul ins(%collapsed_467, %collapsed_468 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_469 = tensor.expand_shape %535 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %536 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_469, %cst_196 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %538 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_204, %537 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %539 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %509 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_470 = tensor.pad %539 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %540 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_193 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_471 = tensor.collapse_shape %cst_194 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %541 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_470, %collapsed_471 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%540 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %542 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %543 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%542 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %544 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%543 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %545 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %546 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542, %545 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %547 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %546 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %548 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%547 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %549 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %550 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %551 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%550 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %552 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %553 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546, %552 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %554 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553, %cst_192 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %555 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%554, %cst_191 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %556 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_190 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %557 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%555 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %558 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%556 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_472 = tensor.collapse_shape %557 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_473 = tensor.collapse_shape %558 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %559 = linalg.batch_matmul ins(%collapsed_472, %collapsed_473 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_474 = tensor.expand_shape %559 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %560 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_474, %cst_189 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %561 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%560 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %562 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_188 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %563 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %564 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%562 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_475 = tensor.collapse_shape %563 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_476 = tensor.collapse_shape %564 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %565 = linalg.batch_matmul ins(%collapsed_475, %collapsed_476 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_477 = tensor.expand_shape %565 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %566 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_477, %cst_187 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %567 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%566 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %568 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_195, %567 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %569 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %539 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_478 = tensor.pad %569 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %570 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_184 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_479 = tensor.collapse_shape %cst_185 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %571 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_478, %collapsed_479 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%570 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %572 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %573 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%572 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %574 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %575 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %576 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %575 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %577 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %576 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %578 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%577 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %579 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %580 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%579 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %581 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %582 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %583 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %582 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %584 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%583, %cst_183 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %585 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584, %cst_182 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %586 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_181 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %587 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %588 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_480 = tensor.collapse_shape %587 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_481 = tensor.collapse_shape %588 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %589 = linalg.batch_matmul ins(%collapsed_480, %collapsed_481 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_482 = tensor.expand_shape %589 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %590 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_482, %cst_180 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %591 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %592 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_179 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %593 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%591 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %594 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%592 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_483 = tensor.collapse_shape %593 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_484 = tensor.collapse_shape %594 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %595 = linalg.batch_matmul ins(%collapsed_483, %collapsed_484 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_485 = tensor.expand_shape %595 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %596 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_485, %cst_178 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %597 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %598 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_186, %597 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %599 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598, %569 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_486 = tensor.pad %599 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %600 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_175 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_487 = tensor.collapse_shape %cst_176 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %601 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_486, %collapsed_487 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%600 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%602 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %604 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %605 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %606 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %605 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %607 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %606 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%607 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %609 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %610 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %611 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %612 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %613 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %612 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %614 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %cst_174 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %615 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %cst_173 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %616 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_172 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %617 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %618 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_488 = tensor.collapse_shape %617 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_489 = tensor.collapse_shape %618 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %619 = linalg.batch_matmul ins(%collapsed_488, %collapsed_489 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_490 = tensor.expand_shape %619 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %620 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_490, %cst_171 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %621 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %622 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_170 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %623 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %624 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_491 = tensor.collapse_shape %623 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_492 = tensor.collapse_shape %624 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %625 = linalg.batch_matmul ins(%collapsed_491, %collapsed_492 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_493 = tensor.expand_shape %625 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %626 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_493, %cst_169 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %627 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %628 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_177, %627 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %629 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %599 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_494 = tensor.pad %629 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %630 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_166 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_495 = tensor.collapse_shape %cst_167 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %631 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_494, %collapsed_495 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%630 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%632 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %634 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %636 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632, %635 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %637 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %636 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%637 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %639 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %640 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %641 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %642 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %643 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %642 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %644 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %cst_165 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %645 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %cst_164 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %646 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_163 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %647 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %648 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_496 = tensor.collapse_shape %647 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_497 = tensor.collapse_shape %648 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %649 = linalg.batch_matmul ins(%collapsed_496, %collapsed_497 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_498 = tensor.expand_shape %649 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %650 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_498, %cst_162 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %651 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %652 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_161 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %653 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %654 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_499 = tensor.collapse_shape %653 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_500 = tensor.collapse_shape %654 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %655 = linalg.batch_matmul ins(%collapsed_499, %collapsed_500 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_501 = tensor.expand_shape %655 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %656 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_501, %cst_160 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %658 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_168, %657 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %659 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %629 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_502 = tensor.pad %659 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %660 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_157 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_503 = tensor.collapse_shape %cst_158 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %661 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_502, %collapsed_503 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%660 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %662 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%661 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %663 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%662 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %664 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %665 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %666 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%662, %665 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %667 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %666 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %668 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%667 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %669 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%668 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %670 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %671 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %672 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%671 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %673 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %672 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %674 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%673, %cst_156 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %675 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674, %cst_155 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %676 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_154 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %677 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %678 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_504 = tensor.collapse_shape %677 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_505 = tensor.collapse_shape %678 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %679 = linalg.batch_matmul ins(%collapsed_504, %collapsed_505 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_506 = tensor.expand_shape %679 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %680 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_506, %cst_153 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %681 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %682 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_152 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %683 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %684 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%682 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_507 = tensor.collapse_shape %683 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_508 = tensor.collapse_shape %684 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %685 = linalg.batch_matmul ins(%collapsed_507, %collapsed_508 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_509 = tensor.expand_shape %685 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %686 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_509, %cst_151 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %687 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%686 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %688 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_159, %687 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %689 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%688, %659 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_510 = tensor.pad %689 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %690 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_148 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_511 = tensor.collapse_shape %cst_149 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %691 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_510, %collapsed_511 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%690 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %692 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%691 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %693 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%692 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %694 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%693 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %695 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%694 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %696 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%692, %695 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %697 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %696 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %698 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%697 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %699 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%698 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %700 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%699 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %701 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%700 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %702 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%701 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %703 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%696, %702 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %704 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703, %cst_147 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %705 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%704, %cst_146 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %706 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_145 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %707 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%705 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %708 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%706 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_512 = tensor.collapse_shape %707 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_513 = tensor.collapse_shape %708 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %709 = linalg.batch_matmul ins(%collapsed_512, %collapsed_513 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_514 = tensor.expand_shape %709 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %710 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_514, %cst_144 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %711 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%710 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %712 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_143 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %713 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %714 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_515 = tensor.collapse_shape %713 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_516 = tensor.collapse_shape %714 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %715 = linalg.batch_matmul ins(%collapsed_515, %collapsed_516 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_517 = tensor.expand_shape %715 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %716 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_517, %cst_142 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %717 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%716 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %718 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_150, %717 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %719 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%718, %689 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_518 = tensor.pad %719 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %720 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_139 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_519 = tensor.collapse_shape %cst_140 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %721 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_518, %collapsed_519 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%720 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %722 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%721 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %723 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%722 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %724 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%723 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %725 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%724 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %726 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%722, %725 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %727 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %726 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %728 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%727 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %729 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%728 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %730 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%729 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %731 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%730 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %732 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%731 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %733 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%726, %732 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %734 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%733, %cst_138 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %735 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%734, %cst_137 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %736 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_136 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %737 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%735 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %738 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%736 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_520 = tensor.collapse_shape %737 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_521 = tensor.collapse_shape %738 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %739 = linalg.batch_matmul ins(%collapsed_520, %collapsed_521 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_522 = tensor.expand_shape %739 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %740 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_522, %cst_135 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %741 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%740 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %742 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_134 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %743 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%741 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %744 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%742 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_523 = tensor.collapse_shape %743 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_524 = tensor.collapse_shape %744 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %745 = linalg.batch_matmul ins(%collapsed_523, %collapsed_524 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_525 = tensor.expand_shape %745 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %746 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_525, %cst_133 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %747 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%746 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %748 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_141, %747 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %749 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%748, %719 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_526 = tensor.pad %749 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %750 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_130 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_527 = tensor.collapse_shape %cst_131 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %751 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_526, %collapsed_527 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%750 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %752 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%751 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %753 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%752 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %754 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%753 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %755 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%754 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %756 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%752, %755 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %757 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %756 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %758 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%757 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %759 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%758 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %760 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%759 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %761 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%760 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %762 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%761 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %763 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%756, %762 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %764 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%763, %cst_129 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %765 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%764, %cst_128 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %766 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_127 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %767 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%765 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %768 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%766 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_528 = tensor.collapse_shape %767 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_529 = tensor.collapse_shape %768 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %769 = linalg.batch_matmul ins(%collapsed_528, %collapsed_529 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_530 = tensor.expand_shape %769 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %770 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_530, %cst_126 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %771 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%770 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %772 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_125 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %773 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%771 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %774 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%772 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_531 = tensor.collapse_shape %773 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_532 = tensor.collapse_shape %774 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %775 = linalg.batch_matmul ins(%collapsed_531, %collapsed_532 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_533 = tensor.expand_shape %775 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %776 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_533, %cst_124 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %777 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %778 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_132, %777 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %779 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%778, %749 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_534 = tensor.pad %779 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %780 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_121 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_535 = tensor.collapse_shape %cst_122 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %781 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_534, %collapsed_535 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%780 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %782 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%781 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %783 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%782 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %784 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%783 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %785 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%784 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %786 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782, %785 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %787 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786, %786 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %788 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%787 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %789 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%788 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %790 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%789 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %791 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%790 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %792 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%791 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %793 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%786, %792 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %794 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%793, %cst_120 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %795 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%794, %cst_119 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %796 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_118 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %797 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%795 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %798 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%796 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_536 = tensor.collapse_shape %797 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_537 = tensor.collapse_shape %798 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %799 = linalg.batch_matmul ins(%collapsed_536, %collapsed_537 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_538 = tensor.expand_shape %799 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %800 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_538, %cst_117 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %801 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%800 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %802 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_116 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %803 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%801 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %804 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%802 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_539 = tensor.collapse_shape %803 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_540 = tensor.collapse_shape %804 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %805 = linalg.batch_matmul ins(%collapsed_539, %collapsed_540 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_541 = tensor.expand_shape %805 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %806 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_541, %cst_115 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %807 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%806 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %808 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_123, %807 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %809 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%808, %779 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_542 = tensor.pad %809 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %810 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_112 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_543 = tensor.collapse_shape %cst_113 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %811 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_542, %collapsed_543 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%810 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %812 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%811 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %813 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%812 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %814 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%813 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %815 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%814 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %816 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%812, %815 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %817 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %816 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %818 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%817 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %819 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%818 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %820 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%819 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %821 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %822 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%821 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %823 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%816, %822 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %824 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%823, %cst_111 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %825 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%824, %cst_110 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %826 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_109 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %827 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%825 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %828 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%826 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_544 = tensor.collapse_shape %827 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_545 = tensor.collapse_shape %828 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %829 = linalg.batch_matmul ins(%collapsed_544, %collapsed_545 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_546 = tensor.expand_shape %829 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %830 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_546, %cst_108 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %831 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%830 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %832 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_107 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %833 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%831 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %834 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%832 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_547 = tensor.collapse_shape %833 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_548 = tensor.collapse_shape %834 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %835 = linalg.batch_matmul ins(%collapsed_547, %collapsed_548 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_549 = tensor.expand_shape %835 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %836 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_549, %cst_106 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %837 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%836 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %838 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_114, %837 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %839 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%838, %809 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_550 = tensor.pad %839 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %840 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_103 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_551 = tensor.collapse_shape %cst_104 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %841 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_550, %collapsed_551 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%840 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %842 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%841 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %843 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%842 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %844 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %845 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%844 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %846 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%842, %845 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %847 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846, %846 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %848 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%847 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %849 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%848 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %850 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%849 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %851 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%850 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %852 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %853 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%846, %852 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %854 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%853, %cst_102 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %855 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%854, %cst_101 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %856 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_100 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %857 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %858 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%856 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_552 = tensor.collapse_shape %857 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_553 = tensor.collapse_shape %858 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %859 = linalg.batch_matmul ins(%collapsed_552, %collapsed_553 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_554 = tensor.expand_shape %859 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %860 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_554, %cst_99 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %861 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%860 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %862 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_98 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %863 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %864 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%862 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_555 = tensor.collapse_shape %863 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_556 = tensor.collapse_shape %864 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %865 = linalg.batch_matmul ins(%collapsed_555, %collapsed_556 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_557 = tensor.expand_shape %865 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %866 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_557, %cst_97 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %867 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%866 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %868 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_105, %867 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %869 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%868, %839 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_558 = tensor.pad %869 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %870 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_94 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_559 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %871 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_558, %collapsed_559 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%870 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %872 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%871 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %873 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%872 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %874 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%873 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %875 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%874 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %876 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%872, %875 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %877 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876, %876 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %878 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%877 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %879 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %880 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%879 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %881 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%880 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %882 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%881 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %883 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%876, %882 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %884 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%883, %cst_93 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %885 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%884, %cst_92 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %886 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_91 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %887 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%885 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %888 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_560 = tensor.collapse_shape %887 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_561 = tensor.collapse_shape %888 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %889 = linalg.batch_matmul ins(%collapsed_560, %collapsed_561 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_562 = tensor.expand_shape %889 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %890 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_562, %cst_90 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %891 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%890 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %892 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_89 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %893 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%891 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %894 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%892 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_563 = tensor.collapse_shape %893 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_564 = tensor.collapse_shape %894 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %895 = linalg.batch_matmul ins(%collapsed_563, %collapsed_564 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_565 = tensor.expand_shape %895 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %896 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_565, %cst_88 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %897 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%896 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %898 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_96, %897 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %899 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%898, %869 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_566 = tensor.pad %899 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %900 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_85 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_567 = tensor.collapse_shape %cst_86 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %901 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_566, %collapsed_567 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%900 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %902 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%901 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %903 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%902 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %904 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%903 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %905 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%904 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %906 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%902, %905 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %907 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906, %906 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %908 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%907 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %909 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%908 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %910 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%909 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %911 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%910 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %912 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%911 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %913 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%906, %912 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %914 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%913, %cst_84 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %915 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%914, %cst_83 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %916 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_82 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %917 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%915 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %918 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%916 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_568 = tensor.collapse_shape %917 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_569 = tensor.collapse_shape %918 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %919 = linalg.batch_matmul ins(%collapsed_568, %collapsed_569 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_570 = tensor.expand_shape %919 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %920 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_570, %cst_81 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %921 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%920 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %922 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_80 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %923 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%921 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %924 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%922 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_571 = tensor.collapse_shape %923 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_572 = tensor.collapse_shape %924 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %925 = linalg.batch_matmul ins(%collapsed_571, %collapsed_572 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_573 = tensor.expand_shape %925 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %926 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_573, %cst_79 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %927 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%926 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %928 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_87, %927 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %929 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%928, %899 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_574 = tensor.pad %929 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %930 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_76 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_575 = tensor.collapse_shape %cst_77 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %931 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_574, %collapsed_575 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%930 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %932 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%931 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %933 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%932 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %934 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%933 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %935 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%934 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %936 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%932, %935 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %937 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %936 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %938 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%937 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %939 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%938 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %940 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%939 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %941 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%940 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %942 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%941 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %943 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%936, %942 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %944 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%943, %cst_75 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %945 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%944, %cst_74 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %946 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_73 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %947 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%945 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %948 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%946 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_576 = tensor.collapse_shape %947 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_577 = tensor.collapse_shape %948 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %949 = linalg.batch_matmul ins(%collapsed_576, %collapsed_577 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_578 = tensor.expand_shape %949 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %950 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_578, %cst_72 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %951 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%950 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %952 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_71 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %953 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%951 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %954 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%952 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_579 = tensor.collapse_shape %953 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_580 = tensor.collapse_shape %954 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %955 = linalg.batch_matmul ins(%collapsed_579, %collapsed_580 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_581 = tensor.expand_shape %955 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %956 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_581, %cst_70 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %957 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%956 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %958 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_78, %957 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %959 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%958, %929 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_582 = tensor.pad %959 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %960 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_67 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_583 = tensor.collapse_shape %cst_68 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %961 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_582, %collapsed_583 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%960 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %962 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%961 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %963 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%962 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %964 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%963 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %965 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%964 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %966 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%962, %965 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %967 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966, %966 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %968 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%967 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %969 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%968 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %970 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%969 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %971 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%970 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %972 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%971 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %973 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%966, %972 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %974 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%973, %cst_66 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %975 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%974, %cst_65 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %976 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_64 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %977 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%975 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %978 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%976 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_584 = tensor.collapse_shape %977 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_585 = tensor.collapse_shape %978 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %979 = linalg.batch_matmul ins(%collapsed_584, %collapsed_585 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_586 = tensor.expand_shape %979 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %980 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_586, %cst_63 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %981 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%980 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %982 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_62 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %983 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%981 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %984 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%982 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_587 = tensor.collapse_shape %983 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_588 = tensor.collapse_shape %984 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %985 = linalg.batch_matmul ins(%collapsed_587, %collapsed_588 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_589 = tensor.expand_shape %985 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %986 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_589, %cst_61 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %987 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%986 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %988 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_69, %987 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %989 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%988, %959 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_590 = tensor.pad %989 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %990 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_58 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_591 = tensor.collapse_shape %cst_59 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %991 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_590, %collapsed_591 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%990 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %992 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%991 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %993 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%992 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %994 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%993 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %995 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%994 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %996 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%992, %995 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %997 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %996 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %998 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%997 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %999 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%998 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1000 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%999 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %1001 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1000 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1002 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1001 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1003 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%996, %1002 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1004 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1003, %cst_57 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1005 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1004, %cst_56 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1006 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_55 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %1007 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1005 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1008 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1006 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_592 = tensor.collapse_shape %1007 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_593 = tensor.collapse_shape %1008 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %1009 = linalg.batch_matmul ins(%collapsed_592, %collapsed_593 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_594 = tensor.expand_shape %1009 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %1010 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_594, %cst_54 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %1011 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1010 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %1012 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_53 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %1013 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1011 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %1014 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1012 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_595 = tensor.collapse_shape %1013 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_596 = tensor.collapse_shape %1014 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %1015 = linalg.batch_matmul ins(%collapsed_595, %collapsed_596 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_597 = tensor.expand_shape %1015 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %1016 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_597, %cst_52 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1017 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1016 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %1018 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_60, %1017 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %1019 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1018, %989 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_598 = tensor.pad %1019 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %1020 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_49 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_599 = tensor.collapse_shape %cst_50 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %1021 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_598, %collapsed_599 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%1020 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %1022 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1021 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1023 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1022 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1024 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1023 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1025 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1024 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1026 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1022, %1025 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1027 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026, %1026 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1028 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1027 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1029 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1028 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1030 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1029 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %1031 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1030 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1032 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1031 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1033 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1026, %1032 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1034 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1033, %cst_48 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1035 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1034, %cst_47 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1036 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_46 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %1037 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1035 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1038 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1036 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_600 = tensor.collapse_shape %1037 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_601 = tensor.collapse_shape %1038 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %1039 = linalg.batch_matmul ins(%collapsed_600, %collapsed_601 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_602 = tensor.expand_shape %1039 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %1040 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_602, %cst_45 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %1041 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1040 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %1042 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_44 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %1043 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1041 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %1044 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1042 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_603 = tensor.collapse_shape %1043 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_604 = tensor.collapse_shape %1044 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %1045 = linalg.batch_matmul ins(%collapsed_603, %collapsed_604 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_605 = tensor.expand_shape %1045 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %1046 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_605, %cst_43 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1047 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1046 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %1048 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51, %1047 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %1049 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1048, %1019 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %padded_606 = tensor.pad %1049 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x768x14x14xf32> to tensor<1x768x20x20xf32>
    %1050 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_40 : tensor<768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %collapsed_607 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %1051 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_606, %collapsed_607 : tensor<1x768x20x20xf32>, tensor<768x7x7xf32>) outs(%1050 : tensor<1x768x14x14xf32>) -> tensor<1x768x14x14xf32>
    %1052 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1051 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1053 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1052 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1054 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1053 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1055 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1054 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1056 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1052, %1055 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1057 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056, %1056 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1058 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1057 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1059 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1058 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1060 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1059 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %1061 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1060 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1062 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1061 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1063 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1056, %1062 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1064 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1063, %cst_39 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1065 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1064, %cst_38 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1066 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_37 : tensor<3072x768xf32>) outs(%277 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %1067 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1065 : tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1068 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1066 : tensor<768x3072xf32>) outs(%280 : tensor<1x14x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x768x3072xf32>
    %collapsed_608 = tensor.collapse_shape %1067 [[0, 1], [2], [3]] : tensor<1x14x14x768xf32> into tensor<14x14x768xf32>
    %collapsed_609 = tensor.collapse_shape %1068 [[0, 1], [2], [3]] : tensor<1x14x768x3072xf32> into tensor<14x768x3072xf32>
    %1069 = linalg.batch_matmul ins(%collapsed_608, %collapsed_609 : tensor<14x14x768xf32>, tensor<14x768x3072xf32>) outs(%283 : tensor<14x14x3072xf32>) -> tensor<14x14x3072xf32>
    %expanded_610 = tensor.expand_shape %1069 [[0, 1], [2], [3]] : tensor<14x14x3072xf32> into tensor<1x14x14x3072xf32>
    %1070 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_610, %cst_36 : tensor<1x14x14x3072xf32>, tensor<3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x3072xf32>
    %1071 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1070 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x14x14x3072xf32>
    %1072 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_35 : tensor<768x3072xf32>) outs(%288 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %1073 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1071 : tensor<1x14x14x3072xf32>) outs(%285 : tensor<1x14x14x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x3072xf32>
    %1074 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1072 : tensor<3072x768xf32>) outs(%291 : tensor<1x14x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x3072x768xf32>
    %collapsed_611 = tensor.collapse_shape %1073 [[0, 1], [2], [3]] : tensor<1x14x14x3072xf32> into tensor<14x14x3072xf32>
    %collapsed_612 = tensor.collapse_shape %1074 [[0, 1], [2], [3]] : tensor<1x14x3072x768xf32> into tensor<14x3072x768xf32>
    %1075 = linalg.batch_matmul ins(%collapsed_611, %collapsed_612 : tensor<14x14x3072xf32>, tensor<14x3072x768xf32>) outs(%294 : tensor<14x14x768xf32>) -> tensor<14x14x768xf32>
    %expanded_613 = tensor.expand_shape %1075 [[0, 1], [2], [3]] : tensor<14x14x768xf32> into tensor<1x14x14x768xf32>
    %1076 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_613, %cst_34 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1077 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1076 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %1078 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_42, %1077 : tensor<768x1x1xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %1079 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1078, %1049 : tensor<1x768x14x14xf32>, tensor<1x768x14x14xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x768x14x14xf32>
    %1080 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1079 : tensor<1x768x14x14xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1081 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1080 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1082 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1081 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1083 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1082 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1084 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1080, %1083 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1085 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084, %1084 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1086 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1085 : tensor<1x14x14x768xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1087 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1086 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_350 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1088 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1087 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x14x14x1xf32>
    %1089 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1088 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x1xf32>
    %1090 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1089 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x768xf32>
    %1091 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1084, %1090 : tensor<1x14x14x768xf32>, tensor<1x14x14x768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1092 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1091, %cst_33 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1093 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1092, %cst_32 : tensor<1x14x14x768xf32>, tensor<768xf32>) outs(%260 : tensor<1x14x14x768xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x14x14x768xf32>
    %1094 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1093 : tensor<1x14x14x768xf32>) outs(%255 : tensor<1x768x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x14x14xf32>
    %1095 = tensor.empty() : tensor<1x1536x7x7xf32>
    %1096 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %1097 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%1094, %cst_31 : tensor<1x768x14x14xf32>, tensor<1536x768x2x2xf32>) outs(%1096 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    %padded_614 = tensor.pad %1097 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x13x13xf32>
    %1098 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_27 : tensor<1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %collapsed_615 = tensor.collapse_shape %cst_28 [[0, 1], [2], [3]] : tensor<1536x1x7x7xf32> into tensor<1536x7x7xf32>
    %1099 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_614, %collapsed_615 : tensor<1x1536x13x13xf32>, tensor<1536x7x7xf32>) outs(%1098 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    %1100 = tensor.empty() : tensor<1x7x7x1536xf32>
    %1101 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1099 : tensor<1x1536x7x7xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1102 = tensor.empty() : tensor<1x7x7x1xf32>
    %1103 = linalg.fill ins(%cst_343 : f32) outs(%1102 : tensor<1x7x7x1xf32>) -> tensor<1x7x7x1xf32>
    %1104 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1101 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1105 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1104 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1106 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1105 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1107 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1101, %1106 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1108 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1107, %1107 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1109 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1108 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1110 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1109 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1111 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1110 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x7x7x1xf32>
    %1112 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1111 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1113 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1112 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1114 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1107, %1113 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1115 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114, %cst_26 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1116 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1115, %cst_25 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1117 = tensor.empty() : tensor<1536x6144xf32>
    %1118 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_24 : tensor<6144x1536xf32>) outs(%1117 : tensor<1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x6144xf32>
    %1119 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1116 : tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1120 = tensor.empty() : tensor<1x7x1536x6144xf32>
    %1121 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1118 : tensor<1536x6144xf32>) outs(%1120 : tensor<1x7x1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x1536x6144xf32>
    %collapsed_616 = tensor.collapse_shape %1119 [[0, 1], [2], [3]] : tensor<1x7x7x1536xf32> into tensor<7x7x1536xf32>
    %collapsed_617 = tensor.collapse_shape %1121 [[0, 1], [2], [3]] : tensor<1x7x1536x6144xf32> into tensor<7x1536x6144xf32>
    %1122 = tensor.empty() : tensor<7x7x6144xf32>
    %1123 = linalg.fill ins(%cst_343 : f32) outs(%1122 : tensor<7x7x6144xf32>) -> tensor<7x7x6144xf32>
    %1124 = linalg.batch_matmul ins(%collapsed_616, %collapsed_617 : tensor<7x7x1536xf32>, tensor<7x1536x6144xf32>) outs(%1123 : tensor<7x7x6144xf32>) -> tensor<7x7x6144xf32>
    %expanded_618 = tensor.expand_shape %1124 [[0, 1], [2], [3]] : tensor<7x7x6144xf32> into tensor<1x7x7x6144xf32>
    %1125 = tensor.empty() : tensor<1x7x7x6144xf32>
    %1126 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_618, %cst_23 : tensor<1x7x7x6144xf32>, tensor<6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x6144xf32>
    %1127 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1126 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x7x7x6144xf32>
    %1128 = tensor.empty() : tensor<6144x1536xf32>
    %1129 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_22 : tensor<1536x6144xf32>) outs(%1128 : tensor<6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<6144x1536xf32>
    %1130 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1127 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x6144xf32>
    %1131 = tensor.empty() : tensor<1x7x6144x1536xf32>
    %1132 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1129 : tensor<6144x1536xf32>) outs(%1131 : tensor<1x7x6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x6144x1536xf32>
    %collapsed_619 = tensor.collapse_shape %1130 [[0, 1], [2], [3]] : tensor<1x7x7x6144xf32> into tensor<7x7x6144xf32>
    %collapsed_620 = tensor.collapse_shape %1132 [[0, 1], [2], [3]] : tensor<1x7x6144x1536xf32> into tensor<7x6144x1536xf32>
    %1133 = tensor.empty() : tensor<7x7x1536xf32>
    %1134 = linalg.fill ins(%cst_343 : f32) outs(%1133 : tensor<7x7x1536xf32>) -> tensor<7x7x1536xf32>
    %1135 = linalg.batch_matmul ins(%collapsed_619, %collapsed_620 : tensor<7x7x6144xf32>, tensor<7x6144x1536xf32>) outs(%1134 : tensor<7x7x1536xf32>) -> tensor<7x7x1536xf32>
    %expanded_621 = tensor.expand_shape %1135 [[0, 1], [2], [3]] : tensor<7x7x1536xf32> into tensor<1x7x7x1536xf32>
    %1136 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_621, %cst_21 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1137 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136 : tensor<1x7x7x1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %1138 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %1137 : tensor<1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %1139 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1138, %1097 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_622 = tensor.pad %1139 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x13x13xf32>
    %1140 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18 : tensor<1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %collapsed_623 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<1536x1x7x7xf32> into tensor<1536x7x7xf32>
    %1141 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_622, %collapsed_623 : tensor<1x1536x13x13xf32>, tensor<1536x7x7xf32>) outs(%1140 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    %1142 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1141 : tensor<1x1536x7x7xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1143 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1142 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1144 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1143 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1145 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1144 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1146 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1142, %1145 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1147 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1146, %1146 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1148 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1147 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1149 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1148 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1150 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1149 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x7x7x1xf32>
    %1151 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1150 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1152 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1151 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1153 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1146, %1152 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1154 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1153, %cst_17 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1155 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1154, %cst_16 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1156 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_15 : tensor<6144x1536xf32>) outs(%1117 : tensor<1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x6144xf32>
    %1157 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1155 : tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1158 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1156 : tensor<1536x6144xf32>) outs(%1120 : tensor<1x7x1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x1536x6144xf32>
    %collapsed_624 = tensor.collapse_shape %1157 [[0, 1], [2], [3]] : tensor<1x7x7x1536xf32> into tensor<7x7x1536xf32>
    %collapsed_625 = tensor.collapse_shape %1158 [[0, 1], [2], [3]] : tensor<1x7x1536x6144xf32> into tensor<7x1536x6144xf32>
    %1159 = linalg.batch_matmul ins(%collapsed_624, %collapsed_625 : tensor<7x7x1536xf32>, tensor<7x1536x6144xf32>) outs(%1123 : tensor<7x7x6144xf32>) -> tensor<7x7x6144xf32>
    %expanded_626 = tensor.expand_shape %1159 [[0, 1], [2], [3]] : tensor<7x7x6144xf32> into tensor<1x7x7x6144xf32>
    %1160 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_626, %cst_14 : tensor<1x7x7x6144xf32>, tensor<6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x6144xf32>
    %1161 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1160 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x7x7x6144xf32>
    %1162 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_13 : tensor<1536x6144xf32>) outs(%1128 : tensor<6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<6144x1536xf32>
    %1163 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1161 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x6144xf32>
    %1164 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1162 : tensor<6144x1536xf32>) outs(%1131 : tensor<1x7x6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x6144x1536xf32>
    %collapsed_627 = tensor.collapse_shape %1163 [[0, 1], [2], [3]] : tensor<1x7x7x6144xf32> into tensor<7x7x6144xf32>
    %collapsed_628 = tensor.collapse_shape %1164 [[0, 1], [2], [3]] : tensor<1x7x6144x1536xf32> into tensor<7x6144x1536xf32>
    %1165 = linalg.batch_matmul ins(%collapsed_627, %collapsed_628 : tensor<7x7x6144xf32>, tensor<7x6144x1536xf32>) outs(%1134 : tensor<7x7x1536xf32>) -> tensor<7x7x1536xf32>
    %expanded_629 = tensor.expand_shape %1165 [[0, 1], [2], [3]] : tensor<7x7x1536xf32> into tensor<1x7x7x1536xf32>
    %1166 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_629, %cst_12 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1167 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1166 : tensor<1x7x7x1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %1168 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %1167 : tensor<1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %1169 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1168, %1139 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %padded_630 = tensor.pad %1169 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_343 : f32
    } : tensor<1x1536x7x7xf32> to tensor<1x1536x13x13xf32>
    %1170 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %collapsed_631 = tensor.collapse_shape %cst_10 [[0, 1], [2], [3]] : tensor<1536x1x7x7xf32> into tensor<1536x7x7xf32>
    %1171 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_630, %collapsed_631 : tensor<1x1536x13x13xf32>, tensor<1536x7x7xf32>) outs(%1170 : tensor<1x1536x7x7xf32>) -> tensor<1x1536x7x7xf32>
    %1172 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1171 : tensor<1x1536x7x7xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1173 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1172 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1174 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1173 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1175 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1174 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1176 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1172, %1175 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1177 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176, %1176 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1178 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1177 : tensor<1x7x7x1536xf32>) outs(%1103 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1179 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1178 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1180 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1179 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x7x7x1xf32>
    %1181 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1180 : tensor<1x7x7x1xf32>) outs(%1102 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1xf32>
    %1182 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1181 : tensor<1x7x7x1xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1183 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1176, %1182 : tensor<1x7x7x1536xf32>, tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1184 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1183, %cst_8 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1185 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1184, %cst_7 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1186 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_6 : tensor<6144x1536xf32>) outs(%1117 : tensor<1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x6144xf32>
    %1187 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1185 : tensor<1x7x7x1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x1536xf32>
    %1188 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1186 : tensor<1536x6144xf32>) outs(%1120 : tensor<1x7x1536x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x1536x6144xf32>
    %collapsed_632 = tensor.collapse_shape %1187 [[0, 1], [2], [3]] : tensor<1x7x7x1536xf32> into tensor<7x7x1536xf32>
    %collapsed_633 = tensor.collapse_shape %1188 [[0, 1], [2], [3]] : tensor<1x7x1536x6144xf32> into tensor<7x1536x6144xf32>
    %1189 = linalg.batch_matmul ins(%collapsed_632, %collapsed_633 : tensor<7x7x1536xf32>, tensor<7x1536x6144xf32>) outs(%1123 : tensor<7x7x6144xf32>) -> tensor<7x7x6144xf32>
    %expanded_634 = tensor.expand_shape %1189 [[0, 1], [2], [3]] : tensor<7x7x6144xf32> into tensor<1x7x7x6144xf32>
    %1190 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_634, %cst_5 : tensor<1x7x7x6144xf32>, tensor<6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x6144xf32>
    %1191 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1190 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_345 : f32
      %1230 = math.erf %1229 : f32
      %1231 = arith.addf %1230, %cst_344 : f32
      %1232 = arith.mulf %1231, %cst_346 : f32
      %1233 = arith.mulf %in, %1232 : f32
      linalg.yield %1233 : f32
    } -> tensor<1x7x7x6144xf32>
    %1192 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_4 : tensor<1536x6144xf32>) outs(%1128 : tensor<6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<6144x1536xf32>
    %1193 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1191 : tensor<1x7x7x6144xf32>) outs(%1125 : tensor<1x7x7x6144xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x6144xf32>
    %1194 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1192 : tensor<6144x1536xf32>) outs(%1131 : tensor<1x7x6144x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x6144x1536xf32>
    %collapsed_635 = tensor.collapse_shape %1193 [[0, 1], [2], [3]] : tensor<1x7x7x6144xf32> into tensor<7x7x6144xf32>
    %collapsed_636 = tensor.collapse_shape %1194 [[0, 1], [2], [3]] : tensor<1x7x6144x1536xf32> into tensor<7x6144x1536xf32>
    %1195 = linalg.batch_matmul ins(%collapsed_635, %collapsed_636 : tensor<7x7x6144xf32>, tensor<7x6144x1536xf32>) outs(%1134 : tensor<7x7x1536xf32>) -> tensor<7x7x1536xf32>
    %expanded_637 = tensor.expand_shape %1195 [[0, 1], [2], [3]] : tensor<7x7x1536xf32> into tensor<1x7x7x1536xf32>
    %1196 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_637, %cst_3 : tensor<1x7x7x1536xf32>, tensor<1536xf32>) outs(%1100 : tensor<1x7x7x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x7x7x1536xf32>
    %1197 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1196 : tensor<1x7x7x1536xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x7x7xf32>
    %1198 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11, %1197 : tensor<1536x1x1xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %1199 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1198, %1169 : tensor<1x1536x7x7xf32>, tensor<1x1536x7x7xf32>) outs(%1095 : tensor<1x1536x7x7xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x7x7xf32>
    %1200 = tensor.empty() : tensor<1x1536x1x1xf32>
    %1201 = linalg.fill ins(%cst_343 : f32) outs(%1200 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %1202 = tensor.empty() : tensor<7x7xf32>
    %1203 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%1199, %1202 : tensor<1x1536x7x7xf32>, tensor<7x7xf32>) outs(%1201 : tensor<1x1536x1x1xf32>) -> tensor<1x1536x1x1xf32>
    %1204 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1203 : tensor<1x1536x1x1xf32>) outs(%1200 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_352 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1536x1x1xf32>
    %1205 = tensor.empty() : tensor<1x1x1x1536xf32>
    %1206 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1204 : tensor<1x1536x1x1xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1536xf32>
    %1207 = tensor.empty() : tensor<1x1x1x1xf32>
    %1208 = linalg.fill ins(%cst_343 : f32) outs(%1207 : tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %1209 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1206 : tensor<1x1x1x1536xf32>) outs(%1208 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1xf32>
    %1210 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1209 : tensor<1x1x1x1xf32>) outs(%1207 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1xf32>
    %1211 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1210 : tensor<1x1x1x1xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1536xf32>
    %1212 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1206, %1211 : tensor<1x1x1x1536xf32>, tensor<1x1x1x1536xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.subf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1536xf32>
    %1213 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1212, %1212 : tensor<1x1x1x1536xf32>, tensor<1x1x1x1536xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1536xf32>
    %1214 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1213 : tensor<1x1x1x1536xf32>) outs(%1208 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.addf %in, %out : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1xf32>
    %1215 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1214 : tensor<1x1x1x1xf32>) outs(%1207 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.divf %in, %cst_351 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1xf32>
    %1216 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1215 : tensor<1x1x1x1xf32>) outs(%1207 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = arith.truncf %cst_347 : f64 to f32
      %1230 = arith.addf %in, %1229 : f32
      linalg.yield %1230 : f32
    } -> tensor<1x1x1x1xf32>
    %1217 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1216 : tensor<1x1x1x1xf32>) outs(%1207 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %1229 = math.rsqrt %in : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1xf32>
    %1218 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1217 : tensor<1x1x1x1xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x1536xf32>
    %1219 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1212, %1218 : tensor<1x1x1x1536xf32>, tensor<1x1x1x1536xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1536xf32>
    %1220 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1219, %cst_2 : tensor<1x1x1x1536xf32>, tensor<1536xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.mulf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1536xf32>
    %1221 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1220, %cst_1 : tensor<1x1x1x1536xf32>, tensor<1536xf32>) outs(%1205 : tensor<1x1x1x1536xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1x1x1536xf32>
    %1222 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1221 : tensor<1x1x1x1536xf32>) outs(%1200 : tensor<1x1536x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1536x1x1xf32>
    %collapsed_638 = tensor.collapse_shape %1222 [[0], [1, 2, 3]] : tensor<1x1536x1x1xf32> into tensor<1x1536xf32>
    %1223 = tensor.empty() : tensor<1536x1000xf32>
    %1224 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x1536xf32>) outs(%1223 : tensor<1536x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x1000xf32>
    %1225 = tensor.empty() : tensor<1x1000xf32>
    %1226 = linalg.fill ins(%cst_343 : f32) outs(%1225 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1227 = linalg.matmul ins(%collapsed_638, %1224 : tensor<1x1536xf32>, tensor<1536x1000xf32>) outs(%1226 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %1228 = linalg.generic {indexing_maps = [#map14, #map15, #map8], iterator_types = ["parallel", "parallel"]} ins(%1227, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%1225 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_639: f32, %out: f32):
      %1229 = arith.addf %in, %in_639 : f32
      linalg.yield %1229 : f32
    } -> tensor<1x1000xf32>
    return %1228 : tensor<1x1000xf32>
  }
}
