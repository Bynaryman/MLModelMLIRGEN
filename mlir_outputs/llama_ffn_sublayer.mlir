#map = affine_map<(d0, d1, d2) -> (d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
module {
  func.func @forward(%arg0: tensor<1x2x8xf32>) -> tensor<1x2x8xf32> {
    %cst = arith.constant dense_resource<torch_tensor_16_8_torch.float32> : tensor<16x8xf32>
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 1.000000e+00 : f32
    %cst_2 = arith.constant dense_resource<torch_tensor_16_8_torch.float32_1> : tensor<16x8xf32>
    %cst_3 = arith.constant dense_resource<torch_tensor_8_16_torch.float32> : tensor<8x16xf32>
    %0 = tensor.empty() : tensor<8x16xf32>
    %transposed = linalg.transpose ins(%cst : tensor<16x8xf32>) outs(%0 : tensor<8x16xf32>) permutation = [1, 0] 
    %1 = tensor.empty() : tensor<1x2x8xf32>
    %collapsed = tensor.collapse_shape %arg0 [[0, 1], [2]] : tensor<1x2x8xf32> into tensor<2x8xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed : tensor<2x8xf32>) outs(%1 : tensor<1x2x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x8xf32>
    %3 = tensor.empty() : tensor<1x8x16xf32>
    %4 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed : tensor<8x16xf32>) outs(%3 : tensor<1x8x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x16xf32>
    %5 = tensor.empty() : tensor<1x2x16xf32>
    %6 = linalg.fill ins(%cst_0 : f32) outs(%5 : tensor<1x2x16xf32>) -> tensor<1x2x16xf32>
    %7 = linalg.batch_matmul ins(%2, %4 : tensor<1x2x8xf32>, tensor<1x8x16xf32>) outs(%6 : tensor<1x2x16xf32>) -> tensor<1x2x16xf32>
    %8 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7 : tensor<1x2x16xf32>) outs(%5 : tensor<1x2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.negf %in : f32
      %20 = math.exp %19 : f32
      %21 = arith.addf %20, %cst_1 : f32
      %22 = arith.divf %cst_1, %21 : f32
      linalg.yield %22 : f32
    } -> tensor<1x2x16xf32>
    %9 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%8, %7 : tensor<1x2x16xf32>, tensor<1x2x16xf32>) outs(%5 : tensor<1x2x16xf32>) {
    ^bb0(%in: f32, %in_7: f32, %out: f32):
      %19 = arith.mulf %in, %in_7 : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x16xf32>
    %transposed_4 = linalg.transpose ins(%cst_2 : tensor<16x8xf32>) outs(%0 : tensor<8x16xf32>) permutation = [1, 0] 
    %10 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_4 : tensor<8x16xf32>) outs(%3 : tensor<1x8x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x16xf32>
    %11 = linalg.batch_matmul ins(%2, %10 : tensor<1x2x8xf32>, tensor<1x8x16xf32>) outs(%6 : tensor<1x2x16xf32>) -> tensor<1x2x16xf32>
    %12 = linalg.generic {indexing_maps = [#map1, #map1, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %11 : tensor<1x2x16xf32>, tensor<1x2x16xf32>) outs(%5 : tensor<1x2x16xf32>) {
    ^bb0(%in: f32, %in_7: f32, %out: f32):
      %19 = arith.mulf %in, %in_7 : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x16xf32>
    %13 = tensor.empty() : tensor<16x8xf32>
    %transposed_5 = linalg.transpose ins(%cst_3 : tensor<8x16xf32>) outs(%13 : tensor<16x8xf32>) permutation = [1, 0] 
    %collapsed_6 = tensor.collapse_shape %12 [[0, 1], [2]] : tensor<1x2x16xf32> into tensor<2x16xf32>
    %14 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%collapsed_6 : tensor<2x16xf32>) outs(%5 : tensor<1x2x16xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x16xf32>
    %15 = tensor.empty() : tensor<1x16x8xf32>
    %16 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel"]} ins(%transposed_5 : tensor<16x8xf32>) outs(%15 : tensor<1x16x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x16x8xf32>
    %17 = linalg.fill ins(%cst_0 : f32) outs(%1 : tensor<1x2x8xf32>) -> tensor<1x2x8xf32>
    %18 = linalg.batch_matmul ins(%14, %16 : tensor<1x2x16xf32>, tensor<1x16x8xf32>) outs(%17 : tensor<1x2x8xf32>) -> tensor<1x2x8xf32>
    return %18 : tensor<1x2x8xf32>
  }
}

{-#
  dialect_resources: {
    builtin: {
      torch_tensor_16_8_torch.float32: "0x0400000003EF9A3E3A0D613EF48090BE7A18ACBEFCE4973E8B41BDBD238593BE49D4C63C3A4FD5BD18690B3B17AD9D3ECC1FA0BD73321BBE35E439BEDB14C23B427F7ABE3339B73D4446953EBD5A903EE5151C3C3B8A54BE15BCE93BA7D68FBD5B089B3D7B9C953E7A6826BE5F493CBE531273BE1F9584BEAF9488BDDDA80BBE2CD8853EA3629F3EED6D993EF4412E3EACF979BE44890BBDA9C3A6BD245D28BEFD58153E78C16EBDDD91943EE1FAEE3C22725FBEAFC32C3EF5A7803EEAEA65BE475AB3BEFE208C3E2D42B3BE95EC893C5295C83D2BD9B33E97E497BE056F853EBF66A4BE7E47A83EA76D2DBEAB5E23BE8BE617BE88D142BE877A74BEFD8812BE40FAD23D95E39FBCFAE638BE205BA4BE79B1F6BB5DE751BEC7A1A2BEE6FBA83E3F1D81BEBF635F3D4F1819BE8D9E8E3D012DDCBD9326413E57373EBEA03E933D5A033FBE591A98BE819FB8BD46356C3E09ACC43C1D0E9EBE38EF94BD91F5CE3CDE678D3E159D583DF80E0D3D838F9D3E6400B6BD46EA8D3E48D30BBE6993133E2D9C8C3ED0519BBE3EFF573EEC30483EADA2943DFB9D7FBEB1F49A3E409B95BEC53791BE3052893EEEBA113E1C1983BE952D4BBE9DB41DBE624406BEE0E51A3ED799A43D949A03BE4B76873EB04F513E793886BE2957AB3E5A2439BD59D4A9BD7EEE9EBE117C1D3EAAB8C6BDB8C5B6BD56B24ABE1BC924BD611E8D3ECE164E3E3A833D3E",
      torch_tensor_16_8_torch.float32_1: "0x0400000091A597BECE1B363E2278953D302D1C3DAE8ECEBC1A6797BED0BE9C3E3A4C453EB076083EDE472BBC64431F3E0FB75E3EA5894EBD9E425CBE227A1BBED5EC7DBE2D259EBDA85E30BE3BF0EDBD1AC7EA3CA1E2AA3E90D42F3D9F83113D6938A8BEDEE64DBE3FEB67BEE82B313EABA078BE60BFAE3CB61840BD3B4EA5BE6F0A0C3E429745BED7D85FBE94D36A3E9D0001BE67B84EBD0E42233EA4A3A23EE1D5993E2E90973E26A912BE9DDEAD3E58776C3E5138813EFAF9583E8CF48DBE38681CBE414337BD26FA16BD27CBB1BE199EACBE9A4518BDC8A9593C2B011EBEEC2183BE6EFD6EBE96505BBD07063EBECD7FD4BDC776F33CEBF20ABE2B1B483E9D7EBABC00B029BD114FD2BD7EBF0B3EF739AEBE4253643EED40B0BEE4D33B3EE644F0BD75184BBD97FB69BE2D17AC3E5386F93D838FA63D37988D3D12E9993E3066373EC5023ABED77E783E87FE413EDEB9B3BD1EA5123E1C8BA83EA57D26BE3C39B0BE9092AE3A35EDA13E609C583E74BD0E3E939DA2BE0AF19BBCD014273EB9DC4B3BCA83A63EB91B6B3E2D2E6DBEF970FA3D6BC8A9BE1FD9383E6F3796BEB5A3813EA72F763E7F13A13E6BD7853EFF012B3EBAC7193D7A8AE03C603E773EA54293BDC70FA73ED691F9BD862B213EC362893D9057ED3BA9CB5A3EDFBB693E08062F3EED14B33E8D98AFBE6F0FE13D3D7B973EAC3974BE1C1F90BD87A49B3EA2B3253E",
      torch_tensor_8_16_torch.float32: "0x04000000ECC0313E363E6B3E002CB8BCA84D173EE052CD3D10E0313E3430433E4CA8C5BD0A0444BEA8D4253DE02E623E409DA5BC4014093CB0E310BD9443EB3D2EF15D3EC47E80BD504FCCBC588A2FBDE8B2623EF2950B3E1404023E30F35FBEA45C853D90C781BD5A0776BE90EEA2BD8074453C9CF9FB3D3C17C5BD549306BED006AD3C0E7025BE04D0623E7C2EA3BD24E3DDBDFA647F3E5032E23D105AB23D860C70BE6A666ABE488F00BEA4C13DBECACD4CBEC062A23DE853B13D407D92BC9EEE6CBEE82815BDC8557BBE8C7F1DBE7010CF3C66A071BE807C56BEA0B2683C6001E9BD081C20BDD617403EECEB803D3867EF3DB8893E3D60319DBD342BD73D00E00339001B993DD20907BE88A0773E8015243DA4C4E4BD30811DBD76E0123E38616BBEF6027E3E74B6E3BDA4F75A3ED26D553E06AF083EA09F23BE3E2B683EDA3717BE20D38BBCC8361BBD004F013E7CCBD93D9098CABC6834593DFA8D70BE5ACF56BE5832E9BD0EC316BE3C574E3EC0AC96BCDEC517BE40F9233E00D3F53C70C2483D5C9095BD583E473DC290553E60E9613CF4A415BEAED705BE40DF0A3C886883BD765623BE78FDF23D005AB7BB180CF8BD208A7D3D565A12BE5EBC153EC028003CEAEC263E6084C1BDD4FA17BEE86B22BE1C625E3E3235313E88DD643E24CC293EFC634ABED015EC3C0CB74F3E88A6EBBDF2050F3E208BEBBCCAC151BE800CA9BD"
    }
  }
#-}
