-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 03:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gopaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `map` varchar(50) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `tittle` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `views` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `tanggal`, `deskripsi`, `image`) VALUES
(2, 'Anjayyy gila', '22 Januari', 'Sedikit setres', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `id` int(11) NOT NULL,
  `images` mediumblob NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat_penjemputan` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tggl_penjemputan` date NOT NULL,
  `waktu` int(11) NOT NULL,
  `informasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`id`, `images`, `no_hp`, `alamat_penjemputan`, `id_user`, `tggl_penjemputan`, `waktu`, `informasi`) VALUES
(1, 0x89504e470d0a1a0a0000000d49484452000001110000005c080600000049258188000000017352474200aece1ce90000000467414d410000b18f0bfc61050000000970485973000015fd000015fd01cd70516100003a9149444154785eed5d07585457da8e493665379b6477b39bb69b6477f327d92432f70e9ad812628c8624c6166066eecc801515980658624c30f6de7b2cb10b161045ec2820828088027651447ab3a1a8dcf3bfdf9d3b1340b0249ac4e4becff33d3373fabd73bef77cdf39e79efb8002050a142850a0408102050a142850a0408102050a142850a0408102050a142850a0408102050a142850701f81357a2024e4c107c2c21ef20c630fb946b23fbebbfcc0b3ef6d2afd975b74f92b9f6fceffb7b03def659f98c2e7ba4714ff392426e6614a17c2d8830f30e455a040c1ef10200d228237bf4bf8abcbbcacb7f905c734aae5d9df7211058bf9c8a2edefaecfcb786f437eee47d10585edb714167db1bde8ac6157c9e11ebbcbe3fcf79e0f35ed291bdb2fb1a4fba0a48a265fee2978764e0afb83442a0a1428f88dc333eca1b747ec79969fb05fcb4d39b0909b7930433527eb1cf7fd31c687e5327544110389b0a69185acd58602d626ba807dbab99075de5ecc743bcb58d7dd15ac6ff225664dbdc482f696b3014965970627979c18beaf227cccc10abf091915af92a51212a2108a0205bf4534e28726dbd46353b25da71c64fccc438c9b95c9b8b9f89c7f84718b8e316ef949c6859d66dcda33ac59442e735b7f96b5dd98c7da6fca675db61630dd8e02d6756721f38d2b62a68452169454c606ed3bc7861ebcc4461faa62630e9e2f189f5e1e3afe60a966e6fe0bff50ac13050a7e63500fddfba5ebf874c68d4d66dcc454c64dddcfb8d9198cfb2e8b710b41244b8f336e453653adce61aee1b9ace5bab3ecc30d67997b741eebb8399f796e2b60fa1d85acdbae22d63bae184452cc82124bd9c0bda5eceb9432363cfd3c1b9775994d3a5cc9261d3c77704ac679df29fbf2feae90890205bf11bc1db2c7851bbea79827129990ca5453d21837e320e3e6c022a9618da8646be45d5823efc11a691395c73e8535d2694b01d3ee2c158d716562f7d862d647229212169858c2062695b2c129a56c482ac8645f19c8a4924dccbac426a457644e3878ce7bca46f1516522568182df004022ebd563f7316e1c8864123ea7c1329945d608dc1ab24696c01a59096b64550e53c31a690e6bc46d7d1edc9a7cf6d9e6c2ea2edb8bd3402449def1a597bbef2a962c92005824b63d25ac1fac9241c9a5ec1b58254426c3d2cad998cc8b6c7c5665f5e8b4f2f5a3d32ade51ac12050aee73f02393dcf9e189223f7aaf6c8dc0a59971006e0d59238719f7fd51c62d8335127acae9d6b4883ccb5a6f2c10db6ecc9be6bef1e8a3548e6e67d120634ce175726d7c41247ef1c5cc225b25fd934ad897e4e24884225927e2c8cc4a3622fd62d9d07de72c2131318f498d51a040c1fd8766b684c7b9a1bb63f93129766b64e23ea692ac11b8353437b240b646689235146ecd9a33ec9dc87cd62aaa20bfcd56f16f72310f7884e63caed95e78c2105bca7c40243d65f7c67fb7834c4a5930c86400dc1c22145828e237fb2ad890f48b707bceadfc72cf856715f7468182fb14aaa1495dd5a352446e7412e327a430d5e434a69a4ed608dc9a79e4d6c01a2122a149d655a7191f9e072229286cb9b5f225b988073a86a73ddd714bc129af9812a6db51c8bc638aa409d75eb145ac0fac12221333c8c40237875c9d20582824c120958169178964122d49e59c42240a14dc87700d89fc235c9a38f568582263ea736b4024e4d64844625ff6252269b2e6ccf2f73697ffbbd9b692173fda9837f61379d586967f35db0a984064b2b39075dd59c47a804c682998ac93be32a9f8ef2e610124f1c5a225e5020b4828c9e91d5bda522112050aee43a8beddfd193f7ccf656e5492d3ad91967c678248e63ae6478e316ee9098948a4159b883cd63422b7a879c49902b78d05e2475179ece3689a70cd679d205f10996c2f942c13032c136f9009ed2be90e0ba587e4f2d4905d85a2ef9e73ac7b5c697e8fd84285481428b81fc10fdfbbcc750cc8036e0d373e857193e0d638e647e666d98984967d2522c9b65b246bcfb226ebf259f375f6e5dfd61b68e5264fda4bd29ec8644b01fb025689c78e920b5e5bf3cbb52014b250f43185cc082172b10bc2761430635c3948a738bbd3a6fc77e4662950a0e07e011f12f32a3774f7197e94ecd68048544424d3eb10896491d0646b3653859e96566d68f9f79d08fb86b4f79d6492cfdc41289f6f2b113fdf52b8b5e3e682ac2e3b4a2477c78388655ba1249ef2278575d9922f7aec2c671db716657c1c5dfe8adc34050a14dc2fe04262fdd42392aaf9117b182fcd8fc02299225b2433336a1049cd559b53d23e125ab96942640222719249543e6bb3a528c77d47852f5c9dab9f6c82bb03a1adf39fc352a9291446719fc28af9747b056bbbb928da7de3d127e5a62950a0e07e80a7a7e743ea2109f35d47248bfcc83d9245e25cb1711089b4a3555eb5590cab6499ddbd71ec25e1d7dac9e45d2293e892ea56ebf3fbbf1f95fffd875b4a250b8576bcd2fc09b93d3585c228ee43a4a1746e9b4a588bc833437fcef991107aa219f7c021f45b8eba6dd42d0341bfe6f99d4635db7a3391ef853257a5e0d668eabff56ffc90dd5bd4a352aaf991898c1f5b9748e4adf18e7d248be4951bda22bfd23e572291c9baa26ad7b5b973d46bceaadf599757d27c7d1e6b19096281b4c2f7f7ea0885511c6d666b0ed7e8dd7579cc3532ff32bf26cf5d6eda3d874663e82a08fa991a9d7ea24e6f1ca9d108460f0f8fbfcbd1b7849b9bdbc38260f4d4e87413b55aed64943306f95f95a37f75d068f46d743afd48ad6008d16a1b10c4e13abed6e80c7dbdbc749f6a349a7ffd187255f03b83eb8094a7b890f8487e44f2759e566c1cae0d6d8da7551b7ac686b6c73bdc1bb24a68d275c971915f718a71ab72af73a16716beb3e4e893aab579f3f875859285a20e3f23ed7a254ba52988c2214d481046716aa4a3b4e41ef111058c5b7d26e93f61279e929b764f61341a3fd6e90d678dde5d99c1e8c3048337d3ea84d8db25122f9dee539da0bf66f0f6612482c1580532f9508efe4580b63feee3e3f39cbbbb9e5cc35a9604da8bcb335418e4ebbd99e8a57ba127c9d60a823fac9347e4621428a81f2f87643f062219c40f4f2c538f49ade6c7a68ad2aa8de3895f9a70755825f64d6922bfe45435b724bb40b5e4a895cae0969ee8013291e64d240b8564558e64a97035847e4b4271b47c4c4279569c64b044e0329dfa463a75ed670046dffe4e85d1eaa13c3ecc4bab9f86a85bd5ff2046ec68475e282711d0259dcee826c7ffec80d5f08a4e27acd56a8593b896044f9db1951ce504ac2d0dda7b5dab93da4b220a7ae3f59a02abec3aaea79aae4980d0356ab4c20c5f5fdf3fc8c52850d030b8c1712a7e68c24c7e44e2616eecbeabeac999d7f9a907abf969909959d5fcdce3d755b30f55a9e6646671730f4de3961c7d93f2359e77a803bfe444393d7b232d0bd3274dc4d286355a2226d7a7a6501809a521a13ce4262d859bb4e878deff1664fe9fd4a07b0cb823428d515722039dce500085fcaf9ca45e68f4fa76c87bc5ae8cbf1612115679fb7423a517e953271863e52827044170d50afa72e93a21208738e4eb0ae2e945e209f1f212fa8384c2705de7edd7a5672017a63318bac9c52850706bb884ecfe073f32c19d1f9bd69f1f97fa1d3f316d193765ff5cf58ccc60d594b4764d4726d99fa509610fc23af1e4e61f39cf7f0f225820afe6d0dc09b93c3419bb18e440045153a430c4511ada214b424f12c35de2176733d5dc43a37e0e6b0484e10d37c44122551091cc7998f0a8bf416ba4115c8365a458b046aaa1943472df2e8934a2b9149dafef334277e16528f5cb70abfee6eaea4aa3fced5c6f235fa4ed843c9df53dffa9d174fd974ee7fb8cbbbbfb9370ad72616654830cb6a15d0520b808398f135e5e7a35aeb98cdaabc775ebf4fab972d40dd07919bec0355dc0f5d94944d01f815bf304cd9150fbbb75ebf6779d4ef70caec7f950254dcafa582c4f0bddbbbf0cb7ea15fcaeeb9a36a26ba56bf6341a5f32180cffa66bf0f4f47d8af252bc3d991d369bed71a4f98707ea92f2fce0563522cb88e2341a9f57e83e0a7dfbfe452ee3a6a0f6539be17a3e4b793dd006bd5eff7cdbb66dff54dffc0fca46b93ecf697bf47896da70b339a20e1d3afc196d784eabedf12ca577b407e53fe9b80e4a8320e93aa92c7241bdbdbd5fa47b41aee8cdcaff6d01e4f1c6c4ace755d3d36771b04ca453d2e6c8f32674b400b93c347f42a4424204e1109aa085a8489046350ff1f3908f76cbcece60fc2cc8d4f4a23742625f936bbb677090886354c6087cc8ae3086d3d431e564b5803ffb6dc49fa77450b29318c99330ea1309dd9444a843a1ccf751c722c801a4cf25d1e88474c87c2878b39b7520ca8fbadd353ac3129d4e9f8ef69e81e4529bf17b25c8e33c88639794561038ea9452c61ad0834490462611c94d592047d50bb46b95a0f796ee0f95efe5e5a5d668bcff8b3a9390f710c82a03d7bfa43394b063c78e4f23cdb7701153a96d209d22dcdf01725192c20882776bc42d42b9fb71eda7a57ba0d567a39c445cc31428f65b48eabc075abd5e8734c751470608f200f2ce686b68fb2718452a842f447d99c87b16df73f05fa4e2fb1472eb90b55e4206d93e0a17ad2b883152a3351c42ddf80f0490affe28ee0bc8d730e0b3cf84bf20a9237f23943d0ff564230d5d6f3a88d782f07aff27b43398da4bff09240d04f1a214ae13a6a2edc7f099a1150cb1b8879fc8fda10bcadd44fd08f9f29127c1c3a3db6d4feedf17a033533de5d3e0dd42621e5685a43dcd8ddedb821f973c583571ff297e06c8626a3a5349f32607ec42732734114b420ff6d13c0a0908066e105351d834a49b9c66df763f3c81715fef625cf056c6056c645ccf08a6f68960bc2e7488dc8c7b060789d8ad0a61153af238522e895474ba0039594d344287face3ef968140583c186ce1129bb440d92088d36b43202b2b9284fe4c282315c82c553a137fa5ca73074e20afc36d7472418a11e43fef134794b69d1de7274e86474da442845911cc6bc34fa433412cad96ec09d92083af9603ba9da2d352f2fdde76401a02d43504615c5d9dbae1f07055843dfa95c0a27970a23b78f5c54235caf0de9aed0bd2362a27410912c224a6f3076a5fb9e0be2e840e92953179deeff50f7763dd2531aa4a7f99c35f89e43e91d65509ca30cd491ad351a9b50fe9ac07d790a04b78c26d0299f9447aa1ff99d6d202b549f50d39df5128c1f81c00e3bea8054e1ff7c5d8eae052fad6e1cfe4f291dfac9e52e5d84ff5038ea752762a170295e3026e2fffb0afdef1acdc3d13d90ee9dd17b7bfbf6edff2815f65b81e79c8c97da4e491df2de8494f92d27a5463419979ac68f4cbacc8fdfcff8f1f6038e6849989f940aeb0161d3d3193ff380644d70731c56092c0d5a220679a8a6816c26a632d5e824a6fa76377319bc93b9f4dbc65cac9b988bdf06e6d2731d53f9ac65bc710d536943f7bfde21824cbf7b865a24a2d54742693828d64579a526b37bf7eeb5ead7688caf213c8ff2a0931c41677bcd4b2bc450a7bc0989342202b02b0fd52360c431f4173c05cec343ff26da800158c82245b18ff8faee723e27d0e102ed9d4d52fc0458044da1148fb885843c8c325e9708506f80329172e867224bbd23f11d5b221add006ab3bd5dc25534b43385132922ef4e4959c815d4eaafd23d2362a1511d4a9786f88348ff2ea5272542fbaaa81ca92c9de19c56a7db833451448628e3229563bf8f863c98ff4e25c57fe20aa5bb2813998300c86d3b09d986fab6e2f338e2aa1df148bb5f10fa9245e104c876b844543aa90da29746388bbc3bf07f6e463b0e23ef7572dde87f42fc86376bac486140e9676f9b9e5c58d14b105aca51b580fb30da71bf700f2e0a328910702f039cf70b75511ab4a91ae5a11dc27eb4e728facf3d1f387f11749e97f57687b9198bbd569cbcda6b4b11eb11758619234f325d44b6e81591cdbe58775aecb42e476cbf2e877dbcee0c6bbd2e576c11912baac3cf882eab4e33d5b29322f7fd3191ffee90d81444d26cfa7eb1e5947de2fb1392c50fc726896d4727b0b6c3e258db9018b1cd975bc5f7ac516233df70d6c47b8df8ae7768879018f670d83d7adf4d4d12c11fbb91c2f07d81bd231a18465e3f29a10c90c140c7280aab612c8dcae804f1f60e56ff9c0888e63d94550925a251aed4436bb86119b84b972e6fa09c42b9dee334d72047c104d7d37c4716c5a1b3956ab5de64f2d702a547d947ec1dd8785110ba393b6f4ddc2189340239cd97db44692f6934fa0f2882080c0ab3dea114140f298132f76a8fb650bcdeddfd49c78a0edab6d47e8f488184731a41d050382124e48107bd74866ec80b2b439e7fd1e9fbc9d1a8cbf812f296521d88972c079d4e08edd0a1c30b7292073a77eefc3c94745dcdf6a07d0e2b88e6249e17f47051a5fb23957340769d24d8ad14fd52477ec8d59affa5974edf9bfe778ac37d10351a430b39aa166e4e2202dc28a96eba3e5ca741a4fb4f0311599a342783763c2127bf6f008524a59414f356cad9a871af0d1fbd372c2eaac3ec0355c6d0e362eff5a798655bae181c57c00625168b21c9a56c586a391b9556268e4d2f17271c2817a7665488b333cbc54559156cf9e10a71d5d10ab6f6f83931f204e4e47931fcc47971cd89f32cecf879b6ece83971d1a10a717e669938737fb138714f019b945890f7dde1736ba7665d1837e640459f61fbcfb70ac9287ce26e1db5e8241152289d3e9ac2685316fedccb9235a2d5ef72fcb10683e11fe8e85247c408564c730e3e6e3e8fa153dc944450c77ca715a2d3cf92836f804e6f1ce6b036e0773bc94bb234b4429ec148751876508793a36a41ab332ea4bca8e73a46feb672702dd4251198dff3e428471f90c43e7f21b8e25e9ca5b476a510f27c7cecae129104086683448c76a5a3a57169a9bf2e64f7e7242d17d33d40ba957294133457819158b26c0c74fd06efc5721459222fc34a93da0c8b84dcce0c10c0b372b41344aeb887523a6a174865a21cf500b96168bf64a9501df81f83e4282740c4709d0cf2ca15c842a3a3b90f09778344745e866e441e8e36a09c9d0dfd97bf62802c42d883aeae297f68e611fa57aecb82ff53b79dff6ed30fe67eccbd334e5aaabd0d3cf85adfa84e6f993725a806ecb8ecfa6d82d87444026b397e2f739b9ec6dacc3dc8da2dcc629f2c3d2c7ebae2a8f849d809e6be265b6c1791c33e8ccc656e1beccfd87c440fec49470914b08ef2d3bf7494003de5db9dce23892f617e092562bf947236ebd81536efe45536f3d86536eec0f9cb43f79d4be9bfb7c44a6fe7fba964521f89000f41d17649ca2c755ca13d05a2e3d9e837b91d50d2c9140622f9133a45832442231c3a64ae34f12ae8abbd74ba2f3a74eff0675a5da9296da91cadbe0375302a0b8ab2562ee2010f6fef1791f7a4e44209c241223339ca09527a5ccb663b897857797a0aae72542dd42411bb32e9571b0c3dffad875b4542ee9597c1a0a2c947b4f9983c612cc28f174941e4626a9108958534b0906e546c024d14e2fee6513a4aef25e867366bd6ec715a512269d1a205ad683ce54593b8a8cf7e2f0d5b1d0a269188c15846a3384802caad1f2f155c070c562aeed3216a33a583bbe42048b2028cd2f5e2fe521cead1b8bbbffa68cd36903507c5cf97ae875c27ad102267bf3b24026bcb4122d27f2c187ce5a85f39c8fcf70c7bc8cd27e6b1c6837736e6fc360ce47b84afe284d054bef39222de7d5e85fafdd9439b371f7743c7bc19def40c7b443d38a63dff55dc4e976fe2aeaa8625892e2312459731c9eced09a9eccd29e9eccd1907d95b73b2d85b0b8eb0b7171d676f2f3bc91a879e662e6b6837abfdfc5622958f36e6317a58af0308859efaf50299d0110246104ad75d456c445a399b9659c166669e63730f5f60f34e5c61338e5d658353ca727ac496f6a5495fb959778c0648041dd7d81e9d8d4c67ea4c9ba993a31327c81dfc9ca31321fc09748a064944ab35f288974637c4576374a315865428ccbe9a02cb26057288464bc72845f30e7231e4cf2f8795224a23bf6008a16562220e12b4e121b4d708e5a9923aa7561fe7e16173e6ad899a24429d1972055244969543107f81ca71281dbed3fcc31e5ade948ba94522f6f6ea0f11a1cad1b540e4a2d71b25e594ebcdc535c7e21ae36a0aee4f91541f9415c4bbdd71fd0e1271e6afa1dc75d008e564527ba436c11593c3c9caf0765c0f09ac1e5aedd955a7feddf8ac222b4426916fe5ecf78444f47a1fc935fcf5021687db42f6183f39b58d6a54e228ee9bb824f5c09d97d4d66d4cdd278ab9faac63fc172bcef0eedf7d2ee7f851783324e3117ef0ce2edc90dd91fca8944af5b87d224f67b7d63a76f1b07d1fc892134c259f4d42dbdc9b869f652da413e5edafa620cb849eee95ce2591c984ac93fe49a56cc2810a36113239a3824d83cc04a9cc3d56c946675c647d628be6340b15eb559a5ba12112a17908284612751c74c6b320946ff0e75f93956bb59cec9624e2e5454bbac24528a6a3f354c3b56950f446efeb469faed7d19113a96cb9189a577905ed39003f1a6d355ec7f7488d4e379026fcd0711723fc12ca1651473e14a6b99ced06d42511fac4f5d0ea8624d28a133e894071edd5202f9a280da3fd14721112ea92085c94acf6ed7deb5d5520cbc941225427a5377a77158dde3eb5047557a33ce93ea0fe1d8e558aba24826b6e68f2112462b80d12116815e486fa49701f41e2866afa9f40d623e4ecf78444bc04efd672d4af0c208f37c3b29fe39667ebb8ef0eef524d3970553d7e3f530f4b64fc80ed8c0fd8c8d4bdd633951076d6a5d3b21bb645ff14a84726b6538d488ce2c72697aba764547353f633151dbb286d95a7bd22762291ce26093b2511093d3fd32cc2fe90de0f871c814c243707d60908a5476c311b056b64f4fe723626bd9c8d3f502e91caa483156c6ac63936e14815f38d2d9afd635ee1d9108910d0ef2ce81022948894f39abd03ebafc09c7e4f4e724b12d1ebf56ae4aba0bce860c8abeb470fb7a183fad727c8ef07ebc52468044fc7a4a48c465e5add62947109ed3985b4570dc6aeb4314e44d9d55098022216e4bd6169b3266a9288fd7a8402b43b96466187a0f3c723cd3628cb0c28f0fb64f5c8d99db8814474c2ed9108cd35d0ca8d4e9804995abfe867e9bc74bd51876461de40221afd4f2211fce7f45f80846fda86e935e7956e9744bcb4c228aa476ae77d4722705b5c23cffeb1e586fc1eaa553999fc8a1cc62f84c2d2fe0d3a9439248ef1fdb731de14cdf85eeb4a55fa55f7c694423bd4a3539a71e393d7aa26a45ee167645673330e8a1291388e14a01dabf414b07c36093d80470fe635877b4327a67d20bb381f47db4f4da3f912f9f5136cd8be72b837656c246414488588651c086568fa79d62daed44b6ec56de366240273faaf18950ea1034b9d92d6f7a1a8bb7c7c6aedd0bc29894001fe02853c232bc035da502647dd11e0d2b7a73ad0c6b9a4941e5aed87f0f33550069dfcb4ed6bf5ed2fa98b1b2756f50b29dc64323dea109ae49412df043f96442405d3d73fa7d110ee1a8920af4422548ecef8a91c755bb093889d846850f1f0d0d5fa9f1d80e53953ba466ae7fd442234b928ec2c6e8dd17b875b7431e3d715d0b67251da3d4a87303b48842c11d3966aae7b8473d6f99e011d9a1f9fd446353165353733e30a3f3b0b4402d7c6f1a22cc7d924f27102dcea334cbd36172e8efda559ad68be44b64edac132a153e3bf4aa6f7d994492fc80aa197648150bedd7f5e1c9e7ea17a645695189c7ceee03b7778b0d1cd4884e0a1d15930f2e4c325c981f2e591d2ca51126e45220441d02f85c560efd81a61366ececd94bdde5532b4e13b69239556d8833a5a7978347b9c46ea9a2293c84d57d9ea9208dae354b43b01eabb6d12a1b90d9d605fd592ee814e58550fe13522d286b2bf5337ee6e9008feb7cef89fc8a294e3f403115cf75e35321a8dafa13e52fc5a71b08cf45437e597da20083de42827686b3bea4c27b292d2dc2f2432606bd9537de28a07ea638a2b3bec2863ef41f94821a5d1be0e89a8bfdcc9385374b8e703b77ebee02ee2c1c6d3d33baac6a5647133e4ddab4424b4155e3ac3b5b655a242db7990091d1740473012a19075d22bae88052796b07e49f20bb292cbd9a07de72b072697c40e4a2e0b1db4b72c6a6072d951dff822e7fe83dbc1ad4884ac0e28cc739d3beb9fa7bd0808aad5c111774b12a10934a4b94c9d179da842108c1d49e911e5eca8a4383407a0858541f5c9c14ea09d030cb43fc2de412b51df299479046d4e975c109d108ace3b189dbbbd3c015a2f99dc4022b7d86cd610ee844408b8ee35541fd50b57ec0259515406b94aaed212b0ee0d94b7046dbb80b4bd6b3e8f7337480404f56ffccfb008ed5602c8f820cae5a87e124f37bf273c75ba563a41bf8feeab9797572d05f7f030bc8a327f981cd60a71b0b05e75e447f97f4718dc3fd965a276feea49046e43487ac93f0726976fb4a49c67c65d25d2a4248de0f592c89078b8333b2e707d37d4ebcbdd6bb8b84d7e9bd3afcae7c7a532d59c0c726f44bb7b03abc47920f449a765623f3ec07ed6089d3d422f13a777ffd2fb6cac7b4a9935b1b43228b1a4876f4a8a73dec01c57f6925f42e11d1d0a742b12b915e8612a8c72bb6585bce4510f891010371b9db09a3a19be5fd40afa99509c56e8642f77ea647c0dca2fa0136ea2ce0793988e22a8058d8fcf2b5aadee30eaa189cf6a838126026972529a1791b67b4bbb31ed9d3cd553b8f512efcf49225abd77679ac77128183e2f43e2e14e45e0feedc0bd2f24b7d16eb1194ed344b29cf5ae9008010a3c85ee1feaa29da2d486428da0df8274eb10960837a592f2d1f6739dde7b8d4cf44ed09e1a9a90755c03cacb41de68b43f12442e6d8b47f835c44bc728fcba49040432e360c9ffc6a497ef1f72f0b2f45e1752323a71bd2112510f4b625cff18e7aac22f01febf238dfcfb33abb9c0cdf4fc8c7d9e84b6c34be7b81efdc132a16304681587ac13221458285db61448afec945edbb9a742f48b2f6a6899ef8e005fdd47524408946bb31c7cdb20eb019d6f27750a748e4a6d3dbb510934d7e0a515a6a1a35da58e4c070311794189afa113326f1000b5038a76d453abaf35b783518ef68944d1288aba52341add30d435070abc0cb21e616928831e0894767c9222a2dc2428c10d873bc1d26982facba436187da050c2f772d41d81e64da0141ba90c12dcbbc36ddbd6bfc46b47c88350fe61b8069aa0a6656c99fcec021297c811d7920f2be513399304221183b74f29b59984ca91a3eae241dcbf433fb4c93edfe300b94b287f13e268cbb9b47c6f940e94920fa5a2367977a57bb8ab0bea94b339410f19822c62293fa5a589563a8c8a4887ea43995731108c401b32edbff59740863f3c83a3d3f5a4f6535efaaf05ef5f9044161d29f9dfec23178e4c3c7c990d8269ef1f7f0b121995489688c87f15f3b31d3d581fdcdc421ee35dc6c5bbf21319af5d2e721352446e2e2c127a6916b938f3e9295f90099d304f47059075b2ec0453c1dd691f9dc77c7616b26ef165acdbaee27dbe29acc151ef4e003fb60346a543e83847b43ae31c39f88e80d165163a0d2d0bd21cc377b4c55a8eaa0b2892b123141ea3af9089b467e9f90d74cc2c28fd2690c30028fe0dae0cd24df2e9da1dc4603884b2ff29074b20535aaf777f929660917f24cab944448232d9175a83f4dc4a4d20ff9bb8de387283406a5968c75039ea8e206ff79f8efa3251c6417c8643496fb9cc8e6be982eb5f83bc6950e85318adcfa0adc7711f12e83ed2b349725227f4fa5ecf83706391fe805497c6d0578eaa0b58224238ae9fda9329680d375c9b346f2108c1a8772beaa5b69f86e420fd2110ea7610d4401f1f9fa7e5e437808e5d40fa1190ddb88e13c887f6c3add4eaa340129d288d566b0c425816acb3447ac45fca08683db49d517e06d2a6e15ab33c3c74bfccab52361ebdf4cf1527ce1f9c7fe20a1b9356cebe4a2ebb2589f0639219f74dec29956d9bf3827e29a89b4ed1bb369926f28dc732becd5cc60d4b602a7aea97442213b4d9718c00b93ab05054908f23cf300dae511b532c0a31a5bde4e27e326844257fb67d7bdd33eee86072f01d813a0a2c8505e8942022211b1da4d6f336f581ea249f9a7cedb69d3bff83765bca51b5e0ee6e7a14659ea1d10e0af08d1cdc20b41a218a464898dd4c3076fb480e76824c7452129f8e1d9ffeecb3cffef2539e1845594fd0e3ff548efca062bdd7501fa87eb23068a486fcaba1cd7104ba376455511eaaef6664e5e7e727b5890444d7e0b511f976c67d87c5f11f6ac3a79f7ad2391e372c6537043ae704f7ee25ca4bc45f733298eeb15cff5335ff57843f42e13e3ef67b7627f5dd35e4e4888f6f3e5bb53afcec75362bb3828dd97f3b2492c6f8b1a920915d3be885de7251bf18f88fa6bda06e36e5a4eb3b5318af9ec0e0de88dc573b996ada0191930e863e603f42805c1d3a5f04a4a202a9b489c8619db717919ced145574cfcf19f931a0ce43a4441d540efac9a0f2bc34ba13f6a74ff5b3eaae5cd404c561a45f47161188a78acefe90a31428b0b3f19ee2ab03624a185b79e282383beb9c442283924b6f4d22e3f631d590d86528e6b6470a9a7791b6cb87c43cec16c220318fb986ccf9a3eb9c943f509814ff23c16b5786b9ba7fcff8165319ffee6451fd018864f02efb9e163a6384c884ce74a58d6ab050542015b735a7d9673bcad8279bf26e38adebb70e9d463789265241229768be844e0693c984fe03e96139222e9d4ea7d5ea0ce7a4b9159d7efd7df87097827b89b4c22a6e4f5155e996bc2b6ce5f10bec9624b22cdbee124011d513d3191f12ef7c18a941d0c379be917f7409dafc6ffedbdd6df8114983f9b17bc3414489dcaccc347eded1fdaac5c7535c969f5ad664c989a672ae3b06d72d622adf631de33b2f61bcdb4cc6b79ccad41fc3b5f936de7e3034099d344f8442733a209596ab4eb10f3797881f441774948bf9dd80366bc1078fd11b7caec3cab8a2d1e9b7e0b7bf20787f02cbe3138d4e17a0d5e9b6e9f4463ad3e33a7cf578e4b9e1543305bf63c00a79f0f0b9ead5fbce31169d73b16112d95ac8dedb98cf38da523e018a18bc95f101514c3d6027c348ef7cb4ba0e248ba349d74dff52056eeecf7db93d9afb3a2e4f3d3a95b94ec964fccc438c9f778cf18b4e323e2c8fa9d6e457706b72fd5acddff7a38f70e37b468ce77bad67bc2f8844b382f11fce825b3383f1da15223f3a4994dec637369971e352e4f704ef63ef82189b479ecd792f3cf75f7231bf2bd084202c91de1aad3e4e47278a198c22ac1369a950afa7675d0c557061623482a1c7cd260615fc4e71eac2b53659e557afee29bac2a2cf5caa4d227b4b5940422933c495891f2f3bca9ad1d6f68fe7319e1bcfd42e63985a3596a9df9dc6b88fe745bf6ada587b3b33c843dd2baa31e7bf710c67db5cacfe2a9ea987ee61fcc824c69312d3437434e14916cdd2934c159673890f3d4947d7fd24703dd7cde6fb6e647cef48c6f50199685732fea3b922ffe16cc69b368adc883d223f229149efc019952811893aa28036a18593b52417733720b903f6aff70742dce82433ef173506430b581c1d743a43278d46f31e2d3fd29c8c9c4c81821f407321b995d7e61ebfc8d89e82cb3790c8d7fbce89a6e4f2fccf27a5ec746d3eb59a6f4cc40102514f60ea269398bac534a6fe700ee3dbcd3dfec6c7b3e5a547d6a895b0ec2f7caf0d43f980e872beff2ec60fdac9f86f6219371c2442e79ed62010d592e38c0f8712afc995ced0f82978d333e411ce3f2a5a6ddacc78bf0d8c9385f7584a6d14f1297221b122dc29c60f4d80ecb65b24e179cc65f5e98696f67e142c16cbeb2693c9ad6fdfc0dfa475437de76613b10a7e27a8b87cf93f4555d58547ce55d720918b12898ccdb8200e4e2d3f38f0c4d5a66f3c3f44a7e6411a441e244df1bde574a66e8dd1dd1d9649c7c562932ecb3e220251f98471b00612d4d6ed8c0f86e5f2e58e1f08a4ae0502028105c29a869f296cbee164bda79fdf091af7897e9d334757f0e64d6475d8c51ccdb8beb0483a2d66eacf1688bc255ae4bf01b141a409d7c9fb992a3427aff99afc3b3af3e456309b6d9d03ccd6ab268b358a96dfe4e0df0a1a99cde6b60196c04ebe7394974efdae7159147b94553396595a25d6b444e61fab14c71ca8881fbca7487ac993abeb344fd726936b1108df7a96ddb5f9fc7ba6d684c16d085de6d22de25dbe4fd4713a57840fdc2cf2036b10886481d0e3fb350824f4146bb6a1907d147526c277ce0f5bcc7f241aa983b60f77ed07abc78abaadb04664813bc5789fd5525bf9aeab45eecb18a96d1c443de7306bbce4f8ad2786ef103d7af4f86b80c97ad864b6a6d1fe0239b826a417606334a703801e96dd05a7fb43bf1d6134e23bd2d1777b8a1ff2d7cdeb806c2dd45b3e95630f9356c21ad1a9fb35d2dd004aef28cbdfdff281d96abb6c0bec576db1047e8ce85a6dac5b17fd7684d56c13e5b1a75070dfe2dcd5ea15c5d7402265559225b231e7a2b8ea74159b7bf8fc8109a93f3c27d2a4c9e4a6aeae2011a705622710359492fb6229e3845028e7da8b9c6f64096f86c206429c0402b7a18e05a25a6c27107a44ffb3eda54cb335bfa1e7156e1b4dfa6d7f9d0bda92c7f7230b682be3836a08bd2e0216096f6fabc881e0380a1fb083ce24a9e6e61ff2908bb96b080cf47d864804d6484a505050ad2ddba43c7077388bcdf62594311c8ab8c12fc03218ee8fb48dd9dfdfff6f268b6d3264544040c01bb06abad90203234c66db72e4eb444baeb004fecf161434c2620d8c06514d415e5e2604097a93e9493f3f53479b2df87bab3528da62091a83729b3814d7df64f547be850101d68f50562babcd36df6ab56d447b4302028268f5c55956dfbe7dff65b3d9ac269375352cab25686f04da14e16fb609bd7bf77ec5dad7fa1fab35d0df620d5e81f08d9009d41e220cda921f60b1f5433b67984c813c7ebbe39a711d8191168bcd0a34b40357c1af1d624ecee317aaae271655319655769525145e669b722b59587665e1dcac73b5cea578a7f1e87faa9b4c2a50b7fac102b113c832c64b04b286f1be91701fe046d422901a16483d04f249743e33ee2c66bedb0a0c72553f0a6e21194ff003b66f510f8ab51f49504b6015d18430095923682f1710055281ab83f4aad959992d228aeffaab236e4622b4db110abcc96c0d3c0ee55d68b1dad65b6d41d508db0f2593b69efb9b2cdf0406f563fe019622b325f098c516180aa53b0e421003cc96c550e6747c4f8132ae85825e325b838afb0458a5038dfaf5ebf76790c44a845fb70606850506f61b84f2f741b92ffbfb9bfb2049233f1087c9125809a2ba887a738940cc16db56a4134d66cb11108eb4e9ae27da83f8c368e3697fb3b90f9185d962cd379b2dfb030303a553e3ad96c019a82b1f6d20725881722ea0ae7210defb141f60b1e80283fb5723bc10e167d0eeb5f88c47bb1888316660dfdaaf5f50709f4014c5172e5d174ffc402257d896fc2a71d5a94b663989136e6e210f3769353bc2b50ddc17d985e141209cb0128a0902e9b58ef1fe5120902d37b540e89c0f0781d0814074cea92da9fcc297b185f5be67e376e012b4f94ffca098efd55fc78314626e2a3437c219c244aecf3a91eb1d29f2df268aaa39876d72517715b7b244c892c057a7391f10600e0a0aeecfcce6202dfdc6a8df11a40125b326f8f8f949cfbcf8f8f83d0702c90cee3700e9acc3298c80b49fdb028329ed22e9b7c5f225a541dd74ae85043b7159e2414897faf6b5fc0f9605b95bd920ab4ab4c579884e4080c54ce485cfc1f41ba4f01595054bc679d01448a10b88046db049e40fd27a01e4e7dcd66fb2d95ad76c8f3938d805247429c06429415d2e522200bf67f51ff82503a9dcf1814f0a7e050089a82e5d138b0b2e8b923bb3b7b49a6dcdbbb2794e8dc7df6b826bfdddd7ea4f16da2d100fb8053a58200e02c1c8fe0381ecaa77129556615c568240c241201bf398614721b32696b111e9174b26cb732f770428a26b48dc4bdc37b1ebd443a4b7dc89fcd7bb18ff35ac1149e87b1db1c252eaba46e47b868b7c6f10cac8c41cd5acb45ae77bde2ddc8c446434c248fdb49f9fe55d7f8be56328f344525e4b6070204542513d31ba3393c9526bd50896c27c285f651fb3f96d39e8019b6dd08b208812c8069a7f81f2c6204d3eac8917c8a54012c93531db82b4320185f80e18f014d29c8565b29d1e78a37802958bb654214e5a2d33590383416ea2c96a6de798db0808b07983cc44b4d179be0a593f085781d0da417aa22dd7f0b98ee2c88dc1b55c459e5a3b82fd2d811de89afd02ccce438b15dc470089b4bc78b5fa627e6535cb2a972c91eb5b732f4aaf2fa80feab60b3ee43f5f54e974619c0402b7a0410b24c34e204b4f30d5aad3ac69e459e6be299f197616324b42311bbeff1c9b73e472e1e4ad675f92abb935401eb427451592e0c50d893ba61ebe97f143e218ff2d2c91fa84e2e478ae3fdc9b5e118cf75ecdd4d66d22373ec5f9ee90bb8d5b9048238ce29da1680760e21fc2a8bf23c064de450a054597de59126009f404198044ac3da51c32e0762c4458454040e01b72103db0f522ea2a00e144f5e9d3e71fc847e5eeeb61363f6bb305bbc34a90dc53d83aae64ed80385086e949d47f16656dac49223457432485764fa2df7d8282a4f2fc4de63c90cb1893d93c05bff351df2e22414a13600b50216c17ea3c8e32e3516638e2af05986d1269a02e22916bb8cea5f4db0193c9e64e164b80592191fb128c5dfbe042d5b52bf997abd9b14b8c25955cdd8151abc1d97237cfe94ff01ecbf7f3fad5f21c485d0b449e039109447ad06dd1896a6ee9c96a6ee161d6e4bb43accd92234c177586d99261811c2402b9c456e754152e8abb0589d0681ac21e7cbd5ffc9f41529eaaa1f11bd523f632f58864c60f0369dd96a06d83626081ac13d5fa558c0bdc76eaadf1c7eed91e0e2211281648c4925c9744ac56eb7f10570a858bed1910206d210f0808e884411fa67d6030fd861be1098b81dc8a5a4f154b2462b656904b2207c924622984f2460df0250bc3ba0b0a7fc864b15925ebc6169407a27806d6c4e7c1fdfa93d28ec46fc9123199cc9bea2191cba85b221110c0df41283b215ffbfb9bc693c5e40f62834b263dc5aa37e99fb4da82f799ad81d9645551185c966751c605b4d3698998adb66b08a367ac9c00917e4aed03f9fde4897505bf004491b5bc044b240f96c8e1f322db5b5075cbc94dde7b4d6f75f775a244200dce81ec63f4167fd582a3a5dc8aece95c8ff5b35c5bcc606ad7894cdd64026bda721afbd8b092996725b3c507cbd8ee8aeae29dc7eb71673cc31ea207f2f831a92ff0c392dee747260de046ecc9e047248ab46d5eda754a423b6047d20e54fa5e4728cc199e444716489688dab8566cfc55ec20b9a67b025a61319ba1c866dbe1810307fec5e10ad07c88cdf665eb7efd0792193f887e431ef60bb0f493e644ac41d21ccd9d900814fd9f20ab22904794fdb775184daa4269734c2888dc25526c93c5bade620bbc06126b42ed2312411ba36b9208297c4080f54a4080592611b82216db75a49beae76732fa994c5ee4dac0e2795d9edb696a0b0cba0242984fbfe91a2d96a0f7413a34511cee28a33e1209b05a3f231201a9dd9543a014fccc803bd3f8d275b1b8e82aed13b95c78b0f0b2f394a486e0ea1bf98caad7ba4c694728adc20cb8c10211b9394420474e375e72bc0de551a9c6b6e3f971a263a31aaf9ec85c54e35863c8279dbf676be24e5fccbfc66a9f0e0fcb43f56d8215e526809c4e7023122bd513d2997aec3ec68f86fb4232c621b04650373f16dfa5cf8685fb365e547baf25372cede585d9f7f61910f6402328cd6a8cd2d56673e02a5803df404658022c9abe7dfbfe0f8a5a044b241f0a3d89d28100d2a150d76db6a071c8dd0844e0452b36fe662bada63801ab662108a2c2cfcfcff9ae57b3f9cb67e14ae420cf5e9a9b203703dcb1393030b8da62b56db35a837c50c71608da62951496965691be0024b5ad2689f859ad6fa1ac0b48bb023f1bf9f959df02199c020994e1f33cc22b21d7d0f6325aad193060c053b042d290e70ad2cc0751cd038164527a84c586787a3ee26fb5aa038382ab40a8b55e710972fb00c4598df4f4927005f71b98c89e07891c2f830f73e47cf5a6b08c8cdbda55c9076ceeedda6f57353f707b0d0b64af6481a8666532d5fc23652e8b8f3b8ff153359bf022af1e7fc29536ab359f2a2d11ab3f9dcff88e8bd85b9f2c606dbc57b1d10b92a5c9c49ae047eff91f373a69897afcfe2bea89e9d5fcb814515a2e86e0bbf449cfbdf093f689fca4b46a6e7caa283d18d8b088d2a9f49ecbaf707da26a1d9177afe017e4f732ac8451b02ec24126b48cbbc964b20da1c94e28f14750b255565b60029473365916669b39080afa7defdebd5f24d78046f2be26533bb9380918f96174d81693f52107499bca602df40ab05857235c3ae7d66e0905d8cc96c04810533c2dbf82343c905a9a64eddb77e05f50d077b002beae7946494888cf63286b00dc96257dfb9a5dd0865db032960707073f171818f81a591eb0520c20bd02b3cd564ea425a5335917205d02ea0b9536a3493b762dab90de0544f392c516bc0a6e4badf7e91a0c863f99fc2de3d1e63920c7bbba6358c1cf0058228f9fafba9e748e48a4a26a821c7c4bb89ba63cca7fb52bdc7568a24827874923bcbc0a434fe3365e789446d25a802bb3d2b5e52c10c84cc6bb13812c669c6605e3baae615cef28d6b8f7864dffb4853e2e27af057e5ceafb208ca5aaf1c947514f253f3deb1a3fe390242afc564ddc97ee32317519be9f574dddcf54536a08ed4fa1f919922969ccb5df4e51a5099d2117fdab40dd4386c81d080b0babb96bd4b9e94b86b4eb53fe5e0b94b7be438bea0b2334548e0350eeff5aac41b9b01424b74b0e263402b96c022996f5b0d9fe2a87d5578fb40b56fe4ef91b6c3789fc53c1fd847355d5ab4aab19cb28abd4cb41b785c683e35fe747269d508fb72ba8b48cbbe028e3976517b82ccebfe1ac09bef9f4f7d51fcebdaafec46e81d023fa9cf76afbe42c3ddbd26f7b35f7d54e4fc728591f9a4ecf78aef1c464353f2da3033ff3b0919f71f073d5a434eef57987feec326d7f1fd5b474919b8e76d0eb356b49ba7466083f238b717da312def4f8ced9e915dc1ab026a6438a619dc0f0b0358335d242da496bb254c08a09909329f8bde2c275d1527cbd5a3c9077a9de5700dc0caab1092d5553d2f2f8b987e9206491de8ac7adcc0e93a3eba211e73e6f81baf37291f782d0ce5122107a408eb6a87fb39ba947249e558f4f74955662ee0448af9a93b9869f77c4be22544b402a6421d13ccde4fdf9dc678b55722e05b709b2104c56ab87c51a380d64b294966969dec6cf6c96e6bc14fcce7141141b175dad2ecaccabfc514fd0aa67667ce832ef4836bff24c35bfb68071ab72a5e5c9fad0b8c3bcd7796de87175d708fbfe1207817cb54b3a50593d11aec7b403a754b3b33e73f59df387db25137edea1175ce666e5f2f43e5e3a88b9a6d0118e24f38f5c53cdcefc495beb152850500f3232321ec9bd746d595a76f98fdeb5e9b2f8d4bf55a13991efac2bb8d67a439eaf1c5c2f789ff0365cefc812b5758b4c203b412074a64732a3f90c6e1ebd1fe644954be8e965ad3617bbfac4b0c73cc3d843f42a4ff2df49e87b18c2f05df2d11b2f39a6e6179db06fabaf47d48bb3456efed1d9520314285070f771b8b0d2987ab2ec279de5f1ea46f1d176e1b99a8e1b726ff9063c58209ff3fd77e4ab43e2458940c6da09042e89f4fa066ee569d63cba9cb5df5274be576cd18eaff7964f9d7df862cfb5a7afb54b2cbbfa5ef625b1f3b9abd76d656595d206356ed9694f7e395ca9454440b5855f9acd5c161e4d7a79618c72a49f0205f70a2967cf3f939091f3b34e36aa43629a7143e3e3f889e9d7f91959a26a0e5c0e7a07cc8a53ec5d3a1e60533eeb195fc2bede7f814d3b729985e55c65f1658c9dbac618dcafc35744e67c749f5b7a3218ee94fd655435850e935e76b254b5f0f88f7eb84f810205bf62b82d8c798c9b9aeea79a9d99ae5a78f80ab736ef7ab3a8a2eacfb7168b3d77978983d3ce89338e5456af3d7bedfa8ebccaab074aab8e9db9706d28dc18e9f17307b895a786ab579fb5bf1ad329a7181f962bba2c3f6992932950a0e0b70ad5c2b4a7df5e96e3c6afc931b96f2e58e0b3ab70c780bda5c9130e54242e3d7a615df499cbdf26e55f697fa8b8f805394b2da8c24e8fe3c3e914fad310b83561a74575442153adca8d7a33ecf636d02950a0e0770cd5da33e3f8c842c6ad814bb32697716b619584e797b8ac29753e2aaf408102050dc2353c77e43b1b8aa4734a48dedd502c368dc81b23472b50a040c1cdd162ddd9feada28b193e59ab0d85ace58682834db7e6fe4d8e56a04081829ba3757491aef5e612f6c1863cd67a63a1e8b63ef7aebe3f46810205bf71b4db54f14ebbad25acdde622d636bae050bbd00ae5d918050a14dc3e3edd90f7f2279bf2cb3f8f29679f6d2954ac10050a14dc19da479efd63e71dc5b19db616e4e3fbed9fd5aa408102050e7cb1ad6886d7b6c2e5f24f050a1428b833687716741036fff877d72850a0e0f78e9b9c52af408102050a142850a0408102050a142850a0408102050a142850a0408102050a142850a0408102050a142850a0408102050a7e3d78e081ff07a7e7237d2eb898ba0000000049454e44ae426082, '123123', 'adawdawd', 7, '2023-12-11', 123, 'awdawd'),
(9, 0x626173653634656e636f646564696d616765737472696e67, '123456789', 'Jl. Contoh No. 123', 8, '2023-01-01', 1, 'Additional information');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `about` text NOT NULL,
  `profil` int(11) DEFAULT NULL,
  `background` int(11) DEFAULT NULL,
  `language` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `no_hp`, `alamat`, `password`, `about`, `profil`, `background`, `language`) VALUES
(7, 'Alif Essa Nurcahyani', 'essanurcahyani@gmail,com', '085172041077', 'Kota Baru,Kalsel', 'Alif131', '', NULL, NULL, ''),
(8, 'Miftakhul Jannah', 'Miftakhul@gmail,com', '0851720419900', 'Semarang', 'Mifta131', '', NULL, NULL, ''),
(10, 'Gunawan', 'essanurcahyani@gmail,com', '085172041077', 'Kota Baru,Kalsel', 'Alif131', '', NULL, NULL, ''),
(14, 'Vira', 'vira@gmail,com', '085172041077', 'Kota Baru,Kalsel', 'Alif131', 'jkkjkjkjk', NULL, NULL, 'indonesia'),
(15, 'Magvira', 'vira@gmail,com', '085172041077', 'Kota Baru,Kalsel', 'Alif131', 'jkkjkjkjk', NULL, NULL, 'indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pickup`
--
ALTER TABLE `pickup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
