#map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
module attributes {torch.debug_module_name = "SqueezeNet"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %cst = arith.constant dense<0.000000e+00> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x512x1x1xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<64x512x1x1xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<256x64x3x3xf32>
    %cst_5 = arith.constant dense<0.000000e+00> : tensor<256xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<256x64x1x1xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<64x384x1x1xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<192x48x1x1xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<48x384x1x1xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<192x48x3x3xf32>
    %cst_12 = arith.constant dense<0.000000e+00> : tensor<192xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<192x48x1x1xf32>
    %cst_14 = arith.constant dense<0.000000e+00> : tensor<48xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<48x256x1x1xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<128x32x3x3xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<128x32x1x1xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<32x256x1x1xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<128x32x3x3xf32>
    %cst_20 = arith.constant dense<0.000000e+00> : tensor<128xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<128x32x1x1xf32>
    %cst_22 = arith.constant dense<0.000000e+00> : tensor<32xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<32x128x1x1xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<64x16x3x3xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<64x16x1x1xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<16x128x1x1xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<64x16x3x3xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<64x16x1x1xf32>
    %cst_29 = arith.constant dense<0.000000e+00> : tensor<16xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<16x64x1x1xf32>
    %cst_31 = arith.constant dense<0.000000e+00> : tensor<64xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<64x3x3x3xf32>
    %cst_33 = arith.constant 0.000000e+00 : f32
    %cst_34 = arith.constant 0xFF800000 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_35 = arith.constant 1.690000e+02 : f32
    %0 = tensor.empty() : tensor<1x64x111x111xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<64xf32>) outs(%0 : tensor<1x64x111x111xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x111x111xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %cst_32 : tensor<1x3x224x224xf32>, tensor<64x3x3x3xf32>) outs(%1 : tensor<1x64x111x111xf32>) -> tensor<1x64x111x111xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x64x111x111xf32>) outs(%0 : tensor<1x64x111x111xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x111x111xf32>
    %padded = tensor.pad %3 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x64x111x111xf32> to tensor<1x64x113x113xf32>
    %4 = tensor.empty() : tensor<1x64x55x55xf32>
    %5 = linalg.fill ins(%cst_34 : f32) outs(%4 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %6 = tensor.empty() : tensor<3x3xf32>
    %7 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %6 : tensor<1x64x113x113xf32>, tensor<3x3xf32>) outs(%5 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %8 = tensor.empty() : tensor<1x16x55x55xf32>
    %9 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_29 : tensor<16xf32>) outs(%8 : tensor<1x16x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x55x55xf32>
    %10 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%7, %cst_30 : tensor<1x64x55x55xf32>, tensor<16x64x1x1xf32>) outs(%9 : tensor<1x16x55x55xf32>) -> tensor<1x16x55x55xf32>
    %11 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x16x55x55xf32>) outs(%8 : tensor<1x16x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x16x55x55xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<64xf32>) outs(%4 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x55x55xf32>
    %13 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%11, %cst_28 : tensor<1x16x55x55xf32>, tensor<64x16x1x1xf32>) outs(%12 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x64x55x55xf32>) outs(%4 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x55x55xf32>
    %padded_36 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x16x55x55xf32> to tensor<1x16x57x57xf32>
    %15 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_36, %cst_27 : tensor<1x16x57x57xf32>, tensor<64x16x3x3xf32>) outs(%12 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x55x55xf32>) outs(%4 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x55x55xf32>
    %concat = tensor.concat dim(1) %14, %16 : (tensor<1x64x55x55xf32>, tensor<1x64x55x55xf32>) -> tensor<1x128x55x55xf32>
    %17 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat, %cst_26 : tensor<1x128x55x55xf32>, tensor<16x128x1x1xf32>) outs(%9 : tensor<1x16x55x55xf32>) -> tensor<1x16x55x55xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%17 : tensor<1x16x55x55xf32>) outs(%8 : tensor<1x16x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x16x55x55xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%18, %cst_25 : tensor<1x16x55x55xf32>, tensor<64x16x1x1xf32>) outs(%12 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x55x55xf32>) outs(%4 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x55x55xf32>
    %padded_37 = tensor.pad %18 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x16x55x55xf32> to tensor<1x16x57x57xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_37, %cst_24 : tensor<1x16x57x57xf32>, tensor<64x16x3x3xf32>) outs(%12 : tensor<1x64x55x55xf32>) -> tensor<1x64x55x55xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x64x55x55xf32>) outs(%4 : tensor<1x64x55x55xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x55x55xf32>
    %concat_38 = tensor.concat dim(1) %20, %22 : (tensor<1x64x55x55xf32>, tensor<1x64x55x55xf32>) -> tensor<1x128x55x55xf32>
    %padded_39 = tensor.pad %concat_38 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x128x55x55xf32> to tensor<1x128x57x57xf32>
    %23 = tensor.empty() : tensor<1x128x27x27xf32>
    %24 = linalg.fill ins(%cst_34 : f32) outs(%23 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %25 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_39, %6 : tensor<1x128x57x57xf32>, tensor<3x3xf32>) outs(%24 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %26 = tensor.empty() : tensor<1x32x27x27xf32>
    %27 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_22 : tensor<32xf32>) outs(%26 : tensor<1x32x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x27x27xf32>
    %28 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%25, %cst_23 : tensor<1x128x27x27xf32>, tensor<32x128x1x1xf32>) outs(%27 : tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x32x27x27xf32>) outs(%26 : tensor<1x32x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x32x27x27xf32>
    %30 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_20 : tensor<128xf32>) outs(%23 : tensor<1x128x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x128x27x27xf32>
    %31 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %cst_21 : tensor<1x32x27x27xf32>, tensor<128x32x1x1xf32>) outs(%30 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31 : tensor<1x128x27x27xf32>) outs(%23 : tensor<1x128x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x128x27x27xf32>
    %padded_40 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x32x27x27xf32> to tensor<1x32x29x29xf32>
    %33 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_40, %cst_19 : tensor<1x32x29x29xf32>, tensor<128x32x3x3xf32>) outs(%30 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%33 : tensor<1x128x27x27xf32>) outs(%23 : tensor<1x128x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x128x27x27xf32>
    %concat_41 = tensor.concat dim(1) %32, %34 : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x256x27x27xf32>
    %35 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_41, %cst_18 : tensor<1x256x27x27xf32>, tensor<32x256x1x1xf32>) outs(%27 : tensor<1x32x27x27xf32>) -> tensor<1x32x27x27xf32>
    %36 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%35 : tensor<1x32x27x27xf32>) outs(%26 : tensor<1x32x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x32x27x27xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%36, %cst_17 : tensor<1x32x27x27xf32>, tensor<128x32x1x1xf32>) outs(%30 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x27x27xf32>) outs(%23 : tensor<1x128x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x128x27x27xf32>
    %padded_42 = tensor.pad %36 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x32x27x27xf32> to tensor<1x32x29x29xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_42, %cst_16 : tensor<1x32x29x29xf32>, tensor<128x32x3x3xf32>) outs(%30 : tensor<1x128x27x27xf32>) -> tensor<1x128x27x27xf32>
    %40 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39 : tensor<1x128x27x27xf32>) outs(%23 : tensor<1x128x27x27xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x128x27x27xf32>
    %concat_43 = tensor.concat dim(1) %38, %40 : (tensor<1x128x27x27xf32>, tensor<1x128x27x27xf32>) -> tensor<1x256x27x27xf32>
    %padded_44 = tensor.pad %concat_43 low[0, 0, 0, 0] high[0, 0, 2, 2] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_34 : f32
    } : tensor<1x256x27x27xf32> to tensor<1x256x29x29xf32>
    %41 = tensor.empty() : tensor<1x256x13x13xf32>
    %42 = linalg.fill ins(%cst_34 : f32) outs(%41 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %43 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_44, %6 : tensor<1x256x29x29xf32>, tensor<3x3xf32>) outs(%42 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %44 = tensor.empty() : tensor<1x48x13x13xf32>
    %45 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_14 : tensor<48xf32>) outs(%44 : tensor<1x48x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x48x13x13xf32>
    %46 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%43, %cst_15 : tensor<1x256x13x13xf32>, tensor<48x256x1x1xf32>) outs(%45 : tensor<1x48x13x13xf32>) -> tensor<1x48x13x13xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x48x13x13xf32>) outs(%44 : tensor<1x48x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x48x13x13xf32>
    %48 = tensor.empty() : tensor<1x192x13x13xf32>
    %49 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_12 : tensor<192xf32>) outs(%48 : tensor<1x192x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x192x13x13xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%47, %cst_13 : tensor<1x48x13x13xf32>, tensor<192x48x1x1xf32>) outs(%49 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %51 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50 : tensor<1x192x13x13xf32>) outs(%48 : tensor<1x192x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x192x13x13xf32>
    %padded_45 = tensor.pad %47 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x48x13x13xf32> to tensor<1x48x15x15xf32>
    %52 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_45, %cst_11 : tensor<1x48x15x15xf32>, tensor<192x48x3x3xf32>) outs(%49 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x192x13x13xf32>) outs(%48 : tensor<1x192x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x192x13x13xf32>
    %concat_46 = tensor.concat dim(1) %51, %53 : (tensor<1x192x13x13xf32>, tensor<1x192x13x13xf32>) -> tensor<1x384x13x13xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_46, %cst_10 : tensor<1x384x13x13xf32>, tensor<48x384x1x1xf32>) outs(%45 : tensor<1x48x13x13xf32>) -> tensor<1x48x13x13xf32>
    %55 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54 : tensor<1x48x13x13xf32>) outs(%44 : tensor<1x48x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x48x13x13xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%55, %cst_9 : tensor<1x48x13x13xf32>, tensor<192x48x1x1xf32>) outs(%49 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %57 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56 : tensor<1x192x13x13xf32>) outs(%48 : tensor<1x192x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x192x13x13xf32>
    %padded_47 = tensor.pad %55 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x48x13x13xf32> to tensor<1x48x15x15xf32>
    %58 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_47, %cst_8 : tensor<1x48x15x15xf32>, tensor<192x48x3x3xf32>) outs(%49 : tensor<1x192x13x13xf32>) -> tensor<1x192x13x13xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x192x13x13xf32>) outs(%48 : tensor<1x192x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x192x13x13xf32>
    %concat_48 = tensor.concat dim(1) %57, %59 : (tensor<1x192x13x13xf32>, tensor<1x192x13x13xf32>) -> tensor<1x384x13x13xf32>
    %60 = tensor.empty() : tensor<1x64x13x13xf32>
    %61 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_31 : tensor<64xf32>) outs(%60 : tensor<1x64x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x13x13xf32>
    %62 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_48, %cst_7 : tensor<1x384x13x13xf32>, tensor<64x384x1x1xf32>) outs(%61 : tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    %63 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%62 : tensor<1x64x13x13xf32>) outs(%60 : tensor<1x64x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x13x13xf32>
    %64 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<256xf32>) outs(%41 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x256x13x13xf32>
    %65 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%63, %cst_6 : tensor<1x64x13x13xf32>, tensor<256x64x1x1xf32>) outs(%64 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %66 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x256x13x13xf32>) outs(%41 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x256x13x13xf32>
    %padded_49 = tensor.pad %63 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x64x13x13xf32> to tensor<1x64x15x15xf32>
    %67 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_49, %cst_4 : tensor<1x64x15x15xf32>, tensor<256x64x3x3xf32>) outs(%64 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %68 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67 : tensor<1x256x13x13xf32>) outs(%41 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x256x13x13xf32>
    %concat_50 = tensor.concat dim(1) %66, %68 : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x512x13x13xf32>
    %69 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_50, %cst_3 : tensor<1x512x13x13xf32>, tensor<64x512x1x1xf32>) outs(%61 : tensor<1x64x13x13xf32>) -> tensor<1x64x13x13xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69 : tensor<1x64x13x13xf32>) outs(%60 : tensor<1x64x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x64x13x13xf32>
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%70, %cst_2 : tensor<1x64x13x13xf32>, tensor<256x64x1x1xf32>) outs(%64 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %72 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71 : tensor<1x256x13x13xf32>) outs(%41 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x256x13x13xf32>
    %padded_51 = tensor.pad %70 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_33 : f32
    } : tensor<1x64x13x13xf32> to tensor<1x64x15x15xf32>
    %73 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_51, %cst_1 : tensor<1x64x15x15xf32>, tensor<256x64x3x3xf32>) outs(%64 : tensor<1x256x13x13xf32>) -> tensor<1x256x13x13xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x13x13xf32>) outs(%41 : tensor<1x256x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x256x13x13xf32>
    %concat_52 = tensor.concat dim(1) %72, %74 : (tensor<1x256x13x13xf32>, tensor<1x256x13x13xf32>) -> tensor<1x512x13x13xf32>
    %75 = tensor.empty() : tensor<1x1000x13x13xf32>
    %76 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst : tensor<1000xf32>) outs(%75 : tensor<1x1000x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x1000x13x13xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%concat_52, %cst_0 : tensor<1x512x13x13xf32>, tensor<1000x512x1x1xf32>) outs(%76 : tensor<1x1000x13x13xf32>) -> tensor<1x1000x13x13xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x1000x13x13xf32>) outs(%75 : tensor<1x1000x13x13xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.cmpf ugt, %in, %cst_33 : f32
      %85 = arith.select %84, %in, %cst_33 : f32
      linalg.yield %85 : f32
    } -> tensor<1x1000x13x13xf32>
    %79 = tensor.empty() : tensor<1x1000x1x1xf32>
    %80 = linalg.fill ins(%cst_33 : f32) outs(%79 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %81 = tensor.empty() : tensor<13x13xf32>
    %82 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %81 : tensor<1x1000x13x13xf32>, tensor<13x13xf32>) outs(%80 : tensor<1x1000x1x1xf32>) -> tensor<1x1000x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x1000x1x1xf32>) outs(%79 : tensor<1x1000x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %84 = arith.divf %in, %cst_35 : f32
      linalg.yield %84 : f32
    } -> tensor<1x1000x1x1xf32>
    %collapsed = tensor.collapse_shape %83 [[0], [1, 2, 3]] : tensor<1x1000x1x1xf32> into tensor<1x1000xf32>
    return %collapsed : tensor<1x1000xf32>
  }
}
