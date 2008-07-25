accuracy = 1e-06;
init_random = 42;
name = 'PruneVarSubMean';
data_type = 'double';
km_train = [1, 0.525970164, 0.506856952, 0.613781672, 0.286971041, 0.252627493, 0.223296037, 0.201776123, 0.218178798, 0.177034881, 0.339367055;0.525970164, 1, 0.345892418, 0.208340463, 0.176757746, 0.240349294, 0.117551807, 0.257782002, 0.188447915, 0.214717992, 0.464574767;0.506856952, 0.345892418, 1, 0.309745319, 0.133653039, 0.334727208, 0.318483125, 0.381578445, 0.132806235, 0.219284519, 0.360461861;0.613781672, 0.208340463, 0.309745319, 1, 0.432125577, 0.222653394, 0.253598284, 0.159088285, 0.121044162, 0.218390617, 0.24070908;0.286971041, 0.176757746, 0.133653039, 0.432125577, 1, 0.167380552, 0.172004347, 0.123946429, 0.108758901, 0.237027193, 0.0841403151;0.252627493, 0.240349294, 0.334727208, 0.222653394, 0.167380552, 1, 0.114311022, 0.242201243, 0.236742737, 0.234934316, 0.212440243;0.223296037, 0.117551807, 0.318483125, 0.253598284, 0.172004347, 0.114311022, 1, 0.457742963, 0.107724156, 0.151395375, 0.181443008;0.201776123, 0.257782002, 0.381578445, 0.159088285, 0.123946429, 0.242201243, 0.457742963, 1, 0.113961813, 0.259636346, 0.449624329;0.218178798, 0.188447915, 0.132806235, 0.121044162, 0.108758901, 0.236742737, 0.107724156, 0.113961813, 1, 0.160245126, 0.148194475;0.177034881, 0.214717992, 0.219284519, 0.218390617, 0.237027193, 0.234934316, 0.151395375, 0.259636346, 0.160245126, 1, 0.316755948;0.339367055, 0.464574767, 0.360461861, 0.24070908, 0.0841403151, 0.212440243, 0.181443008, 0.449624329, 0.148194475, 0.316755948, 1];
data_train = [0.449866557, 0.321641193, 0.0375981806, 0.687736485, 0.766497809, 0.0241738529, 0.864096192, 0.297250858, 0.114214202, 0.158703583, 0.245874088;0.866918502, 0.865858472, 0.625907473, 0.887397506, 0.496359152, 0.582132734, 0.148316673, 0.408439514, 0.265153334, 0.101326815, 0.890004973;0.435206975, 0.224882276, 0.450724664, 0.499963339, 0.126272743, 0.177308187, 0.572277246, 0.79206359, 0.175119331, 0.634194129, 0.862932173;0.610455794, 0.137001868, 0.358658774, 0.922552135, 0.92782772, 0.415645806, 0.389894306, 0.128718893, 0.34194045, 0.538736083, 0.279752235;0.169074565, 0.222851067, 0.487637798, 0.552395183, 0.964137163, 0.902696797, 0.414625514, 0.6047304, 0.0180526342, 0.802081873, 0.241991523;0.199563141, 0.42850837, 0.501758541, 0.458289187, 0.549087981, 0.0301564, 0.872671688, 0.845493662, 0.278209767, 0.827754368, 0.796660748;0.650391373, 0.0490622962, 0.848048763, 0.976636634, 0.400176723, 0.605177794, 0.908787956, 0.365734546, 0.595152818, 0.430844653, 0.345918382;0.536920483, 0.557791462, 0.0108857506, 0.721706209, 0.914592533, 0.383679042, 0.0490239377, 0.107964277, 0.89005043, 0.920821604, 0.400473479;0.699034634, 0.680688118, 0.684071426, 0.769289273, 0.709548506, 0.596342029, 0.75613784, 0.926153316, 0.0546088215, 0.540025723, 0.542644768;0.392433931, 0.225137228, 0.289175752, 0.443156159, 0.714152926, 0.592460595, 0.805567073, 0.799944173, 0.98320612, 0.123895452, 0.25444898;0.917968638, 0.716697395, 0.852654323, 0.662672464, 0.952093908, 0.11719196, 0.690865478, 0.430012182, 0.378193517, 0.394763101, 0.250371199];
feature_class = 'simple';
data_test = [0.290346387, 0.433975416, 0.402610187, 0.0529627544, 0.85584722, 0.137671988, 0.890624363, 0.572515412, 0.222002369, 0.199255711, 0.89154778, 0.349227934, 0.571540502, 0.493743992, 0.892932757, 0.944800875, 0.875127378;0.0291741594, 0.288490922, 0.769830182, 0.381523182, 0.370577523, 0.538162601, 0.515010471, 0.228217275, 0.195488958, 0.0405965969, 0.638837614, 0.797105195, 0.538941632, 0.493624673, 0.766535212, 0.574361963, 0.548335342;0.812883132, 0.872742507, 0.98429452, 0.76539323, 0.317355607, 0.887542602, 0.421504001, 0.948460345, 0.816075784, 0.570763848, 0.568276411, 0.518417365, 0.0480075107, 0.417665467, 0.524701858, 0.487668394, 0.603407129;0.217793558, 0.230968372, 0.82974908, 0.0271501019, 0.102694623, 0.0661724791, 0.832573297, 0.713406814, 0.386373071, 0.866023545, 0.603471834, 0.585443665, 0.5855585, 0.436002551, 0.585502711, 0.375204532, 0.334351225;0.453897874, 0.576240626, 0.120004309, 0.390043767, 0.492086486, 0.795600478, 0.959471085, 0.0597055226, 0.911437871, 0.349284261, 0.0955587604, 0.613752344, 0.556312105, 0.680487338, 0.191388909, 0.91644364, 0.29005633;0.563421873, 0.85602555, 0.94546869, 0.740401679, 0.971524563, 0.420613543, 0.222237237, 0.998225648, 0.134103942, 0.309687361, 0.789925522, 0.685061186, 0.241592447, 0.0743435918, 0.976199079, 0.408200923, 0.397424393;0.86994074, 0.0397838521, 0.741108141, 0.937542799, 0.10029727, 0.194242883, 0.0357991325, 0.0194703783, 0.501639992, 0.539666867, 0.00871504555, 0.698167078, 0.872218887, 0.0881120181, 0.127955659, 0.88960033, 0.712801196;0.739807381, 0.872125084, 0.640410291, 0.384650833, 0.959895226, 0.397811625, 0.0576453883, 0.727501809, 0.398877011, 0.581868597, 0.633219363, 0.254164179, 0.876149723, 0.793112042, 0.975574751, 0.365983486, 0.974336455;0.614985042, 0.785837024, 0.649380755, 0.198777198, 0.590346302, 0.380781786, 0.783626537, 0.0958499361, 0.357518409, 0.0583027513, 0.0402370717, 0.90789234, 0.296377439, 0.701848589, 0.873322719, 0.229048242, 0.858215419;0.362532639, 0.379555588, 0.365672101, 0.653155839, 0.710726184, 0.817495238, 0.879594367, 0.237011406, 0.241500012, 0.760742452, 0.717564255, 0.451740949, 0.798662738, 0.631520233, 0.530768539, 0.605930263, 0.76255621;0.978104742, 0.192045956, 0.879425577, 0.910155008, 0.1143189, 0.254111265, 0.603284557, 0.685620011, 0.247494067, 0.160102357, 0.695460789, 0.134677398, 0.834675522, 0.187128955, 0.663613436, 0.304064564, 0.054284972];
km_test = [0.327767078, 0.148714283, 0.455498319, 0.261915524, 0.112324744, 0.174080192, 0.197930559, 0.156819773, 0.208125724, 0.187505399, 0.257293059, 0.368211921, 0.463394293, 0.305662845, 0.311859303, 0.238408941, 0.276153314;0.201329315, 0.288605825, 0.2081887, 0.187548977, 0.24682466, 0.260331864, 0.152517941, 0.181266238, 0.190967372, 0.114315388, 0.281980314, 0.29458655, 0.219912683, 0.389150778, 0.355125019, 0.141904574, 0.19396988;0.388805009, 0.129955283, 0.309305048, 0.490679458, 0.0677617223, 0.242110908, 0.141236191, 0.09503648, 0.30780259, 0.158382064, 0.100724073, 0.470166052, 0.234922917, 0.159568443, 0.105378151, 0.231445906, 0.112699401;0.252556702, 0.144036512, 0.475502265, 0.162166782, 0.124832976, 0.120057059, 0.199242067, 0.110830502, 0.184288628, 0.174257312, 0.176536042, 0.477862858, 0.466850263, 0.250582377, 0.318570943, 0.37408602, 0.370100633;0.178827904, 0.151019005, 0.167454936, 0.0859945055, 0.196827345, 0.107217094, 0.355670935, 0.104833541, 0.129700512, 0.1411008, 0.206111456, 0.192344812, 0.49662212, 0.308498999, 0.320359767, 0.242714867, 0.188314642;0.147487205, 0.159132617, 0.0711717495, 0.159068165, 0.123509653, 0.40311937, 0.220704317, 0.0381880736, 0.506392564, 0.303921593, 0.066661939, 0.452318766, 0.293055646, 0.517546866, 0.0641189797, 0.327397328, 0.2077725;0.336925454, 0.158495032, 0.248061602, 0.31277128, 0.178925934, 0.160229902, 0.21404605, 0.125578331, 0.156182173, 0.160894859, 0.178568242, 0.325731912, 0.20748439, 0.1240375, 0.182335393, 0.358473224, 0.238972776;0.287321981, 0.436705073, 0.221901501, 0.334750583, 0.266981179, 0.551389565, 0.246898169, 0.138725735, 0.288965818, 0.163622124, 0.158613796, 0.511815298, 0.111857497, 0.271387743, 0.206965953, 0.228946192, 0.232737238;0.198989679, 0.125585177, 0.100578512, 0.2631211, 0.185035807, 0.216569626, 0.0561950537, 0.126770062, 0.16569401, 0.515697072, 0.220170997, 0.1224004, 0.424390463, 0.265826252, 0.10206319, 0.153625045, 0.232391334;0.443008693, 0.588401814, 0.248052338, 0.232149497, 0.285996524, 0.286429034, 0.0965784563, 0.31190081, 0.469015101, 0.308993918, 0.148490746, 0.306723888, 0.186258798, 0.320150088, 0.216823699, 0.199451643, 0.203488378;0.225952954, 0.468722372, 0.425114741, 0.29696448, 0.249437328, 0.43609858, 0.106399534, 0.307080987, 0.300611137, 0.193510138, 0.280374565, 0.551879262, 0.115007467, 0.275405833, 0.308477868, 0.211295995, 0.262531434];
preproc_arg0_divide = 'False';
kernel_name = 'Gaussian';
data_class = 'rand';
kernel_arg0_width = 1.2;
feature_type = 'Real';