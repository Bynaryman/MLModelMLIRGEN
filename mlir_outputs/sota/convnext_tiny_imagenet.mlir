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
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x768xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<768x3072xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<3072xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<3072x768xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<768x1x7x7xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<768x1x1xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<768x384x2x2xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_98 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_99 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_100 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_101 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_102 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_103 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_104 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_105 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_106 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_107 = arith.constant dense_resource<__elided__> : tensor<384x1536xf32>
    %cst_108 = arith.constant dense_resource<__elided__> : tensor<1536xf32>
    %cst_109 = arith.constant dense_resource<__elided__> : tensor<1536x384xf32>
    %cst_110 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_111 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_112 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_113 = arith.constant dense_resource<__elided__> : tensor<384x1x7x7xf32>
    %cst_114 = arith.constant dense_resource<__elided__> : tensor<384x1x1xf32>
    %cst_115 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_116 = arith.constant dense_resource<__elided__> : tensor<384x192x2x2xf32>
    %cst_117 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_118 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_119 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_120 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_121 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_122 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_123 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_124 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_125 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_126 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_127 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_128 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_129 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_130 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_131 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_132 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_133 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_134 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_135 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_136 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_137 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_138 = arith.constant dense_resource<__elided__> : tensor<192x768xf32>
    %cst_139 = arith.constant dense_resource<__elided__> : tensor<768xf32>
    %cst_140 = arith.constant dense_resource<__elided__> : tensor<768x192xf32>
    %cst_141 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_142 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_143 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_144 = arith.constant dense_resource<__elided__> : tensor<192x1x7x7xf32>
    %cst_145 = arith.constant dense_resource<__elided__> : tensor<192x1x1xf32>
    %cst_146 = arith.constant dense_resource<__elided__> : tensor<192xf32>
    %cst_147 = arith.constant dense_resource<__elided__> : tensor<192x96x2x2xf32>
    %cst_148 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_149 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_150 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_151 = arith.constant dense_resource<__elided__> : tensor<96x384xf32>
    %cst_152 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_153 = arith.constant dense_resource<__elided__> : tensor<384x96xf32>
    %cst_154 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_155 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_156 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_157 = arith.constant dense_resource<__elided__> : tensor<96x1x7x7xf32>
    %cst_158 = arith.constant dense_resource<__elided__> : tensor<96x1x1xf32>
    %cst_159 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_160 = arith.constant dense_resource<__elided__> : tensor<96x384xf32>
    %cst_161 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_162 = arith.constant dense_resource<__elided__> : tensor<384x96xf32>
    %cst_163 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_164 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_165 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_166 = arith.constant dense_resource<__elided__> : tensor<96x1x7x7xf32>
    %cst_167 = arith.constant dense_resource<__elided__> : tensor<96x1x1xf32>
    %cst_168 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_169 = arith.constant dense_resource<__elided__> : tensor<96x384xf32>
    %cst_170 = arith.constant dense_resource<__elided__> : tensor<384xf32>
    %cst_171 = arith.constant dense_resource<__elided__> : tensor<384x96xf32>
    %cst_172 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_173 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_174 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_175 = arith.constant dense_resource<__elided__> : tensor<96x1x7x7xf32>
    %cst_176 = arith.constant dense_resource<__elided__> : tensor<96x1x1xf32>
    %cst_177 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_178 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_179 = arith.constant dense_resource<__elided__> : tensor<96xf32>
    %cst_180 = arith.constant dense_resource<__elided__> : tensor<96x3x4x4xf32>
    %cst_181 = arith.constant 0.000000e+00 : f32
    %cst_182 = arith.constant 1.000000e+00 : f32
    %cst_183 = arith.constant 1.41421354 : f32
    %cst_184 = arith.constant 5.000000e-01 : f32
    %cst_185 = arith.constant 9.9999999999999995E-7 : f64
    %cst_186 = arith.constant 9.600000e+01 : f32
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %cst_187 = arith.constant 1.920000e+02 : f32
    %cst_188 = arith.constant 3.840000e+02 : f32
    %cst_189 = arith.constant 7.680000e+02 : f32
    %cst_190 = arith.constant 4.900000e+01 : f32
    %0 = tensor.empty() : tensor<1x96x56x56xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_179 : tensor<96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<4> : vector<2xi64>} ins(%arg0, %cst_180 : tensor<1x3x224x224xf32>, tensor<96x3x4x4xf32>) outs(%1 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %3 = tensor.empty() : tensor<1x56x56x96xf32>
    %4 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x96x56x56xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %5 = tensor.empty() : tensor<1x56x56x1xf32>
    %6 = linalg.fill ins(%cst_181 : f32) outs(%5 : tensor<1x56x56x1xf32>) -> tensor<1x56x56x1xf32>
    %7 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%4 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %8 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %9 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%8 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %10 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %9 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %11 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %10 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%11 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %13 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %14 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x56x56x1xf32>
    %15 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %16 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %17 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10, %16 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %18 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17, %cst_178 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %19 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_177 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x56x56x96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %padded = tensor.pad %20 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x96x56x56xf32> to tensor<1x96x62x62xf32>
    %21 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_174 : tensor<96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %collapsed = tensor.collapse_shape %cst_175 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %22 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded, %collapsed : tensor<1x96x62x62xf32>, tensor<96x7x7xf32>) outs(%21 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x96x56x56xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %24 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%23 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %26 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %27 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23, %26 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %28 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %27 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %29 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%28 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %30 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%29 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %31 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x56x56x1xf32>
    %32 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %33 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %34 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %33 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %35 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34, %cst_173 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %36 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35, %cst_172 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %37 = tensor.empty() : tensor<96x384xf32>
    %38 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_171 : tensor<384x96xf32>) outs(%37 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %39 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %40 = tensor.empty() : tensor<1x56x96x384xf32>
    %41 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<96x384xf32>) outs(%40 : tensor<1x56x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x96x384xf32>
    %collapsed_191 = tensor.collapse_shape %39 [[0, 1], [2], [3]] : tensor<1x56x56x96xf32> into tensor<56x56x96xf32>
    %collapsed_192 = tensor.collapse_shape %41 [[0, 1], [2], [3]] : tensor<1x56x96x384xf32> into tensor<56x96x384xf32>
    %42 = tensor.empty() : tensor<56x56x384xf32>
    %43 = linalg.fill ins(%cst_181 : f32) outs(%42 : tensor<56x56x384xf32>) -> tensor<56x56x384xf32>
    %44 = linalg.batch_matmul ins(%collapsed_191, %collapsed_192 : tensor<56x56x96xf32>, tensor<56x96x384xf32>) outs(%43 : tensor<56x56x384xf32>) -> tensor<56x56x384xf32>
    %expanded = tensor.expand_shape %44 [[0, 1], [2], [3]] : tensor<56x56x384xf32> into tensor<1x56x56x384xf32>
    %45 = tensor.empty() : tensor<1x56x56x384xf32>
    %46 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded, %cst_170 : tensor<1x56x56x384xf32>, tensor<384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x384xf32>
    %47 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x56x56x384xf32>
    %48 = tensor.empty() : tensor<384x96xf32>
    %49 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_169 : tensor<96x384xf32>) outs(%48 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %50 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x384xf32>
    %51 = tensor.empty() : tensor<1x56x384x96xf32>
    %52 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49 : tensor<384x96xf32>) outs(%51 : tensor<1x56x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x384x96xf32>
    %collapsed_193 = tensor.collapse_shape %50 [[0, 1], [2], [3]] : tensor<1x56x56x384xf32> into tensor<56x56x384xf32>
    %collapsed_194 = tensor.collapse_shape %52 [[0, 1], [2], [3]] : tensor<1x56x384x96xf32> into tensor<56x384x96xf32>
    %53 = tensor.empty() : tensor<56x56x96xf32>
    %54 = linalg.fill ins(%cst_181 : f32) outs(%53 : tensor<56x56x96xf32>) -> tensor<56x56x96xf32>
    %55 = linalg.batch_matmul ins(%collapsed_193, %collapsed_194 : tensor<56x56x384xf32>, tensor<56x384x96xf32>) outs(%54 : tensor<56x56x96xf32>) -> tensor<56x56x96xf32>
    %expanded_195 = tensor.expand_shape %55 [[0, 1], [2], [3]] : tensor<56x56x96xf32> into tensor<1x56x56x96xf32>
    %56 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_195, %cst_168 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %57 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x56x56x96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %58 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_176, %57 : tensor<96x1x1xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %59 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %20 : tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %padded_196 = tensor.pad %59 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x96x56x56xf32> to tensor<1x96x62x62xf32>
    %60 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_165 : tensor<96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %collapsed_197 = tensor.collapse_shape %cst_166 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %61 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_196, %collapsed_197 : tensor<1x96x62x62xf32>, tensor<96x7x7xf32>) outs(%60 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %62 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%61 : tensor<1x96x56x56xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %63 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%62 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %64 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %65 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %66 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62, %65 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %67 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %66 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %68 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%67 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %69 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x56x56x1xf32>
    %71 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %73 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %72 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %74 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73, %cst_164 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %75 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%74, %cst_163 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %76 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_162 : tensor<384x96xf32>) outs(%37 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %77 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75 : tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %78 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76 : tensor<96x384xf32>) outs(%40 : tensor<1x56x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x96x384xf32>
    %collapsed_198 = tensor.collapse_shape %77 [[0, 1], [2], [3]] : tensor<1x56x56x96xf32> into tensor<56x56x96xf32>
    %collapsed_199 = tensor.collapse_shape %78 [[0, 1], [2], [3]] : tensor<1x56x96x384xf32> into tensor<56x96x384xf32>
    %79 = linalg.batch_matmul ins(%collapsed_198, %collapsed_199 : tensor<56x56x96xf32>, tensor<56x96x384xf32>) outs(%43 : tensor<56x56x384xf32>) -> tensor<56x56x384xf32>
    %expanded_200 = tensor.expand_shape %79 [[0, 1], [2], [3]] : tensor<56x56x384xf32> into tensor<1x56x56x384xf32>
    %80 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_200, %cst_161 : tensor<1x56x56x384xf32>, tensor<384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x384xf32>
    %81 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%80 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x56x56x384xf32>
    %82 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_160 : tensor<96x384xf32>) outs(%48 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %83 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%81 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x384xf32>
    %84 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<384x96xf32>) outs(%51 : tensor<1x56x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x384x96xf32>
    %collapsed_201 = tensor.collapse_shape %83 [[0, 1], [2], [3]] : tensor<1x56x56x384xf32> into tensor<56x56x384xf32>
    %collapsed_202 = tensor.collapse_shape %84 [[0, 1], [2], [3]] : tensor<1x56x384x96xf32> into tensor<56x384x96xf32>
    %85 = linalg.batch_matmul ins(%collapsed_201, %collapsed_202 : tensor<56x56x384xf32>, tensor<56x384x96xf32>) outs(%54 : tensor<56x56x96xf32>) -> tensor<56x56x96xf32>
    %expanded_203 = tensor.expand_shape %85 [[0, 1], [2], [3]] : tensor<56x56x96xf32> into tensor<1x56x56x96xf32>
    %86 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_203, %cst_159 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %87 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%86 : tensor<1x56x56x96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %88 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_167, %87 : tensor<96x1x1xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %89 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%88, %59 : tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %padded_204 = tensor.pad %89 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x96x56x56xf32> to tensor<1x96x62x62xf32>
    %90 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_156 : tensor<96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %collapsed_205 = tensor.collapse_shape %cst_157 [[0, 1], [2], [3]] : tensor<96x1x7x7xf32> into tensor<96x7x7xf32>
    %91 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_204, %collapsed_205 : tensor<1x96x62x62xf32>, tensor<96x7x7xf32>) outs(%90 : tensor<1x96x56x56xf32>) -> tensor<1x96x56x56xf32>
    %92 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%91 : tensor<1x96x56x56xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %93 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%92 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %94 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%93 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %95 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %96 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%92, %95 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %97 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %96 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %98 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%97 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %99 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%98 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %100 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x56x56x1xf32>
    %101 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%100 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %102 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%101 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %103 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%96, %102 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %104 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_155 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %105 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104, %cst_154 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %106 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_153 : tensor<384x96xf32>) outs(%37 : tensor<96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<96x384xf32>
    %107 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%105 : tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %108 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%106 : tensor<96x384xf32>) outs(%40 : tensor<1x56x96x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x96x384xf32>
    %collapsed_206 = tensor.collapse_shape %107 [[0, 1], [2], [3]] : tensor<1x56x56x96xf32> into tensor<56x56x96xf32>
    %collapsed_207 = tensor.collapse_shape %108 [[0, 1], [2], [3]] : tensor<1x56x96x384xf32> into tensor<56x96x384xf32>
    %109 = linalg.batch_matmul ins(%collapsed_206, %collapsed_207 : tensor<56x56x96xf32>, tensor<56x96x384xf32>) outs(%43 : tensor<56x56x384xf32>) -> tensor<56x56x384xf32>
    %expanded_208 = tensor.expand_shape %109 [[0, 1], [2], [3]] : tensor<56x56x384xf32> into tensor<1x56x56x384xf32>
    %110 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_208, %cst_152 : tensor<1x56x56x384xf32>, tensor<384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x384xf32>
    %111 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x56x56x384xf32>
    %112 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_151 : tensor<96x384xf32>) outs(%48 : tensor<384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x96xf32>
    %113 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%111 : tensor<1x56x56x384xf32>) outs(%45 : tensor<1x56x56x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x384xf32>
    %114 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%112 : tensor<384x96xf32>) outs(%51 : tensor<1x56x384x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x384x96xf32>
    %collapsed_209 = tensor.collapse_shape %113 [[0, 1], [2], [3]] : tensor<1x56x56x384xf32> into tensor<56x56x384xf32>
    %collapsed_210 = tensor.collapse_shape %114 [[0, 1], [2], [3]] : tensor<1x56x384x96xf32> into tensor<56x384x96xf32>
    %115 = linalg.batch_matmul ins(%collapsed_209, %collapsed_210 : tensor<56x56x384xf32>, tensor<56x384x96xf32>) outs(%54 : tensor<56x56x96xf32>) -> tensor<56x56x96xf32>
    %expanded_211 = tensor.expand_shape %115 [[0, 1], [2], [3]] : tensor<56x56x96xf32> into tensor<1x56x56x96xf32>
    %116 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_211, %cst_150 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %117 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%116 : tensor<1x56x56x96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %118 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_158, %117 : tensor<96x1x1xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %119 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118, %89 : tensor<1x96x56x56xf32>, tensor<1x96x56x56xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x96x56x56xf32>
    %120 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%119 : tensor<1x96x56x56xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %121 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%120 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %122 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%121 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %123 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%122 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %124 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%120, %123 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %125 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %124 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %126 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%125 : tensor<1x56x56x96xf32>) outs(%6 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %127 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_186 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %128 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x56x56x1xf32>
    %129 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%128 : tensor<1x56x56x1xf32>) outs(%5 : tensor<1x56x56x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x1xf32>
    %130 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x56x56x1xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x56x56x96xf32>
    %131 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%124, %130 : tensor<1x56x56x96xf32>, tensor<1x56x56x96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %132 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%131, %cst_149 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %133 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132, %cst_148 : tensor<1x56x56x96xf32>, tensor<96xf32>) outs(%3 : tensor<1x56x56x96xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x56x56x96xf32>
    %134 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%133 : tensor<1x56x56x96xf32>) outs(%0 : tensor<1x96x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x96x56x56xf32>
    %135 = tensor.empty() : tensor<1x192x28x28xf32>
    %136 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_146 : tensor<192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %137 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%134, %cst_147 : tensor<1x96x56x56xf32>, tensor<192x96x2x2xf32>) outs(%136 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %padded_212 = tensor.pad %137 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x192x28x28xf32> to tensor<1x192x34x34xf32>
    %138 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_143 : tensor<192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %collapsed_213 = tensor.collapse_shape %cst_144 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %139 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_212, %collapsed_213 : tensor<1x192x34x34xf32>, tensor<192x7x7xf32>) outs(%138 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %140 = tensor.empty() : tensor<1x28x28x192xf32>
    %141 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%139 : tensor<1x192x28x28xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %142 = tensor.empty() : tensor<1x28x28x1xf32>
    %143 = linalg.fill ins(%cst_181 : f32) outs(%142 : tensor<1x28x28x1xf32>) -> tensor<1x28x28x1xf32>
    %144 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%141 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %145 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%144 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %146 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%145 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %147 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%141, %146 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %148 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %147 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %149 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%148 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %150 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%149 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %151 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%150 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x28x28x1xf32>
    %152 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%151 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %153 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%152 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %154 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%147, %153 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %155 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%154, %cst_142 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %156 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%155, %cst_141 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %157 = tensor.empty() : tensor<192x768xf32>
    %158 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_140 : tensor<768x192xf32>) outs(%157 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %159 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%156 : tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %160 = tensor.empty() : tensor<1x28x192x768xf32>
    %161 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%158 : tensor<192x768xf32>) outs(%160 : tensor<1x28x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x192x768xf32>
    %collapsed_214 = tensor.collapse_shape %159 [[0, 1], [2], [3]] : tensor<1x28x28x192xf32> into tensor<28x28x192xf32>
    %collapsed_215 = tensor.collapse_shape %161 [[0, 1], [2], [3]] : tensor<1x28x192x768xf32> into tensor<28x192x768xf32>
    %162 = tensor.empty() : tensor<28x28x768xf32>
    %163 = linalg.fill ins(%cst_181 : f32) outs(%162 : tensor<28x28x768xf32>) -> tensor<28x28x768xf32>
    %164 = linalg.batch_matmul ins(%collapsed_214, %collapsed_215 : tensor<28x28x192xf32>, tensor<28x192x768xf32>) outs(%163 : tensor<28x28x768xf32>) -> tensor<28x28x768xf32>
    %expanded_216 = tensor.expand_shape %164 [[0, 1], [2], [3]] : tensor<28x28x768xf32> into tensor<1x28x28x768xf32>
    %165 = tensor.empty() : tensor<1x28x28x768xf32>
    %166 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_216, %cst_139 : tensor<1x28x28x768xf32>, tensor<768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x768xf32>
    %167 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%166 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x28x28x768xf32>
    %168 = tensor.empty() : tensor<768x192xf32>
    %169 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_138 : tensor<192x768xf32>) outs(%168 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %170 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%167 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x768xf32>
    %171 = tensor.empty() : tensor<1x28x768x192xf32>
    %172 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%169 : tensor<768x192xf32>) outs(%171 : tensor<1x28x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x768x192xf32>
    %collapsed_217 = tensor.collapse_shape %170 [[0, 1], [2], [3]] : tensor<1x28x28x768xf32> into tensor<28x28x768xf32>
    %collapsed_218 = tensor.collapse_shape %172 [[0, 1], [2], [3]] : tensor<1x28x768x192xf32> into tensor<28x768x192xf32>
    %173 = tensor.empty() : tensor<28x28x192xf32>
    %174 = linalg.fill ins(%cst_181 : f32) outs(%173 : tensor<28x28x192xf32>) -> tensor<28x28x192xf32>
    %175 = linalg.batch_matmul ins(%collapsed_217, %collapsed_218 : tensor<28x28x768xf32>, tensor<28x768x192xf32>) outs(%174 : tensor<28x28x192xf32>) -> tensor<28x28x192xf32>
    %expanded_219 = tensor.expand_shape %175 [[0, 1], [2], [3]] : tensor<28x28x192xf32> into tensor<1x28x28x192xf32>
    %176 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_219, %cst_137 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %177 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%176 : tensor<1x28x28x192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %178 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_145, %177 : tensor<192x1x1xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %179 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%178, %137 : tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %padded_220 = tensor.pad %179 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x192x28x28xf32> to tensor<1x192x34x34xf32>
    %180 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_134 : tensor<192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %collapsed_221 = tensor.collapse_shape %cst_135 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %181 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_220, %collapsed_221 : tensor<1x192x34x34xf32>, tensor<192x7x7xf32>) outs(%180 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %182 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%181 : tensor<1x192x28x28xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%182 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %184 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %185 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%184 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %186 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%182, %185 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %187 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %186 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%187 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %189 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%188 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %190 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%189 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x28x28x1xf32>
    %191 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%190 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %192 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %193 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%186, %192 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %194 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%193, %cst_133 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %195 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194, %cst_132 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %196 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_131 : tensor<768x192xf32>) outs(%157 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %197 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195 : tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %198 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%196 : tensor<192x768xf32>) outs(%160 : tensor<1x28x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x192x768xf32>
    %collapsed_222 = tensor.collapse_shape %197 [[0, 1], [2], [3]] : tensor<1x28x28x192xf32> into tensor<28x28x192xf32>
    %collapsed_223 = tensor.collapse_shape %198 [[0, 1], [2], [3]] : tensor<1x28x192x768xf32> into tensor<28x192x768xf32>
    %199 = linalg.batch_matmul ins(%collapsed_222, %collapsed_223 : tensor<28x28x192xf32>, tensor<28x192x768xf32>) outs(%163 : tensor<28x28x768xf32>) -> tensor<28x28x768xf32>
    %expanded_224 = tensor.expand_shape %199 [[0, 1], [2], [3]] : tensor<28x28x768xf32> into tensor<1x28x28x768xf32>
    %200 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_224, %cst_130 : tensor<1x28x28x768xf32>, tensor<768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x768xf32>
    %201 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x28x28x768xf32>
    %202 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_129 : tensor<192x768xf32>) outs(%168 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %203 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%201 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x768xf32>
    %204 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%202 : tensor<768x192xf32>) outs(%171 : tensor<1x28x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x768x192xf32>
    %collapsed_225 = tensor.collapse_shape %203 [[0, 1], [2], [3]] : tensor<1x28x28x768xf32> into tensor<28x28x768xf32>
    %collapsed_226 = tensor.collapse_shape %204 [[0, 1], [2], [3]] : tensor<1x28x768x192xf32> into tensor<28x768x192xf32>
    %205 = linalg.batch_matmul ins(%collapsed_225, %collapsed_226 : tensor<28x28x768xf32>, tensor<28x768x192xf32>) outs(%174 : tensor<28x28x192xf32>) -> tensor<28x28x192xf32>
    %expanded_227 = tensor.expand_shape %205 [[0, 1], [2], [3]] : tensor<28x28x192xf32> into tensor<1x28x28x192xf32>
    %206 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_227, %cst_128 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %207 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%206 : tensor<1x28x28x192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %208 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_136, %207 : tensor<192x1x1xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %209 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%208, %179 : tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %padded_228 = tensor.pad %209 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x192x28x28xf32> to tensor<1x192x34x34xf32>
    %210 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_125 : tensor<192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %collapsed_229 = tensor.collapse_shape %cst_126 [[0, 1], [2], [3]] : tensor<192x1x7x7xf32> into tensor<192x7x7xf32>
    %211 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_228, %collapsed_229 : tensor<1x192x34x34xf32>, tensor<192x7x7xf32>) outs(%210 : tensor<1x192x28x28xf32>) -> tensor<1x192x28x28xf32>
    %212 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%211 : tensor<1x192x28x28xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %213 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%212 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %214 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%213 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %215 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%214 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %216 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%212, %215 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %217 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %216 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %218 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%217 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %219 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%218 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %220 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%219 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x28x28x1xf32>
    %221 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%220 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %222 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%221 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %223 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%216, %222 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %224 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%223, %cst_124 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %225 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%224, %cst_123 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %226 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_122 : tensor<768x192xf32>) outs(%157 : tensor<192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<192x768xf32>
    %227 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%225 : tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %228 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%226 : tensor<192x768xf32>) outs(%160 : tensor<1x28x192x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x192x768xf32>
    %collapsed_230 = tensor.collapse_shape %227 [[0, 1], [2], [3]] : tensor<1x28x28x192xf32> into tensor<28x28x192xf32>
    %collapsed_231 = tensor.collapse_shape %228 [[0, 1], [2], [3]] : tensor<1x28x192x768xf32> into tensor<28x192x768xf32>
    %229 = linalg.batch_matmul ins(%collapsed_230, %collapsed_231 : tensor<28x28x192xf32>, tensor<28x192x768xf32>) outs(%163 : tensor<28x28x768xf32>) -> tensor<28x28x768xf32>
    %expanded_232 = tensor.expand_shape %229 [[0, 1], [2], [3]] : tensor<28x28x768xf32> into tensor<1x28x28x768xf32>
    %230 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_232, %cst_121 : tensor<1x28x28x768xf32>, tensor<768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x768xf32>
    %231 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%230 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x28x28x768xf32>
    %232 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_120 : tensor<192x768xf32>) outs(%168 : tensor<768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x192xf32>
    %233 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%231 : tensor<1x28x28x768xf32>) outs(%165 : tensor<1x28x28x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x768xf32>
    %234 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%232 : tensor<768x192xf32>) outs(%171 : tensor<1x28x768x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x768x192xf32>
    %collapsed_233 = tensor.collapse_shape %233 [[0, 1], [2], [3]] : tensor<1x28x28x768xf32> into tensor<28x28x768xf32>
    %collapsed_234 = tensor.collapse_shape %234 [[0, 1], [2], [3]] : tensor<1x28x768x192xf32> into tensor<28x768x192xf32>
    %235 = linalg.batch_matmul ins(%collapsed_233, %collapsed_234 : tensor<28x28x768xf32>, tensor<28x768x192xf32>) outs(%174 : tensor<28x28x192xf32>) -> tensor<28x28x192xf32>
    %expanded_235 = tensor.expand_shape %235 [[0, 1], [2], [3]] : tensor<28x28x192xf32> into tensor<1x28x28x192xf32>
    %236 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_235, %cst_119 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %237 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%236 : tensor<1x28x28x192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %238 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_127, %237 : tensor<192x1x1xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %239 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%238, %209 : tensor<1x192x28x28xf32>, tensor<1x192x28x28xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x192x28x28xf32>
    %240 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%239 : tensor<1x192x28x28xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %241 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%240 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %242 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%241 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %243 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%242 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %244 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%240, %243 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %245 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %244 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %246 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%245 : tensor<1x28x28x192xf32>) outs(%143 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %247 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%246 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_187 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %248 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%247 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x28x28x1xf32>
    %249 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x28x28x1xf32>) outs(%142 : tensor<1x28x28x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x1xf32>
    %250 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%249 : tensor<1x28x28x1xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x28x28x192xf32>
    %251 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%244, %250 : tensor<1x28x28x192xf32>, tensor<1x28x28x192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %252 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%251, %cst_118 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %253 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%252, %cst_117 : tensor<1x28x28x192xf32>, tensor<192xf32>) outs(%140 : tensor<1x28x28x192xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x28x28x192xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%253 : tensor<1x28x28x192xf32>) outs(%135 : tensor<1x192x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x28x28xf32>
    %255 = tensor.empty() : tensor<1x384x14x14xf32>
    %256 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_115 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %257 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%254, %cst_116 : tensor<1x192x28x28xf32>, tensor<384x192x2x2xf32>) outs(%256 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %padded_236 = tensor.pad %257 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %258 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_112 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_237 = tensor.collapse_shape %cst_113 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %259 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_236, %collapsed_237 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%258 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %260 = tensor.empty() : tensor<1x14x14x384xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %262 = tensor.empty() : tensor<1x14x14x1xf32>
    %263 = linalg.fill ins(%cst_181 : f32) outs(%262 : tensor<1x14x14x1xf32>) -> tensor<1x14x14x1xf32>
    %264 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%261 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %265 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%264 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %266 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %267 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%261, %266 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %268 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %267 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %269 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%268 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %270 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%269 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %271 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%270 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %272 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%271 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %273 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%272 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %274 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%267, %273 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %275 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%274, %cst_111 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %276 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%275, %cst_110 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %277 = tensor.empty() : tensor<384x1536xf32>
    %278 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_109 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %279 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%276 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %280 = tensor.empty() : tensor<1x14x384x1536xf32>
    %281 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_238 = tensor.collapse_shape %279 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_239 = tensor.collapse_shape %281 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %282 = tensor.empty() : tensor<14x14x1536xf32>
    %283 = linalg.fill ins(%cst_181 : f32) outs(%282 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %284 = linalg.batch_matmul ins(%collapsed_238, %collapsed_239 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_240 = tensor.expand_shape %284 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %285 = tensor.empty() : tensor<1x14x14x1536xf32>
    %286 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_240, %cst_108 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %287 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%286 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %288 = tensor.empty() : tensor<1536x384xf32>
    %289 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_107 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %290 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %291 = tensor.empty() : tensor<1x14x1536x384xf32>
    %292 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%289 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_241 = tensor.collapse_shape %290 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_242 = tensor.collapse_shape %292 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %293 = tensor.empty() : tensor<14x14x384xf32>
    %294 = linalg.fill ins(%cst_181 : f32) outs(%293 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %295 = linalg.batch_matmul ins(%collapsed_241, %collapsed_242 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_243 = tensor.expand_shape %295 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %296 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_243, %cst_106 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %297 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%296 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %298 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_114, %297 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %299 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%298, %257 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_244 = tensor.pad %299 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %300 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_103 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_245 = tensor.collapse_shape %cst_104 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %301 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_244, %collapsed_245 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%300 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %302 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %303 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%302 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%303 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %305 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%304 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %306 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%302, %305 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %307 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %306 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %308 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%307 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %309 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%308 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %310 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %311 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%310 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %312 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%311 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %313 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%306, %312 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %314 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313, %cst_102 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %315 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%314, %cst_101 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %316 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_100 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %317 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%315 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %318 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%316 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_246 = tensor.collapse_shape %317 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_247 = tensor.collapse_shape %318 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %319 = linalg.batch_matmul ins(%collapsed_246, %collapsed_247 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_248 = tensor.expand_shape %319 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %320 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_248, %cst_99 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %321 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%320 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %322 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_98 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %323 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %324 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_249 = tensor.collapse_shape %323 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_250 = tensor.collapse_shape %324 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %325 = linalg.batch_matmul ins(%collapsed_249, %collapsed_250 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_251 = tensor.expand_shape %325 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %326 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_251, %cst_97 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %327 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%326 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %328 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_105, %327 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %329 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%328, %299 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_252 = tensor.pad %329 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %330 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_94 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_253 = tensor.collapse_shape %cst_95 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %331 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_252, %collapsed_253 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%330 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %332 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%331 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %333 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%332 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %334 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%333 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %335 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%334 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %336 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%332, %335 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %337 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %336 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %338 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%337 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %339 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%338 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %340 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%339 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %341 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%340 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%341 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %343 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336, %342 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %344 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%343, %cst_93 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %345 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344, %cst_92 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %346 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_91 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %347 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%345 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %348 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%346 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_254 = tensor.collapse_shape %347 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_255 = tensor.collapse_shape %348 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %349 = linalg.batch_matmul ins(%collapsed_254, %collapsed_255 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_256 = tensor.expand_shape %349 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %350 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_256, %cst_90 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %351 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%350 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %352 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_89 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %353 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%351 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %354 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%352 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_257 = tensor.collapse_shape %353 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_258 = tensor.collapse_shape %354 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %355 = linalg.batch_matmul ins(%collapsed_257, %collapsed_258 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_259 = tensor.expand_shape %355 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %356 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_259, %cst_88 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %357 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%356 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %358 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_96, %357 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %359 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%358, %329 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_260 = tensor.pad %359 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %360 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_85 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_261 = tensor.collapse_shape %cst_86 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %361 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_260, %collapsed_261 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%360 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %362 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%361 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %363 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%362 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %364 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%363 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %365 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%364 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %366 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%362, %365 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %367 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %366 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %368 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%367 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %369 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%368 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %370 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%369 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %371 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%370 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %372 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%371 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %373 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%366, %372 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %374 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%373, %cst_84 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %375 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%374, %cst_83 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %376 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_82 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %377 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%375 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %378 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%376 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_262 = tensor.collapse_shape %377 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_263 = tensor.collapse_shape %378 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %379 = linalg.batch_matmul ins(%collapsed_262, %collapsed_263 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_264 = tensor.expand_shape %379 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %380 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_264, %cst_81 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %381 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%380 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %382 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_80 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %383 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%381 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %384 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%382 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_265 = tensor.collapse_shape %383 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_266 = tensor.collapse_shape %384 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %385 = linalg.batch_matmul ins(%collapsed_265, %collapsed_266 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_267 = tensor.expand_shape %385 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %386 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_267, %cst_79 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %387 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %388 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_87, %387 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %389 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%388, %359 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_268 = tensor.pad %389 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %390 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_76 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_269 = tensor.collapse_shape %cst_77 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %391 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_268, %collapsed_269 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%390 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %392 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%391 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %393 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%392 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %394 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%393 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %395 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%394 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %396 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392, %395 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %397 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %396 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %398 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%397 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %399 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%398 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %400 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%399 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %401 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%400 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %402 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%401 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %403 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%396, %402 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %404 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%403, %cst_75 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %405 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%404, %cst_74 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %406 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_73 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %407 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%405 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %408 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%406 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_270 = tensor.collapse_shape %407 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_271 = tensor.collapse_shape %408 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %409 = linalg.batch_matmul ins(%collapsed_270, %collapsed_271 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_272 = tensor.expand_shape %409 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %410 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_272, %cst_72 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %411 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%410 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %412 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_71 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %413 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%411 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %414 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%412 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_273 = tensor.collapse_shape %413 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_274 = tensor.collapse_shape %414 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %415 = linalg.batch_matmul ins(%collapsed_273, %collapsed_274 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_275 = tensor.expand_shape %415 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %416 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_275, %cst_70 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %417 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%416 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %418 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_78, %417 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %419 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%418, %389 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_276 = tensor.pad %419 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %420 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_67 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_277 = tensor.collapse_shape %cst_68 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %421 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_276, %collapsed_277 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%420 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %422 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%421 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %423 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%422 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %424 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%423 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %425 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%424 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %426 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%422, %425 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %427 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %426 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %428 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%427 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %429 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%428 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %430 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%429 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %431 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%430 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %432 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%431 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %433 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%426, %432 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %434 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%433, %cst_66 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %435 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%434, %cst_65 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %436 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_64 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %437 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%435 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %438 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%436 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_278 = tensor.collapse_shape %437 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_279 = tensor.collapse_shape %438 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %439 = linalg.batch_matmul ins(%collapsed_278, %collapsed_279 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_280 = tensor.expand_shape %439 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %440 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_280, %cst_63 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %441 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%440 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %442 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_62 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %443 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%441 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %444 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%442 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_281 = tensor.collapse_shape %443 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_282 = tensor.collapse_shape %444 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %445 = linalg.batch_matmul ins(%collapsed_281, %collapsed_282 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_283 = tensor.expand_shape %445 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %446 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_283, %cst_61 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%446 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %448 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_69, %447 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %449 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%448, %419 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_284 = tensor.pad %449 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %450 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_58 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_285 = tensor.collapse_shape %cst_59 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %451 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_284, %collapsed_285 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%450 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %452 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %453 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%452 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %454 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%453 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %455 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %456 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %455 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %457 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %456 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %458 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%457 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %459 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%458 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %460 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%459 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %461 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %462 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%461 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %463 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%456, %462 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %464 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%463, %cst_57 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %465 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%464, %cst_56 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %466 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_55 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %467 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%465 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %468 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%466 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_286 = tensor.collapse_shape %467 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_287 = tensor.collapse_shape %468 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %469 = linalg.batch_matmul ins(%collapsed_286, %collapsed_287 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_288 = tensor.expand_shape %469 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %470 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_288, %cst_54 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %471 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%470 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %472 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_53 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %473 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%471 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %474 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%472 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_289 = tensor.collapse_shape %473 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_290 = tensor.collapse_shape %474 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %475 = linalg.batch_matmul ins(%collapsed_289, %collapsed_290 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_291 = tensor.expand_shape %475 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %476 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_291, %cst_52 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %477 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%476 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %478 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_60, %477 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %479 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%478, %449 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_292 = tensor.pad %479 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %480 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_49 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_293 = tensor.collapse_shape %cst_50 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %481 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_292, %collapsed_293 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%480 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %482 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%481 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %483 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%482 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %484 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%483 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %485 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%484 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %486 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%482, %485 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %487 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %486 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %488 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%487 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %489 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%488 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %490 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%489 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %491 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%490 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %492 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%491 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %493 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%486, %492 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %494 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%493, %cst_48 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %495 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%494, %cst_47 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %496 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_46 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %497 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%495 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %498 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%496 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_294 = tensor.collapse_shape %497 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_295 = tensor.collapse_shape %498 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %499 = linalg.batch_matmul ins(%collapsed_294, %collapsed_295 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_296 = tensor.expand_shape %499 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %500 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_296, %cst_45 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %501 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%500 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %502 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_44 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %503 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%501 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %504 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%502 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_297 = tensor.collapse_shape %503 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_298 = tensor.collapse_shape %504 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %505 = linalg.batch_matmul ins(%collapsed_297, %collapsed_298 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_299 = tensor.expand_shape %505 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %506 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_299, %cst_43 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %507 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%506 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %508 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_51, %507 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %509 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508, %479 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %padded_300 = tensor.pad %509 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x384x14x14xf32> to tensor<1x384x20x20xf32>
    %510 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_40 : tensor<384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %collapsed_301 = tensor.collapse_shape %cst_41 [[0, 1], [2], [3]] : tensor<384x1x7x7xf32> into tensor<384x7x7xf32>
    %511 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_300, %collapsed_301 : tensor<1x384x20x20xf32>, tensor<384x7x7xf32>) outs(%510 : tensor<1x384x14x14xf32>) -> tensor<1x384x14x14xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%511 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%512 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %514 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%513 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %515 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%514 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %516 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%512, %515 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %517 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %516 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %518 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%517 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %519 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%518 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %520 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %521 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %522 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%521 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %523 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %522 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %524 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%523, %cst_39 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %525 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%524, %cst_38 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %526 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_37 : tensor<1536x384xf32>) outs(%277 : tensor<384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<384x1536xf32>
    %527 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %528 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%526 : tensor<384x1536xf32>) outs(%280 : tensor<1x14x384x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x384x1536xf32>
    %collapsed_302 = tensor.collapse_shape %527 [[0, 1], [2], [3]] : tensor<1x14x14x384xf32> into tensor<14x14x384xf32>
    %collapsed_303 = tensor.collapse_shape %528 [[0, 1], [2], [3]] : tensor<1x14x384x1536xf32> into tensor<14x384x1536xf32>
    %529 = linalg.batch_matmul ins(%collapsed_302, %collapsed_303 : tensor<14x14x384xf32>, tensor<14x384x1536xf32>) outs(%283 : tensor<14x14x1536xf32>) -> tensor<14x14x1536xf32>
    %expanded_304 = tensor.expand_shape %529 [[0, 1], [2], [3]] : tensor<14x14x1536xf32> into tensor<1x14x14x1536xf32>
    %530 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_304, %cst_36 : tensor<1x14x14x1536xf32>, tensor<1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1536xf32>
    %531 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%530 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x14x14x1536xf32>
    %532 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_35 : tensor<384x1536xf32>) outs(%288 : tensor<1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1536x384xf32>
    %533 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%531 : tensor<1x14x14x1536xf32>) outs(%285 : tensor<1x14x14x1536xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x1536xf32>
    %534 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%532 : tensor<1536x384xf32>) outs(%291 : tensor<1x14x1536x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x1536x384xf32>
    %collapsed_305 = tensor.collapse_shape %533 [[0, 1], [2], [3]] : tensor<1x14x14x1536xf32> into tensor<14x14x1536xf32>
    %collapsed_306 = tensor.collapse_shape %534 [[0, 1], [2], [3]] : tensor<1x14x1536x384xf32> into tensor<14x1536x384xf32>
    %535 = linalg.batch_matmul ins(%collapsed_305, %collapsed_306 : tensor<14x14x1536xf32>, tensor<14x1536x384xf32>) outs(%294 : tensor<14x14x384xf32>) -> tensor<14x14x384xf32>
    %expanded_307 = tensor.expand_shape %535 [[0, 1], [2], [3]] : tensor<14x14x384xf32> into tensor<1x14x14x384xf32>
    %536 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_307, %cst_34 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %537 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%536 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %538 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_42, %537 : tensor<384x1x1xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %539 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%538, %509 : tensor<1x384x14x14xf32>, tensor<1x384x14x14xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x384x14x14xf32>
    %540 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%539 : tensor<1x384x14x14xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %541 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%540 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %542 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%541 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %543 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%542 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %544 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%540, %543 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %545 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %544 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %546 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%545 : tensor<1x14x14x384xf32>) outs(%263 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %547 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%546 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_188 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %548 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%547 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x14x14x1xf32>
    %549 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%548 : tensor<1x14x14x1xf32>) outs(%262 : tensor<1x14x14x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x1xf32>
    %550 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x14x14x1xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x14x14x384xf32>
    %551 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%544, %550 : tensor<1x14x14x384xf32>, tensor<1x14x14x384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %552 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%551, %cst_33 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %553 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%552, %cst_32 : tensor<1x14x14x384xf32>, tensor<384xf32>) outs(%260 : tensor<1x14x14x384xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x14x14x384xf32>
    %554 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%553 : tensor<1x14x14x384xf32>) outs(%255 : tensor<1x384x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x384x14x14xf32>
    %555 = tensor.empty() : tensor<1x768x7x7xf32>
    %556 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_30 : tensor<768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %557 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%554, %cst_31 : tensor<1x384x14x14xf32>, tensor<768x384x2x2xf32>) outs(%556 : tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %padded_308 = tensor.pad %557 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x768x7x7xf32> to tensor<1x768x13x13xf32>
    %558 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_27 : tensor<768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %collapsed_309 = tensor.collapse_shape %cst_28 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %559 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_308, %collapsed_309 : tensor<1x768x13x13xf32>, tensor<768x7x7xf32>) outs(%558 : tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %560 = tensor.empty() : tensor<1x7x7x768xf32>
    %561 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%559 : tensor<1x768x7x7xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %562 = tensor.empty() : tensor<1x7x7x1xf32>
    %563 = linalg.fill ins(%cst_181 : f32) outs(%562 : tensor<1x7x7x1xf32>) -> tensor<1x7x7x1xf32>
    %564 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%561 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %565 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%564 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %566 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%565 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %567 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%561, %566 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %568 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %567 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %569 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%568 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %570 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%569 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %571 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%570 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x7x7x1xf32>
    %572 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%571 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %573 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %574 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%567, %573 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %575 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%574, %cst_26 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %576 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%575, %cst_25 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %577 = tensor.empty() : tensor<768x3072xf32>
    %578 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_24 : tensor<3072x768xf32>) outs(%577 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %579 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576 : tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %580 = tensor.empty() : tensor<1x7x768x3072xf32>
    %581 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%578 : tensor<768x3072xf32>) outs(%580 : tensor<1x7x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768x3072xf32>
    %collapsed_310 = tensor.collapse_shape %579 [[0, 1], [2], [3]] : tensor<1x7x7x768xf32> into tensor<7x7x768xf32>
    %collapsed_311 = tensor.collapse_shape %581 [[0, 1], [2], [3]] : tensor<1x7x768x3072xf32> into tensor<7x768x3072xf32>
    %582 = tensor.empty() : tensor<7x7x3072xf32>
    %583 = linalg.fill ins(%cst_181 : f32) outs(%582 : tensor<7x7x3072xf32>) -> tensor<7x7x3072xf32>
    %584 = linalg.batch_matmul ins(%collapsed_310, %collapsed_311 : tensor<7x7x768xf32>, tensor<7x768x3072xf32>) outs(%583 : tensor<7x7x3072xf32>) -> tensor<7x7x3072xf32>
    %expanded_312 = tensor.expand_shape %584 [[0, 1], [2], [3]] : tensor<7x7x3072xf32> into tensor<1x7x7x3072xf32>
    %585 = tensor.empty() : tensor<1x7x7x3072xf32>
    %586 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_312, %cst_23 : tensor<1x7x7x3072xf32>, tensor<3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x3072xf32>
    %587 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%586 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x7x7x3072xf32>
    %588 = tensor.empty() : tensor<3072x768xf32>
    %589 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_22 : tensor<768x3072xf32>) outs(%588 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %590 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x3072xf32>
    %591 = tensor.empty() : tensor<1x7x3072x768xf32>
    %592 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%589 : tensor<3072x768xf32>) outs(%591 : tensor<1x7x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072x768xf32>
    %collapsed_313 = tensor.collapse_shape %590 [[0, 1], [2], [3]] : tensor<1x7x7x3072xf32> into tensor<7x7x3072xf32>
    %collapsed_314 = tensor.collapse_shape %592 [[0, 1], [2], [3]] : tensor<1x7x3072x768xf32> into tensor<7x3072x768xf32>
    %593 = tensor.empty() : tensor<7x7x768xf32>
    %594 = linalg.fill ins(%cst_181 : f32) outs(%593 : tensor<7x7x768xf32>) -> tensor<7x7x768xf32>
    %595 = linalg.batch_matmul ins(%collapsed_313, %collapsed_314 : tensor<7x7x3072xf32>, tensor<7x3072x768xf32>) outs(%594 : tensor<7x7x768xf32>) -> tensor<7x7x768xf32>
    %expanded_315 = tensor.expand_shape %595 [[0, 1], [2], [3]] : tensor<7x7x768xf32> into tensor<1x7x7x768xf32>
    %596 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_315, %cst_21 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %597 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%596 : tensor<1x7x7x768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %598 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29, %597 : tensor<768x1x1xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %599 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%598, %557 : tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %padded_316 = tensor.pad %599 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x768x7x7xf32> to tensor<1x768x13x13xf32>
    %600 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_18 : tensor<768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %collapsed_317 = tensor.collapse_shape %cst_19 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %601 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_316, %collapsed_317 : tensor<1x768x13x13xf32>, tensor<768x7x7xf32>) outs(%600 : tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %602 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%601 : tensor<1x768x7x7xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %603 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%602 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %604 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%603 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %605 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%604 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %606 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%602, %605 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %607 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %606 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %608 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%607 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %609 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%608 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %610 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%609 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x7x7x1xf32>
    %611 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%610 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %612 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%611 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %613 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%606, %612 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %614 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%613, %cst_17 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %615 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%614, %cst_16 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %616 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_15 : tensor<3072x768xf32>) outs(%577 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %617 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %618 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%616 : tensor<768x3072xf32>) outs(%580 : tensor<1x7x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768x3072xf32>
    %collapsed_318 = tensor.collapse_shape %617 [[0, 1], [2], [3]] : tensor<1x7x7x768xf32> into tensor<7x7x768xf32>
    %collapsed_319 = tensor.collapse_shape %618 [[0, 1], [2], [3]] : tensor<1x7x768x3072xf32> into tensor<7x768x3072xf32>
    %619 = linalg.batch_matmul ins(%collapsed_318, %collapsed_319 : tensor<7x7x768xf32>, tensor<7x768x3072xf32>) outs(%583 : tensor<7x7x3072xf32>) -> tensor<7x7x3072xf32>
    %expanded_320 = tensor.expand_shape %619 [[0, 1], [2], [3]] : tensor<7x7x3072xf32> into tensor<1x7x7x3072xf32>
    %620 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_320, %cst_14 : tensor<1x7x7x3072xf32>, tensor<3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x3072xf32>
    %621 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%620 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x7x7x3072xf32>
    %622 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_13 : tensor<768x3072xf32>) outs(%588 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %623 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%621 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x3072xf32>
    %624 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%622 : tensor<3072x768xf32>) outs(%591 : tensor<1x7x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072x768xf32>
    %collapsed_321 = tensor.collapse_shape %623 [[0, 1], [2], [3]] : tensor<1x7x7x3072xf32> into tensor<7x7x3072xf32>
    %collapsed_322 = tensor.collapse_shape %624 [[0, 1], [2], [3]] : tensor<1x7x3072x768xf32> into tensor<7x3072x768xf32>
    %625 = linalg.batch_matmul ins(%collapsed_321, %collapsed_322 : tensor<7x7x3072xf32>, tensor<7x3072x768xf32>) outs(%594 : tensor<7x7x768xf32>) -> tensor<7x7x768xf32>
    %expanded_323 = tensor.expand_shape %625 [[0, 1], [2], [3]] : tensor<7x7x768xf32> into tensor<1x7x7x768xf32>
    %626 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_323, %cst_12 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %627 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%626 : tensor<1x7x7x768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %628 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20, %627 : tensor<768x1x1xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %629 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%628, %599 : tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %padded_324 = tensor.pad %629 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_181 : f32
    } : tensor<1x768x7x7xf32> to tensor<1x768x13x13xf32>
    %630 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_9 : tensor<768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %collapsed_325 = tensor.collapse_shape %cst_10 [[0, 1], [2], [3]] : tensor<768x1x7x7xf32> into tensor<768x7x7xf32>
    %631 = linalg.depthwise_conv_2d_nchw_chw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_324, %collapsed_325 : tensor<1x768x13x13xf32>, tensor<768x7x7xf32>) outs(%630 : tensor<1x768x7x7xf32>) -> tensor<1x768x7x7xf32>
    %632 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%631 : tensor<1x768x7x7xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %633 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%632 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %634 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%633 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %635 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%634 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %636 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%632, %635 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %637 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %636 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%637 : tensor<1x7x7x768xf32>) outs(%563 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %639 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %640 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%639 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x7x7x1xf32>
    %641 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%640 : tensor<1x7x7x1xf32>) outs(%562 : tensor<1x7x7x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x1xf32>
    %642 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%641 : tensor<1x7x7x1xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %643 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%636, %642 : tensor<1x7x7x768xf32>, tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %644 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%643, %cst_8 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %645 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%644, %cst_7 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %646 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_6 : tensor<3072x768xf32>) outs(%577 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %647 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%645 : tensor<1x7x7x768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x768xf32>
    %648 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646 : tensor<768x3072xf32>) outs(%580 : tensor<1x7x768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x768x3072xf32>
    %collapsed_326 = tensor.collapse_shape %647 [[0, 1], [2], [3]] : tensor<1x7x7x768xf32> into tensor<7x7x768xf32>
    %collapsed_327 = tensor.collapse_shape %648 [[0, 1], [2], [3]] : tensor<1x7x768x3072xf32> into tensor<7x768x3072xf32>
    %649 = linalg.batch_matmul ins(%collapsed_326, %collapsed_327 : tensor<7x7x768xf32>, tensor<7x768x3072xf32>) outs(%583 : tensor<7x7x3072xf32>) -> tensor<7x7x3072xf32>
    %expanded_328 = tensor.expand_shape %649 [[0, 1], [2], [3]] : tensor<7x7x3072xf32> into tensor<1x7x7x3072xf32>
    %650 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_328, %cst_5 : tensor<1x7x7x3072xf32>, tensor<3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x3072xf32>
    %651 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_183 : f32
      %690 = math.erf %689 : f32
      %691 = arith.addf %690, %cst_182 : f32
      %692 = arith.mulf %691, %cst_184 : f32
      %693 = arith.mulf %in, %692 : f32
      linalg.yield %693 : f32
    } -> tensor<1x7x7x3072xf32>
    %652 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_4 : tensor<768x3072xf32>) outs(%588 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %653 = linalg.generic {indexing_maps = [#map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%651 : tensor<1x7x7x3072xf32>) outs(%585 : tensor<1x7x7x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x7x3072xf32>
    %654 = linalg.generic {indexing_maps = [#map10, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<3072x768xf32>) outs(%591 : tensor<1x7x3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x7x3072x768xf32>
    %collapsed_329 = tensor.collapse_shape %653 [[0, 1], [2], [3]] : tensor<1x7x7x3072xf32> into tensor<7x7x3072xf32>
    %collapsed_330 = tensor.collapse_shape %654 [[0, 1], [2], [3]] : tensor<1x7x3072x768xf32> into tensor<7x3072x768xf32>
    %655 = linalg.batch_matmul ins(%collapsed_329, %collapsed_330 : tensor<7x7x3072xf32>, tensor<7x3072x768xf32>) outs(%594 : tensor<7x7x768xf32>) -> tensor<7x7x768xf32>
    %expanded_331 = tensor.expand_shape %655 [[0, 1], [2], [3]] : tensor<7x7x768xf32> into tensor<1x7x7x768xf32>
    %656 = linalg.generic {indexing_maps = [#map5, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_331, %cst_3 : tensor<1x7x7x768xf32>, tensor<768xf32>) outs(%560 : tensor<1x7x7x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x7x7x768xf32>
    %657 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%656 : tensor<1x7x7x768xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x7x7xf32>
    %658 = linalg.generic {indexing_maps = [#map11, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_11, %657 : tensor<768x1x1xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %659 = linalg.generic {indexing_maps = [#map5, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%658, %629 : tensor<1x768x7x7xf32>, tensor<1x768x7x7xf32>) outs(%555 : tensor<1x768x7x7xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x7x7xf32>
    %660 = tensor.empty() : tensor<1x768x1x1xf32>
    %661 = linalg.fill ins(%cst_181 : f32) outs(%660 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %662 = tensor.empty() : tensor<7x7xf32>
    %663 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%659, %662 : tensor<1x768x7x7xf32>, tensor<7x7xf32>) outs(%661 : tensor<1x768x1x1xf32>) -> tensor<1x768x1x1xf32>
    %664 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%663 : tensor<1x768x1x1xf32>) outs(%660 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_190 : f32
      linalg.yield %689 : f32
    } -> tensor<1x768x1x1xf32>
    %665 = tensor.empty() : tensor<1x1x1x768xf32>
    %666 = linalg.generic {indexing_maps = [#map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%664 : tensor<1x768x1x1xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %667 = tensor.empty() : tensor<1x1x1x1xf32>
    %668 = linalg.fill ins(%cst_181 : f32) outs(%667 : tensor<1x1x1x1xf32>) -> tensor<1x1x1x1xf32>
    %669 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%666 : tensor<1x1x1x768xf32>) outs(%668 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x1xf32>
    %670 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%669 : tensor<1x1x1x1xf32>) outs(%667 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%670 : tensor<1x1x1x1xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %672 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%666, %671 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.subf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x768xf32>
    %673 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %672 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x768xf32>
    %674 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%673 : tensor<1x1x1x768xf32>) outs(%668 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.addf %in, %out : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x1xf32>
    %675 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%674 : tensor<1x1x1x1xf32>) outs(%667 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.divf %in, %cst_189 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x1xf32>
    %676 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%675 : tensor<1x1x1x1xf32>) outs(%667 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = arith.truncf %cst_185 : f64 to f32
      %690 = arith.addf %in, %689 : f32
      linalg.yield %690 : f32
    } -> tensor<1x1x1x1xf32>
    %677 = linalg.generic {indexing_maps = [#map12, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%676 : tensor<1x1x1x1xf32>) outs(%667 : tensor<1x1x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %689 = math.rsqrt %in : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x1xf32>
    %678 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%677 : tensor<1x1x1x1xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1x1x768xf32>
    %679 = linalg.generic {indexing_maps = [#map13, #map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%672, %678 : tensor<1x1x1x768xf32>, tensor<1x1x1x768xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x768xf32>
    %680 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%679, %cst_2 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.mulf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x768xf32>
    %681 = linalg.generic {indexing_maps = [#map13, #map6, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%680, %cst_1 : tensor<1x1x1x768xf32>, tensor<768xf32>) outs(%665 : tensor<1x1x1x768xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1x1x768xf32>
    %682 = linalg.generic {indexing_maps = [#map1, #map7], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%681 : tensor<1x1x1x768xf32>) outs(%660 : tensor<1x768x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x768x1x1xf32>
    %collapsed_332 = tensor.collapse_shape %682 [[0], [1, 2, 3]] : tensor<1x768x1x1xf32> into tensor<1x768xf32>
    %683 = tensor.empty() : tensor<768x1000xf32>
    %684 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x768xf32>) outs(%683 : tensor<768x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x1000xf32>
    %685 = tensor.empty() : tensor<1x1000xf32>
    %686 = linalg.fill ins(%cst_181 : f32) outs(%685 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %687 = linalg.matmul ins(%collapsed_332, %684 : tensor<1x768xf32>, tensor<768x1000xf32>) outs(%686 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %688 = linalg.generic {indexing_maps = [#map14, #map15, #map8], iterator_types = ["parallel", "parallel"]} ins(%687, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%685 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_333: f32, %out: f32):
      %689 = arith.addf %in, %in_333 : f32
      linalg.yield %689 : f32
    } -> tensor<1x1000xf32>
    return %688 : tensor<1x1000xf32>
  }
}
