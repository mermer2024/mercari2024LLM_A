-- +goose Up
<<<<<<< HEAD

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES
('A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'tanaka123', 'tanaka123@example.com', '5e884898da28047151d0e56f8dc62927', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B2C3D4E5-F6G7-8H9I-0J1K-L2M3N4O5P6Q7', 'suzuki_ryo', 'suzuki.ryo@example.com', '6cb75f652a9b52798eb6cf2201057c73', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C3D4E5F6-G7H8-9I0J-1K2L-M3N4O5P6Q7R8', 'yamada_ayumi', 'ayumi.yamada@example.com', 'd1e5c8df7e9fb6de3a253cae5a4d9d56', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D4E5F6G7-H8I9-0J1K-2L3M-N4O5P6Q7R8S9', 'kobayashi_taro', 'taro.kobayashi@example.com', '9b74c9897bac770ffc029102a200c5de', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E5F6G7H8-I9J0-1K2L-3M4N-O5P6Q7R8S9T0', 'saito.mika', 'mika.saito@example.com', '4b227777d4dd1fc61c6f884f48641d02', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F6G7H8I9-J0K1-2L3M-4N5O-P6Q7R8S9T0U1', 'watanabe.kazu', 'kazu.watanabe@example.com', 'e2fc714c4727ee9395f324cd2e7f331f', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('G7H8I9J0-K1L2-3M4N-5O6P-Q7R8S9T0U1V2', 'ito.hana', 'hana.ito@example.com', '6512bd43d9caa6e02c990b0a82652dca', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', 'nakamura.sho', 'sho.nakamura@example.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('I9J0K1L2-M3N4-5O6P-7Q8R-S9T0U1V2W3X4', 'yamamoto_ai', 'ai.yamamoto@example.com', 'c51ce410c124a10e0db5e4b97fc2af39', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('J0K1L2M3-N4O5-6P7Q-8R9S-T0U1V2W3X4Y5', 'kato_ken', 'ken.kato@example.com', 'aab3238922bcc25a6f606eb525ffdc56', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', 'yoshida.miho', 'miho.yoshida@example.com', '9bf31c7ff062936a96d3c8bd1f8f2ff3', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L2M3N4O5-P6Q7-8R9S-0T1U-V2W3X4Y5Z6A7', 'yamaguchi_hiro', 'hiro.yamaguchi@example.com', 'c74d97b01eae257e44aa9d5bade97baf', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('M3N4O5P6-Q7R8-9S0T-1U2V-W3X4Y5Z6A7B8', 'matsumoto.sara', 'sara.matsumoto@example.com', '70efdf2ec9b086079795c442636b55fb', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', 'inoue.ryota', 'ryota.inoue@example.com', '6f4922f45568161a8cdf4ad2299f6d23', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', 'kimura_yui', 'yui.kimura@example.com', '1f0e3dad99908345f7439f8ffabdffc4', '2024-09-26 13:34:32', '2024-09-26 13:34:32');


INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('D1A7B3C2-4E5F-6A7B-8C9D-0E1F2A3B4C5D', '北欧風デザインのソファ', 'シンプルでモダンな北欧風デザインのソファです。木製のフレームと柔らかなクッションで、リビングをおしゃれに演出します。', 55000, 5, 'https://example.com/images/product1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E2B8C4D3-5F6A-7B8C-9D0E-1F2A3B4C5D6E', 'ヴィンテージ調ダイニングテーブル', '古材を使用したヴィンテージ調のダイニングテーブルです。温かみのある質感が食卓を彩ります。', 75000, 3, 'https://example.com/images/product2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F3C9D5E4-6A7B-8C9D-0E1F-2A3B4C5D6E7F', '折りたたみ式書斎デスク', 'スペースを有効活用できる折りたたみ式の書斎デスクです。使わないときはコンパクトに収納できます。', 20000, 8, 'https://example.com/images/product3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('A4D0E6F5-7B8C-9D0E-1F2A-3B4C5D6E7F8A', 'レトロなチェスト', 'レトロなデザインが魅力のチェストです。引き出しが多く、収納力抜群です。', 30000, 2, 'https://example.com/images/product4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B5E1F7A6-8C9D-0E1F-2A3B-4C5D6E7F8A9B', 'ガラス製コーヒーテーブル', '強化ガラスを使用したコーヒーテーブルです。スタイリッシュなデザインで、お部屋を広く見せます。', 25000, 6, 'https://example.com/images/product5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C6F2A8B7-9D0E-1F2A-3B4C-5D6E7F8A9B0C', 'パイン材のブックシェルフ', 'パイン材を使用したナチュラルなブックシェルフです。高さ調節可能な棚板で、収納物に合わせてレイアウトできます。', 18000, 10, 'https://example.com/images/product6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D7A3B9C8-0E1F-2A3B-4C5D-6E7F8A9B0C1D', '回転式オフィスチェア', '人間工学に基づいたデザインの回転式オフィスチェアです。長時間の作業でも疲れにくいクッション性があります。', 15000, 15, 'https://example.com/images/product7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E8B4C0D9-1F2A-3B4C-5D6E-7F8A9B0C1D2E', 'ロフトベッドフレーム', 'お部屋のスペースを有効活用できるロフトベッドフレームです。下部はデスクや収納スペースとして使えます。', 65000, 4, 'https://example.com/images/product8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F9C5D1E0-2A3B-4C5D-6E7F-8A9B0C1D2E3F', 'アウトドア用折りたたみチェア', '持ち運びに便利なアウトドア用の折りたたみチェアです。キャンプやピクニックに最適です。', 8000, 20, 'https://example.com/images/product9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('A0D6E2F1-3B4C-5D6E-7F8A-9B0C1D2E3F4A', 'モダンデザインのテレビボード', '配線をすっきり収納できるモダンデザインのテレビボードです。大画面テレビにも対応します。', 40000, 7, 'https://example.com/images/product10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B1E7F3A2-4C5D-6E7F-8A9B-0C1D2E3F4A5B', 'ラタン素材のラウンドテーブル', 'ラタン素材を使用したナチュラルなラウンドテーブルです。ガーデンやテラスにもぴったりです。', 22000, 5, 'https://example.com/images/product11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C2F8A4B3-5D6E-7F8A-9B0C-1D2E3F4A5B6C', '折りたたみ式ベッド', '来客用にも便利な折りたたみ式ベッドです。使わないときはコンパクトに収納できます。', 30000, 6, 'https://example.com/images/product12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D3A9B5C4-6E7F-8A9B-0C1D-2E3F4A5B6C7D', 'オーク材のロッキングチェア', 'オーク材を使用した高品質なロッキングチェアです。リラックスタイムに最適です。', 35000, 3, 'https://example.com/images/product13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E4B0C6D5-7F8A-9B0C-1D2E-3F4A5B6C7D8E', 'シンプルデザインのベッドサイドテーブル', '引き出し付きのベッドサイドテーブルです。目覚まし時計や本の収納に便利です。', 12000, 12, 'https://example.com/images/product14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F5C1D7E6-8A9B-0C1D-2E3F-4A5B6C7D8E9F', 'マルチシェルフ付きパソコンデスク', 'シェルフが付いた機能的なパソコンデスクです。書類やアクセサリーを整理できます。', 28000, 9, 'https://example.com/images/product15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('E1B2C3D4-5F6A-7B8C-9D0E-1F2A3B4C5D6E', 'ヴィンテージLevi\'s 501ジーンズ', '古着のLevi\'s 501ジーンズです。程よい色落ちとダメージ加工が味わい深い一品です。', 8000, 5, 'https://example.com/images/product1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F2C3D4E5-6A7B-8C9D-0E1F-2A3B4C5D6E7F', 'Gucci スリムフィットシャツ（新品）', 'グッチの最新コレクションから、シルク素材のスリムフィットシャツです。タグ付き未使用。', 120000, 2, 'https://example.com/images/product2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('G3D4E5F6-7B8C-9D0E-1F2A-3B4C5D6E7F8A', 'ヴィンテージ着物', '昭和初期のヴィンテージ着物です。美しい花柄が特徴的で、コレクションにもおすすめ。', 15000, 1, 'https://example.com/images/product3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H4E5F6G7-8C9D-0E1F-2A3B-4C5D6E7F8A9B', 'UNIQLO ウルトラライトダウンジャケット（中古）', 'ユニクロのウルトラライトダウンジャケットです。数回使用しましたが、状態は良好です。', 5000, 3, 'https://example.com/images/product4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('I5F6G7H8-9D0E-1F2A-3B4C-5D6E7F8A9B0C', 'Ralph Lauren ポロシャツ（新品未使用）', 'ラルフローレンのクラシックなポロシャツです。サイズM、カラーはネイビー。', 9000, 4, 'https://example.com/images/product5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('J6G7H8I9-0E1F-2A3B-4C5D-6E7F8A9B0C1D', 'ヴィンテージ バンドTシャツ（Nirvana）', 'ニルヴァーナのヴィンテージバンドTシャツです。90年代のオリジナル品。', 10000, 1, 'https://example.com/images/product6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('K7H8I9J0-1F2A-3B4C-5D6E-7F8A9B0C1D2E', 'PRADA レザージャケット（中古）', 'プラダのレザージャケットです。多少の使用感がありますが、まだまだお使いいただけます。', 80000, 1, 'https://example.com/images/product7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L8I9J0K1-2A3B-4C5D-6E7F-8A9B0C1D2E3F', 'adidas スニーカー（新品）', 'アディダスの最新モデルのスニーカーです。サイズは27cm。', 15000, 10, 'https://example.com/images/product8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('M9J0K1L2-3B4C-5D6E-7F8A-9B0C1D2E3F4A', '古着 カレッジスウェット', 'アメリカ直輸入の古着カレッジスウェットです。ユーズド感がオシャレな一品。', 6000, 3, 'https://example.com/images/product9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('N0K1L2M3-4C5D-6E7F-8A9B-0C1D2E3F4A5B', 'Burberry トレンチコート（中古美品）', 'バーバリーのトレンチコートです。クリーニング済みで状態は良好です。', 50000, 1, 'https://example.com/images/product10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('O1L2M3N4-5D6E-7F8A-9B0C-1D2E3F4A5B6C', 'H&M サマーワンピース（新品）', 'H&Mのサマーワンピースです。軽やかな素材でこれからの季節にぴったり。', 4000, 7, 'https://example.com/images/product11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('P2M3N4O5-6E7F-8A9B-0C1D-2E3F4A5B6C7D', 'Louis Vuitton モノグラムバッグ（中古）', 'ルイ・ヴィトンのモノグラムバッグです。多少の擦れがありますが、全体的に良好な状態です。', 100000, 1, 'https://example.com/images/product12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('Q3N4O5P6-7F8A-9B0C-1D2E-3F4A5B6C7D8E', 'Supreme キャップ（新品）', 'シュプリームのロゴキャップです。人気アイテムにつきお早めに。', 12000, 5, 'https://example.com/images/product13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('R4O5P6Q7-8A9B-0C1D-2E3F-4A5B6C7D8E9F', 'ヴィンテージ レザーブーツ', '味わい深いヴィンテージのレザーブーツです。サイズは25.5cm。', 15000, 2, 'https://example.com/images/product14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('S5P6Q7R8-9B0C-1D2E-3F4A-5B6C7D8E9F0G', 'Nike エアジョーダン1（中古）', 'ナイキのエアジョーダン1です。多少の使用感がありますが、ソールの減りは少なめです。', 20000, 2, 'https://example.com/images/product15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('1F5CB4CD-A25F-473D-B181-B5D5833395F0', '最新型スマートウォッチ', '心拍数や睡眠パターンをモニタリングできる最新のスマートウォッチです。防水機能付きで、アクティビティトラッカーも搭載。', 35000, 10, 'https://example.com/images/gadget1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('9ABD6CDC-C1F8-4EE3-9B79-AC028FBD4E28', 'ワイヤレスノイズキャンセリングヘッドホン', '高品質なサウンドとノイズキャンセリング機能を備えたワイヤレスヘッドホンです。長時間バッテリーで快適なリスニング体験を提供。', 28000, 15, 'https://example.com/images/gadget2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('51DF09A6-1967-436E-B42E-C695E6E2FFC2', 'ポータブルプロジェクター', 'コンパクトサイズながら高解像度の映像を投影できるポータブルプロジェクターです。HDMIやUSBなど多彩な接続に対応。', 45000, 5, 'https://example.com/images/gadget3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D668C44D-4C41-49D0-B722-2600319D40C8', 'スマートホーム用Wi-Fiルーター', '高速通信と広範囲カバーを実現するスマートホーム用Wi-Fiルーターです。セキュリティ機能も充実。', 15000, 20, 'https://example.com/images/gadget4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('8C56E99C-927A-4C39-B9E3-A07E05503B6B', 'USB-C対応ポータブルSSD 1TB', '高速データ転送が可能なUSB-C対応のポータブルSSDです。軽量・コンパクトで持ち運びに便利。', 20000, 25, 'https://example.com/images/gadget5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('663D9E4A-8DF8-4E3A-9778-E27D2BE7972A', 'ワイヤレス充電器', 'Qi規格対応のワイヤレス充電器です。スマートフォンやワイヤレスイヤホンの充電に最適。', 5000, 30, 'https://example.com/images/gadget6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('1986AE2D-9A5A-4662-9B49-B04C85F4F5D1', 'スマートスピーカー', '音声コマンドで操作できるスマートスピーカーです。音楽再生やスマートホームデバイスのコントロールが可能。', 12000, 18, 'https://example.com/images/gadget7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('380679DF-F5EC-4901-A693-0863294177A1', '4Kアクションカメラ', '防水性能と手ぶれ補正機能を備えた4K対応のアクションカメラです。アウトドアでの撮影に最適。', 25000, 12, 'https://example.com/images/gadget8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F87AA61B-B343-4949-AB14-DE0C0DF01408', 'Bluetooth対応キーボード', '薄型で持ち運びに便利なBluetooth対応のワイヤレスキーボードです。マルチデバイス対応。', 8000, 22, 'https://example.com/images/gadget9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('2EAD9B8D-5DE5-4EB8-9D1F-B71FBF9214D7', 'ゲーミングマウス', '高精度センサーとプログラマブルボタンを搭載したゲーミングマウスです。RGBライティング機能付き。', 7000, 15, 'https://example.com/images/gadget10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('8268640A-44BF-41A9-8EB4-6E5925F9A2CC', 'ノートパソコンスタンド', '角度調節可能なノートパソコンスタンドです。放熱性に優れ、長時間の作業を快適に。', 3000, 25, 'https://example.com/images/gadget11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('EA2E0766-F6A6-4848-AB96-59B9DFA8E474', 'スマートプラグ（2個セット）', '遠隔操作が可能なスマートプラグです。スマートフォンで家電のオン・オフをコントロール。', 4000, 18, 'https://example.com/images/gadget12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('62D79F39-653F-4867-9A7F-43A9851E1853', 'スマートウォッチ用充電スタンド', '多機能なスマートウォッチ用充電スタンドです。スマートフォンの同時充電も可能。', 6000, 20, 'https://example.com/images/gadget13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F07418F4-E4AC-446F-AED8-2B9D77ED8B70', 'VRゴーグル', '高解像度ディスプレイを搭載したVRゴーグルです。没入感のあるVR体験を提供。', 40000, 5, 'https://example.com/images/gadget14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('47C1F67C-A77E-4F7C-BFFF-DFD53F018B7D', 'スマート体組成計', 'Bluetooth接続でスマートフォンと連携できる体組成計です。体重や体脂肪率を測定。', 9000, 12, 'https://example.com/images/gadget15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('A1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R', '手作りいちごジャム', '朝食にぴったりな自家製のいちごジャムです。無添加で素材の味を生かしています。', 800, 20, 'https://example.com/images/food1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R', '手作りぶどうジャム', '朝食にぴったりな自家製のぶどうジャムです。無添加で素材の味を生かしています。', 800, 20, 'https://example.com/images/food1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R', '手作りなしジャム', '朝食にぴったりな自家製のなしジャムです。無添加で素材の味を生かしています。', 800, 20, 'https://example.com/images/food1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R', '手作りみかんジャム', '朝食にぴったりな自家製のみかんジャムです。無添加で素材の味を生かしています。', 800, 20, 'https://example.com/images/food1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B2D3F4G5-H6I7-8J9K-0L1M-2N3O4P5Q6R7S', '北海道産メロン', '北海道の広大な大地で育った甘みたっぷりのメロンです。贈答用にもおすすめ。', 3000, 15, 'https://example.com/images/food2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C3E4G5H6-I7J8-9K0L-1M2N-3O4P5Q6R7S8T', '手作りベーグルセット（5個入り）', '外はカリッと中はもちもちの手作りベーグルセットです。プレーン、チーズ、シナモンなど5種類の味。', 1500, 10, 'https://example.com/images/food3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D4F5H6I7-J8K9-0L1M-2N3O-4P5Q6R7S8T9U', '鹿児島産黒豚しゃぶしゃぶ用肉', '旨みが凝縮された鹿児島産の黒豚肉です。しゃぶしゃぶや鍋料理に最適。', 4000, 8, 'https://example.com/images/food4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E5G6I7J8-K9L0-1M2N-3O4P-5Q6R7S8T9U0V', '自家製ピクルス詰め合わせ', '季節の野菜を使った自家製ピクルスの詰め合わせです。食卓の彩りに。', 1200, 15, 'https://example.com/images/food5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F6H7J8K9-L0M1-2N3O-4P5Q-6R7S8T9U0V1W', '長野県産りんご（5kg）', '信州の自然が育んだ新鮮なりんごです。シャキシャキの食感と甘酸っぱい味わいが特徴。', 2500, 12, 'https://example.com/images/food6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('G7I8K9L0-M1N2-3O4P-5Q6R-7S8T9U0V1W2X', '手作りチーズケーキ', '濃厚でクリーミーな味わいの手作りチーズケーキです。ティータイムにぜひ。', 2000, 6, 'https://example.com/images/food7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H8J9L0M1-N2O3-4P5Q-6R7S-8T9U0V1W2X3Y', '沖縄産マンゴー', '南国の太陽を浴びて育ったジューシーな沖縄産マンゴーです。芳醇な香りと甘みが自慢。', 5000, 5, 'https://example.com/images/food8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('I9K0M1N2-O3P4-5Q6R-7S8T-9U0V1W2X3Y4Z', '自家焙煎コーヒー豆（200g）', '香り高い自家焙煎のコーヒー豆です。産地にこだわったブレンドをお楽しみください。', 1500, 20, 'https://example.com/images/food9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('J0L1N2O3-P4Q5-6R7S-8T9U-0V1W2X3Y4Z5A', '手作り味噌（1kg）', '国産大豆を使用した無添加の手作り味噌です。熟成された深い味わい。', 1000, 10, 'https://example.com/images/food10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('K1M2O3P4-Q5R6-7S8T-9U0V-1W2X3Y4Z5A6B', '京都産宇治抹茶セット', '上質な京都宇治抹茶のセットです。茶道のお稽古や贈り物に。', 3000, 7, 'https://example.com/images/food11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L2N3P4Q5-R6S7-8T9U-0V1W-2X3Y4Z5A6B7C', '手作りグラノーラ（500g）', 'オーガニック素材で作った手作りグラノーラです。朝食やおやつに。', 1800, 15, 'https://example.com/images/food12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('M3O4Q5R6-S7T8-9U0V-1W2X-3Y4Z5A6B7C8D', '宮崎産地鶏の炭火焼き', '宮崎の名物料理、地鶏の炭火焼きです。香ばしい風味とジューシーな肉質が特徴。', 2200, 8, 'https://example.com/images/food13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('N4P5R6S7-T8U9-0V1W-2X3Y-4Z5A6B7C8D9E', '手作り梅干し（500g）', '昔ながらの製法で漬けた手作りの梅干しです。程よい酸味がご飯によく合います。', 1200, 12, 'https://example.com/images/food14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('O5Q6S7T8-U9V0-1W2X-3Y4Z-5A6B7C8D9E0F', '信州そば（乾麺）', '長野県産のそば粉を使用した本格的な信州そばの乾麺です。つるっとした喉ごしが魅力。', 900, 25, 'https://example.com/images/food15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '軽量アルミ製テントポールセット', '持ち運びに便利な軽量アルミ製のテントポールセットです。高さ調節が可能で様々なテントに対応。', 4500, 20, 'https://example.com/images/camp1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B2C3D4E5-F6G7-8H9I-0J1K-L2M3N4O5P6Q7', 'キャンプ用折りたたみチェア', '座り心地抜群のキャンプ用折りたたみチェアです。耐荷重100kgで安心して使用できます。', 3200, 15, 'https://example.com/images/camp2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C3D4E5F6-G7H8-9I0J-1K2L-M3N4O5P6Q7R8', 'ダブルレイヤードームテント（4人用）', '通気性と耐水性に優れたダブルレイヤー構造のドームテントです。家族やグループキャンプに最適。', 18000, 8, 'https://example.com/images/camp3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D4E5F6G7-H8I9-0J1K-2L3M-N4O5P6Q7R8S9', 'ポータブルガスバーナー', 'コンパクトで持ち運びやすいポータブルガスバーナーです。アウトドアでの調理に便利。', 5500, 25, 'https://example.com/images/camp4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E5F6G7H8-I9J0-1K2L-3M4N-O5P6Q7R8S9T0', 'キャンプ用クッカーセット', '鍋やフライパンなどがセットになったキャンプ用クッカーセットです。軽量アルミ製で収納も簡単。', 6500, 18, 'https://example.com/images/camp5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F6G7H8I9-J0K1-2L3M-4N5O-P6Q7R8S9T0U1', '防水マッチと着火剤セット', '雨天時でも確実に火をつけられる防水マッチと着火剤のセットです。非常用にも。', 1200, 40, 'https://example.com/images/camp6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('G7H8I9J0-K1L2-3M4N-5O6P-Q7R8S9T0U1V2', 'LEDランタン（充電式）', '明るさ調節可能な充電式LEDランタンです。USBポート付きでスマホの充電も可能。', 3800, 30, 'https://example.com/images/camp7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', 'ハンモック（収納袋付き）', '耐荷重200kgの丈夫なハンモックです。収納袋付きで持ち運びも簡単。', 2700, 22, 'https://example.com/images/camp8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('I9J0K1L2-M3N4-5O6P-7Q8R-S9T0U1V2W3X4', 'キャンプ用寝袋（マミー型）', '保温性に優れたマミー型の寝袋です。快適温度は-5℃まで対応。', 8000, 12, 'https://example.com/images/camp9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('J0K1L2M3-N4O5-6P7Q-8R9S-T0U1V2W3X4Y5', '多機能ポケットナイフ', 'ナイフ、ハサミ、ドライバーなど10種類の機能を備えた多機能ポケットナイフです。', 2500, 35, 'https://example.com/images/camp10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', '折りたたみ式キャンプテーブル', '軽量アルミ製の折りたたみ式キャンプテーブルです。高さ調節が可能で便利。', 5200, 16, 'https://example.com/images/camp11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L2M3N4O5-P6Q7-8R9S-0T1U-V2W3X4Y5Z6A7', 'ソーラーチャージャー', '太陽光で充電可能なソーラーチャージャーです。USBポートで各種デバイスに対応。', 6800, 14, 'https://example.com/images/camp12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('M3N4O5P6-Q7R8-9S0T-1U2V-W3X4Y5Z6A7B8', 'ウォータータンク（20L）', '折りたたみ可能な20L容量のウォータータンクです。コック付きで水の出し入れが簡単。', 1800, 28, 'https://example.com/images/camp13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', 'アウトドアクッキンググリル', '持ち運びに便利な折りたたみ式のアウトドアクッキンググリルです。バーベキューに最適。', 7500, 10, 'https://example.com/images/camp14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', 'コンパス付き腕時計', '高度計や気圧計も搭載したコンパス付きのアウトドア腕時計です。防水性能も備えています。', 12000, 8, 'https://example.com/images/camp15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('A1B2C3D4-E5F6-7G8H-9I0D-K1L2M3N4O5P6', 'ポケモンカードゲーム ソード＆シールド「ピカチュウV」', 'ポケモンカードゲームの人気キャラクター、ピカチュウVのプロモーションカードです。コレクションにぜひ。', 1500, 20, 'https://example.com/images/card1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('B2C3D4E5-F6G7-8H9I-0J4K-L2M3N4O5P6Q7', '遊戯王 レアカード「ブラック・マジシャン」', '遊戯王の初期から人気の高いブラック・マジシャンのレアカードです。状態は美品。', 5000, 5, 'https://example.com/images/card2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('C3D4E5F6-G7H8-9K0J-1K2L-M3N4O5P6Q7R8', 'デュエル・マスターズ「ボルシャック・ドラゴン」', 'デュエル・マスターズの代表的なカード、ボルシャック・ドラゴンです。デッキ強化に。', 800, 15, 'https://example.com/images/card3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('D4E5F6G7-H8I9-0J1K-2L3M-N4O5D6Q7R8S9', 'マジック：ザ・ギャザリング「黒蓮の花」', 'マジック：ザ・ギャザリングの希少カード、黒蓮の花です。コレクター必見。', 200000, 1, 'https://example.com/images/card4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('E5F6G7L8-I9J0-1K2L-3M4N-O5P6Q7R8S9T0', 'ヴァンガード「ドラゴニック・オーバーロード」', 'カードファイト!! ヴァンガードの人気ユニット、ドラゴニック・オーバーロードのカードです。', 1200, 10, 'https://example.com/images/card5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('F6G7H8I9-J0N1-2L3M-4N5O-P6Q7R8S9T0U1', 'デジモンカードゲーム「ウォーグレイモン」', 'デジモンカードゲームからウォーグレイモンのスーパーレアカードです。', 1000, 12, 'https://example.com/images/card6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('G7H8I9J0-K1A2-3M4N-5O6P-Q7R8S9T0U1V2', 'バトルスピリッツ「創界神ネクサス」', 'バトルスピリッツの重要カード、創界神ネクサスです。デッキ構築にどうぞ。', 700, 18, 'https://example.com/images/card7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H8I9J0K1-L2I3-4N5O-6P7Q-R8S9T0U1V2W3', 'ワンピースカードゲーム「モンキー・D・ルフィ」', 'ワンピースカードゲームの主人公、ルフィのカードです。ファン必見。', 900, 20, 'https://example.com/images/card8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('I9J0K1L2-M3N4-5O6O-7Q8R-S9T0U1V2W3X4', 'ドラゴンボールヒーローズ「孫悟空：超サイヤ人ブルー」', 'ドラゴンボールヒーローズの高レアリティカードです。コレクションに最適。', 2500, 8, 'https://example.com/images/card9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('J0K1L2M3-N4O5-6C7Q-8R9S-T0U1V2W3X4Y5', 'シャドウバース エボルヴ「ダークドラグーン・フォルテ」', 'シャドウバース エボルヴの人気カード、ダークドラグーン・フォルテです。', 1100, 16, 'https://example.com/images/card10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('K1L2M3N4-O5P6-7N8R-9S0T-U1V2W3X4Y5Z6', 'ポケモンカードゲーム「リザードンVMAX」', 'ポケモンカードゲームの強力なカード、リザードンVMAXです。デッキ強化におすすめ。', 3000, 7, 'https://example.com/images/card11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L2M3N4O5-P6Q0-8R9S-0T1U-V2W3X4Y5Z6A7', '遊戯王「青眼の白龍（ブルーアイズ・ホワイト・ドラゴン）」', '遊戯王の象徴的なカード、青眼の白龍です。美品ですのでコレクションに。', 4500, 4, 'https://example.com/images/card12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('M3N4O5P6-Q7R8-9S1T-1U2V-W3X4Y5Z6A7B8', 'マジック：ザ・ギャザリング「精神を刻む者、ジェイス」', '強力なプレインズウォーカー、ジェイスのカードです。デッキ戦略の幅が広がります。', 6000, 5, 'https://example.com/images/card13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('N4O5P6Q7-R8S9-0T1U-2V4W-X4Y5Z6A7B8C9', 'ヴァイスシュヴァルツ「初音ミク“ボーカロイド”」', 'ヴァイスシュヴァルツの人気キャラクター、初音ミクのカードです。ファン必見。', 1300, 9, 'https://example.com/images/card14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('O5P6Q7R8-S9T0-1U0V-3W4X-Y5Z6A7B8C9D0', 'デュエル・マスターズ「鬼丸「覇」」', 'デュエル・マスターズの強力クリーチャー、鬼丸「覇」のカードです。', 950, 11, 'https://example.com/images/card15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', '北欧家具の店 ノルディックハウス', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '北欧デザインの家具を専門に取り扱っています。シンプルで機能的な家具で暮らしを豊かに。', 'https://example.com/images/shop1.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('G2B3C4D5-E6F7-8A9B-0C1D-E2F3A4B5C6D7', 'アンティーク家具 ギャラリー', 'D4E5F6G7-H8I9-0J1K-2L3M-N4O5P6Q7R8S9', '世界各地から集めたアンティーク家具を販売しています。歴史と共に歩んだ家具たちの魅力をご堪能ください。', 'https://example.com/images/shop2.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('H3C4D5E6-F7A8-9B0C-1D2E-F3A4B5C6D7E8', '手作り木工家具 工房ウッドクラフト', 'H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', '職人が一つ一つ手作りした木工家具を提供しております。オーダーメイドも承ります。', 'https://example.com/images/shop3.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('I4D5E6F7-A8B9-0C1D-2E3F-4A5B6C7D8E9F', 'モダンデザイン家具 セレクトショップ', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', '最新のモダンデザイン家具を取り揃えています。お部屋のコーディネートもご相談ください。', 'https://example.com/images/shop4.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('J5E6F7G8-B9C0-1D2E-3F4A-5B6C7D8E9F0A', '中古家具のリサイクルショップ', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', '高品質な中古家具をリーズナブルな価格で提供しています。エコでお得なお買い物を。', 'https://example.com/images/shop5.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('K6F7G8H9-C0D1-2E3F-4A5B-6C7D8E9F0A1B', 'ヴィンテージ古着店 オールドクロージング', 'F6G7H8I9-J0K1-2L3M-4N5O-P6Q7R8S9T0U1', '世界中から集めたヴィンテージ古着を販売しています。一点物の魅力をお楽しみください。', 'https://example.com/images/shop6.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'ブランドセレクトショップ ラグジュアリー', 'D4E5F6G7-H8I9-0J1K-2L3M-N4O5P6Q7R8S9', '最新のハイブランドファッションを取り扱っています。洗練されたスタイルをあなたに。', 'https://example.com/images/shop7.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('M8H9I0J1-E2F3-4A5B-6C7D-8E9F0A1B2C3D', '手作りニットのお店 ぬくもり', 'N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', 'ハンドメイドのニット製品を販売しています。心を込めて編んだ温かみのある商品をどうぞ。', 'https://example.com/images/shop8.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('N9I0J1K2-F3A4-5B6C-7D8E-9F0A1B2C3D4E', 'ストリートファッション専門店 アーバンスタイル', 'H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', '最新のストリートファッションアイテムを取り揃えています。個性を表現したいあなたに。', 'https://example.com/images/shop9.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('O0J1K2L3-A4B5-6C7D-8E9F-0A1B2C3D4E5F', '着物専門店 和のこころ', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', '伝統的な着物からモダンなデザインまで、多彩な着物を取り扱っています。レンタルも可能です。', 'https://example.com/images/shop10.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '最新ガジェット専門店 テックワールド', 'N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', '最新のITガジェットを豊富に取り揃えています。新しいテクノロジーを体験してください。', 'https://example.com/images/shop11.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('Q2L3M4N5-C6D7-8E9F-0A1B-2C3D4E5F6G7H', '中古スマホショップ リユースモバイル', 'F6G7H8I9-J0K1-2L3M-4N5O-P6Q7R8S9T0U1', '高品質な中古スマートフォンやタブレットをお得な価格で提供しています。', 'https://example.com/images/shop12.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', 'スマートホーム専門店 ホームテック', 'H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', 'スマートホーム関連のガジェットを専門に扱っています。暮らしをより便利に。', 'https://example.com/images/shop13.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('S4N5O6P7-E8F9-0A1B-2C3D-4E5F6G7H8I9J', 'ガジェットアクセサリー店 ガジェットプラス', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', 'スマホケースや充電器など、ガジェットのアクセサリーを豊富に取り揃えています。', 'https://example.com/images/shop14.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('T5O6P7Q8-F9G0-1A2B-3C4D-5E6F7G8H9I0J', 'ドローン専門店 スカイビュー', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', '最新のドローンや関連アクセサリーを販売しています。空撮を始めたい方におすすめ。', 'https://example.com/images/shop15.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('U6P7Q8R9-G0H1-2A3B-4C5D-6E7F8G9H0I1J', '手作りジャムのお店 フルーツガーデン', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', '季節の果物を使った手作りジャムを販売しています。無添加で安心・安全。', 'https://example.com/images/shop16.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('V7Q8R9S0-H1I2-3B4C-5D6E-7F8G9H0I1J2K', 'ご当地グルメ市場 全国うまいもの便', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', '全国各地の美味しい食べ物を集めたオンライン市場です。お取り寄せで旅行気分を。', 'https://example.com/images/shop17.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('W8R9S0T1-I2J3-4C5D-6E7F-8G9H0I1J2K3L', 'オーガニック食品店 ナチュラルキッチン', 'N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', '有機栽培の野菜や果物、無添加食品を取り扱っています。健康志向の方に。', 'https://example.com/images/shop18.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('X9S0T1U2-J3K4-5D6E-7F8G-9H0I1J2K3L4M', '自家焙煎コーヒー豆専門店 コーヒーロースター', 'N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', '自家焙煎の新鮮なコーヒー豆を販売しています。こだわりの一杯をお届け。', 'https://example.com/images/shop19.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('Y0T1U2V3-K4L5-6E7F-8G9H-0I1J2K3L4M5N', 'スイーツ専門店 パティスリー・デライト', 'H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', '季節の素材を使ったスイーツをお届けします。特別な日の贈り物に最適。', 'https://example.com/images/shop20.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'アウトドア専門店 ワイルドギア', 'F6G7H8I9-J0K1-2L3M-4N5O-P6Q7R8S9T0U1', 'キャンプ用品から登山用品まで幅広く取り扱っています。アウトドアライフをサポート。', 'https://example.com/images/shop21.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('A2V3W4X5-M6N7-8G9H-0I1J-2K3L4M5N6O7P', 'キャンプ初心者応援店 スタートキャンプ', 'N4O5P6Q7-R8S9-0T1U-2V3W-X4Y5Z6A7B8C9', 'これからキャンプを始める方におすすめのアイテムを揃えています。セット商品もあり。', 'https://example.com/images/shop22.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('B3W4X5Y6-N7O8-9H0I-1J2K-3L4M5N6O7P8Q', '焚き火専門店 ファイヤーサイド', 'C3D4E5F6-G7H8-9I0J-1K2L-M3N4O5P6Q7R8', '焚き火台や薪、アクセサリーなど、焚き火に特化したアイテムを販売しています。', 'https://example.com/images/shop23.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('C4X5Y6Z7-O8P9-0I1J-2K3L-4M5N6O7P8Q9R', 'アウトドアウェア店 マウンテンウェア', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', '機能性とデザイン性を兼ね備えたアウトドアウェアを提供しています。', 'https://example.com/images/shop24.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('D5Y6Z7A8-P9Q0-1J2K-3L4M-5N6O7P8Q9R0S', '中古キャンプ用品店 リサイクルキャンプ', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', '使用済みのキャンプ用品をリユース販売しています。お得にキャンプを楽しみたい方に。', 'https://example.com/images/shop25.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'カード専門店 トレカワールド', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0', 'ポケモンカードや遊戯王など、各種トレーディングカードを豊富に取り揃えています。', 'https://example.com/images/shop26.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');
# ('F7A8B9C0-R1S2-3L4M-5N6O-7P8Q9R0S1T2U', 'レアカードショップ コレクターズ', 'C3D4E5F6-G7H8-9I0J-1K2L-M3N4O5P6Q7R8', '希少なレアカードや限定版を専門に扱っています。コレクター必見のお店です。', 'https://example.com/images/shop27.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('G8B9C0D1-S2T3-4M5N-6O7P-8Q9R0S1T2U3V', 'デュエルスペース デュエマート', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6', 'トレーディングカードの販売だけでなく、対戦スペースも提供しています。イベントも多数開催。', 'https://example.com/images/shop28.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('H9C0D1E2-T3U4-5N6O-7P8Q-9R0S1T2U3V4W', '海外トレカ専門店 インターナショナルカード', 'H8I9J0K1-L2M3-4N5O-6P7Q-R8S9T0U1V2W3', '海外のトレーディングカードを専門に取り扱っています。日本未発売品も多数。', 'https://example.com/images/shop29.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
# ('I0D1E2F3-U4V5-6O7P-8Q9R-0S1T2U3V4W5X', 'トレカ買取店 カードバイヤー', 'B2C3D4E5-F6G7-8H9I-0J1K-L2M3N4O5P6Q7', '不要になったトレーディングカードの買取を行っています。高価買取実施中。', 'https://example.com/images/shop30.jpg', '2024-09-26 13:34:32', '2024-09-26 13:34:32');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('10465C52-E6B1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'D1A7B3C2-4E5F-6A7B-8C9D-0E1F2A3B4C5D'),
('10465C52-E6N1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'E2B8C4D3-5F6A-7B8C-9D0E-1F2A3B4C5D6E'),
('10465C52-E6C1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'A4D0E6F5-7B8C-9D0E-1F2A-3B4C5D6E7F8A'),
('10465C12-E6D1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'B1E7F3A2-4C5D-6E7F-8A9B-0C1D2E3F4A5B'),
('10465C52-E6E1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'D3A9B5C4-6E7F-8A9B-0C1D-2E3F4A5B6C7D'),
('10465C52-E6B0-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'E4B0C6D5-7F8A-9B0C-1D2E-3F4A5B6C7D8E'),
('10465C52-E6G1-41CF-A514-75F51789EAE', 'F1A2B3C4-D5E6-7F8A-9B0C-D1E2F3A4B5C6', 'B5E1F7A6-8C9D-0E1F-2A3B-4C5D6E7F8A9B');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('C28C466F-25DB-4AAD-B388-ECE72234A867', 'H3C4D5E6-F7A8-9B0C-1D2E-F3A4B5C6D7E8', 'C6F2A8B7-9D0E-1F2A-3B4C-5D6E7F8A9B0C'),
('C28C466F-25EB-4AAD-B388-ECE72234A867', 'H3C4D5E6-F7A8-9B0C-1D2E-F3A4B5C6D7E8', 'D1A7B3C2-4E5F-6A7B-8C9D-0E1F2A3B4C5D'),
('C28C466F-25FB-4AAD-B388-ECE72234A867', 'H3C4D5E6-F7A8-9B0C-1D2E-F3A4B5C6D7E8', 'B1E7F3A2-4C5D-6E7F-8A9B-0C1D2E3F4A5B'),
('C28C466F-25GB-4AAD-B388-ECE72234A867', 'H3C4D5E6-F7A8-9B0C-1D2E-F3A4B5C6D7E8', 'D3A9B5C4-6E7F-8A9B-0C1D-2E3F4A5B6C7D');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('D28C466F-25DB-4AAD-B388-ECE72234A867', 'K6F7G8H9-C0D1-2E3F-4A5B-6C7D8E9F0A1B', 'E1B2C3D4-5F6A-7B8C-9D0E-1F2A3B4C5D6E'),
('D28C466F-25EB-4AAD-B388-ECE72234A867', 'K6F7G8H9-C0D1-2E3F-4A5B-6C7D8E9F0A1B', 'G3D4E5F6-7B8C-9D0E-1F2A-3B4C5D6E7F8A'),
('D28C466F-25FB-4AAD-B388-ECE72234A867', 'K6F7G8H9-C0D1-2E3F-4A5B-6C7D8E9F0A1B', 'J6G7H8I9-0E1F-2A3B-4C5D-6E7F8A9B0C1D'),
('D28C466F-25GB-4AAD-B388-ECE72234A867', 'K6F7G8H9-C0D1-2E3F-4A5B-6C7D8E9F0A1B', 'R4O5P6Q7-8A9B-0C1D-2E3F-4A5B6C7D8E9F');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('E28C466F-25DB-4AAD-B388-ECE72234A867', 'L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'F2C3D4E5-6A7B-8C9D-0E1F-2A3B4C5D6E7F'),
('E28C466F-25EB-4AAD-B388-ECE72234A867', 'L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'I5F6G7H8-9D0E-1F2A-3B4C-5D6E7F8A9B0C'),
('E28C466F-25FB-4AAD-B388-ECE72234A867', 'L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'P2M3N4O5-6E7F-8A9B-0C1D-2E3F4A5B6C7D'),
('E28C466F-25GB-4AAD-B388-ECE72234A867', 'L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'N0K1L2M3-4C5D-6E7F-8A9B-0C1D2E3F4A5B'),
('E28C466F-25GB-4AAD-B388-ECE72234A867', 'L7G8H9I0-D1E2-3F4A-5B6C-7D8E9F0A1B2C', 'Q3N4O5P6-7F8A-9B0C-1D2E-3F4A5B6C7D8E');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('F28C466F-25DB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '1F5CB4CD-A25F-473D-B181-B5D5833395F0'),
('F28C466F-25EB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '51DF09A6-1967-436E-B42E-C695E6E2FFC2'),
('F28C466F-25FB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '8C56E99C-927A-4C39-B9E3-A07E05503B6B'),
('F28C466F-25GB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '380679DF-F5EC-4901-A693-0863294177A1'),
('F28C466F-25GB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', 'F07418F4-E4AC-446F-AED8-2B9D77ED8B70'),
('F28C466F-25GB-4AAD-B388-ECE72234A867', 'P1K2L3M4-B5C6-7D8E-9F0A-1B2C3D4E5F6G', '47C1F67C-A77E-4F7C-BFFF-DFD53F018B7D');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('G28C466F-25DB-4AAD-B388-ECE72234A867', 'R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', 'D668C44D-4C41-49D0-B722-2600319D40C8'),
('G28C466F-25EB-4AAD-B388-ECE72234A867', 'R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', '1986AE2D-9A5A-4662-9B49-B04C85F4F5D1'),
('G28C466F-25FB-4AAD-B388-ECE72234A867', 'R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', 'EA2E0766-F6A6-4848-AB96-59B9DFA8E474'),
('G28C466F-25GB-4AAD-B388-ECE72234A867', 'R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', 'F07418F4-E4AC-446F-AED8-2B9D77ED8B70'),
('G28C466F-25GB-4AAD-B388-ECE72234A867', 'R3M4N5O6-D7E8-9F0A-1B2C-3D4E5F6G7H8I', '47C1F67C-A77E-4F7C-BFFF-DFD53F018B7D');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('H28C466F-25DB-4AAD-B388-ECE72234A867', 'U6P7Q8R9-G0H1-2A3B-4C5D-6E7F8G9H0I1J', 'A1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R'),
('H28C466F-25EB-4AAD-B388-ECE72234A867', 'U6P7Q8R9-G0H1-2A3B-4C5D-6E7F8G9H0I1J', 'B1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R'),
('H28C466F-25FB-4AAD-B388-ECE72234A867', 'U6P7Q8R9-G0H1-2A3B-4C5D-6E7F8G9H0I1J', 'C1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R'),
('H28C466F-25GB-4AAD-B388-ECE72234A867', 'U6P7Q8R9-G0H1-2A3B-4C5D-6E7F8G9H0I1J', 'D1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('I28C466F-25DB-4AAD-B388-ECE72234A867', 'W8R9S0T1-I2J3-4C5D-6E7F-8G9H0I1J2K3L', 'C3E4G5H6-I7J8-9K0L-1M2N-3O4P5Q6R7S8T'),
('I28C466F-25EB-4AAD-B388-ECE72234A867', 'W8R9S0T1-I2J3-4C5D-6E7F-8G9H0I1J2K3L', 'E5G6I7J8-K9L0-1M2N-3O4P-5Q6R7S8T9U0V'),
('I28C466F-25FB-4AAD-B388-ECE72234A867', 'W8R9S0T1-I2J3-4C5D-6E7F-8G9H0I1J2K3L', 'L2N3P4Q5-R6S7-8T9U-0V1W-2X3Y4Z5A6B7C'),
('I28C466F-25GB-4AAD-B388-ECE72234A867', 'W8R9S0T1-I2J3-4C5D-6E7F-8G9H0I1J2K3L', 'N4P5R6S7-T8U9-0V1W-2X3Y-4Z5A6B7C8D9E');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('J28C466F-25DB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6'),
('J28C466F-25EB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'B2C3D4E5-F6G7-8H9I-0J1K-L2M3N4O5P6Q7'),
('J28C466F-25FB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'E5F6G7H8-I9J0-1K2L-3M4N-O5P6Q7R8S9T0'),
('J28C466F-25GB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'K1L2M3N4-O5P6-7Q8R-9S0T-U1V2W3X4Y5Z6'),
('J28C466F-25GB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'M3N4O5P6-Q7R8-9S0T-1U2V-W3X4Y5Z6A7B8'),
('J28C466F-25GB-4AAD-B388-ECE72234A867', 'Z1U2V3W4-L5M6-7F8G-9H0I-1J2K3L4M5N6O', 'O5P6Q7R8-S9T0-1U2V-3W4X-Y5Z6A7B8C9D0');

INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('K28C466F-25DB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'A1B2C3D4-E5F6-7G8H-9I0D-K1L2M3N4O5P6'),
('K28C466F-25EB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'B2C3D4E5-F6G7-8H9I-0J4K-L2M3N4O5P6Q7'),
('K28C466F-25FB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'E5F6G7L8-I9J0-1K2L-3M4N-O5P6Q7R8S9T0'),
('K28C466F-25GB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'F6G7H8I9-J0N1-2L3M-4N5O-P6Q7R8S9T0U1'),
('K28C466F-25GB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'J0K1L2M3-N4O5-6C7Q-8R9S-T0U1V2W3X4Y5'),
('K28C466F-25GB-4AAD-B388-ECE72234A867', 'E6Z7A8B9-Q0R1-2K3L-4M5N-6O7P8Q9R0S1T', 'M3N4O5P6-Q7R8-9S1T-1U2V-W3X4Y5Z6A7B8');

INSERT INTO `purchase_history` (`id`, `user_id`, `product_id`, `quantity`, `price_at_purchase`, `purchase_date`, `created_at`) VALUES
# 服系
('5CBBAB2B-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'M9J0K1L2-3B4C-5D6E-7F8A-9B0C1D2E3F4A', 1, 3000, '2024-09-26 13:34:32', '2024-09-26 13:34:32'),
('5CBBAB2C-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'N0K1L2M3-4C5D-6E7F-8A9B-0C1D2E3F4A5B', 1, 3000, '2024-09-27 13:34:32', '2024-09-27 13:34:32'),
('5CBBAB2D-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'O1L2M3N4-5D6E-7F8A-9B0C-1D2E3F4A5B6C', 1, 3000, '2024-09-28 13:34:32', '2024-09-28 13:34:32'),
('5CBBAB2E-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'P2M3N4O5-6E7F-8A9B-0C1D-2E3F4A5B6C7D', 1, 3000, '2024-09-29 13:34:32', '2024-09-29 13:34:32'),
('5CBBAB2F-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'S5P6Q7R8-9B0C-1D2E-3F4A-5B6C7D8E9F0G', 1, 3000, '2024-09-30 13:34:32', '2024-09-30 13:34:32'),
('5CBBAB2G-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'E1B2C3D4-5F6A-7B8C-9D0E-1F2A3B4C5D6E', 1, 3000, '2024-08-26 13:34:32', '2024-08-26 13:34:32'),

# ガジェット
('5CBBAB2H-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '8C56E99C-927A-4C39-B9E3-A07E05503B6B', 1, 3000, '2024-01-26 13:34:32', '2024-01-26 13:34:32'),
('5CBBAB2I-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '380679DF-F5EC-4901-A693-0863294177A1', 1, 3000, '2024-02-26 13:34:32', '2024-02-26 13:34:32'),
('5CBBAB2J-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '2EAD9B8D-5DE5-4EB8-9D1F-B71FBF9214D7', 1, 3000, '2024-03-26 13:34:32', '2024-03-26 13:34:32'),
('5CBBAB2K-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', '8268640A-44BF-41A9-8EB4-6E5925F9A2CC', 1, 3000, '2024-04-26 13:34:32', '2024-04-26 13:34:32'),
('5CBBAB2L-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'EA2E0766-F6A6-4848-AB96-59B9DFA8E474', 1, 3000, '2024-05-26 13:34:32', '2024-05-26 13:34:32'),

# その他
('5CBBAB2M-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'A1C2E3F4-G5H6-7I8J-9K0L-1M2N3O4P5Q6R', 1, 3000, '2024-05-26 13:34:32', '2024-05-26 13:34:32'),
('5CBBAB2N-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'C3D4E5F6-G7H8-9I0J-1K2L-M3N4O5P6Q7R8', 1, 3000, '2024-05-26 13:34:32', '2024-05-26 13:34:32'),
('5CBBAB2O-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'F6G7H8I9-J0N1-2L3M-4N5O-P6Q7R8S9T0U1', 1, 3000, '2024-05-26 13:34:32', '2024-05-26 13:34:32'),
('5CBBAB2P-0321-4B31-9414-10DA070CB4FE', 'A1B2C3D4-E5F6-7G8H-9I0J-K1L2M3N4O5P6', 'J0K1L2M3-N4O5-6P7Q-8R9S-T0U1V2W3X4Y5', 1, 3000, '2024-05-26 13:34:32', '2024-05-26 13:34:32');
=======
-- Insert statements for 'users' table
INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `created_at`, `updated_at`) VALUES
('d4927563-9f39-47c6-adca-d6115e4bbd23', 'User1', 'user1@example.com', 'hash1', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('d5945139-614d-4c77-bea6-7484e42a16f0', 'User2', 'user2@example.com', 'hash2', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('8e32b645-7dbe-4503-bbcc-8336a67c881f', 'User3', 'user3@example.com', 'hash3', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'User4', 'user4@example.com', 'hash4', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'User5', 'user5@example.com', 'hash5', '2024-09-01 17:43:31', '2024-09-01 17:43:31');

-- Insert statements for 'shops' table
INSERT INTO `shops` (`id`, `name`, `owner_id`, `description`, `header_image_url`, `created_at`, `updated_at`) VALUES
('78d80129-da5c-449b-9961-146a04b889ca', 'Shop1', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop1', 'http://example.com/shop1.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('bcdacc84-e1f2-4f5d-a819-794ae2c66bd6', 'Shop2', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop2', 'http://example.com/shop2.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('b7baf464-9861-4478-a887-3dfd66d8c623', 'Shop3', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop3', 'http://example.com/shop3.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('facfd6dd-3188-4f57-aae0-cb9f3d9e0b26', 'Shop4', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop4', 'http://example.com/shop4.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('a85fd41c-8195-4d6a-9d4b-f6cb9fd2a629', 'Shop5', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop5', 'http://example.com/shop5.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('c5716074-fcd6-42d9-8371-85d5bd1a1fd0', 'Shop6', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop6', 'http://example.com/shop6.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('55bde91d-1d49-4110-b181-8f2416c0b9ee', 'Shop7', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop7', 'http://example.com/shop7.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('2da6312e-3bc3-44c4-8e58-d343c173ee5c', 'Shop8', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop8', 'http://example.com/shop8.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('ba99abc0-c05f-4ef5-a07f-b0454cb14844', 'Shop9', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop9', 'http://example.com/shop9.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('1cc2fbf0-ba91-4e50-8f38-dbadf1c974b8', 'Shop10', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop10', 'http://example.com/shop10.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('7768a2ad-15e6-406d-af26-5b7aeba39004', 'Shop11', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop11', 'http://example.com/shop11.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('7253cfe2-4283-4de2-a1fc-cefb59ab21a3', 'Shop12', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop12', 'http://example.com/shop12.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('01e2e1a5-e4e0-43e0-ae5e-4b09f56bb289', 'Shop13', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop13', 'http://example.com/shop13.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('5e6d0600-53d0-48de-a48b-26db81f816d7', 'Shop14', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop14', 'http://example.com/shop14.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('9134bedc-8519-4465-9073-339e6eb2e06c', 'Shop15', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop15', 'http://example.com/shop15.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('fe7d1fcf-43f3-4ec3-8bbe-7367c2d12639', 'Shop16', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop16', 'http://example.com/shop16.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('90e045b2-1136-41ed-ad44-f3ef28c36006', 'Shop17', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop17', 'http://example.com/shop17.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('f03c5a0d-2615-4237-aae0-fe60d1b6c010', 'Shop18', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop18', 'http://example.com/shop18.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('911033d0-1ee7-45b4-b088-d0de037358c2', 'Shop19', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop19', 'http://example.com/shop19.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('29d904dc-bb05-4e0d-9d56-27df7ac0c3fe', 'Shop20', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop20', 'http://example.com/shop20.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('8f707603-d009-4fda-87ff-d3cfb5c59634', 'Shop21', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop21', 'http://example.com/shop21.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('3d711c9b-4c61-468b-8827-9e17df44f830', 'Shop22', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop22', 'http://example.com/shop22.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('a7fde2a8-f1e3-44ad-b7df-42eee4e5bb8c', 'Shop23', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop23', 'http://example.com/shop23.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('a19ef9be-ea3e-4715-b9dc-b51c2dfe0c2e', 'Shop24', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop24', 'http://example.com/shop24.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('28866160-2546-4d46-ba0c-5e79fd21d32d', 'Shop25', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop25', 'http://example.com/shop25.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('fe37d8a3-5ac2-41f1-8a73-1537a48b5bfe', 'Shop26', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop26', 'http://example.com/shop26.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('f2413958-71d5-4cee-a9ce-40764329d948', 'Shop27', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop27', 'http://example.com/shop27.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('623d5dc5-c7ce-416f-bf4f-80faf2f6dada', 'Shop28', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop28', 'http://example.com/shop28.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('f8fed16c-dacf-4948-bc5a-fb75a9a61d8a', 'Shop29', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop29', 'http://example.com/shop29.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('08499f58-abd9-4dab-b359-1c6e7aee2d3f', 'Shop30', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop30', 'http://example.com/shop30.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('f322f0c4-1127-41e9-86de-76910a74aae2', 'Shop31', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop31', 'http://example.com/shop31.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('da5218d9-12eb-4a83-adfa-21f842ef383a', 'Shop32', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop32', 'http://example.com/shop32.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('24a3956d-0714-4f1d-a866-f90fd1051691', 'Shop33', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop33', 'http://example.com/shop33.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('f87ab5dd-a37a-4197-8c6e-13b3c602b940', 'Shop34', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop34', 'http://example.com/shop34.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('1ffda997-d5c6-444e-be78-fc1069eb47bf', 'Shop35', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop35', 'http://example.com/shop35.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('643b4e6f-3194-48b1-8cbe-86327632d586', 'Shop36', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop36', 'http://example.com/shop36.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('9faf2dd6-a94c-41db-8d3e-5b9d98c912dc', 'Shop37', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop37', 'http://example.com/shop37.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('8e220746-54d1-41ac-a697-df8a99265aae', 'Shop38', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop38', 'http://example.com/shop38.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('722996be-a90e-4838-a21d-b503805d364f', 'Shop39', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'Description of Shop39', 'http://example.com/shop39.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('49121688-0445-4bd7-83c7-14684589a816', 'Shop40', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop40', 'http://example.com/shop40.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('075fd6b2-0433-4538-b396-3d58cbc69eba', 'Shop41', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop41', 'http://example.com/shop41.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('d98086ef-eec6-424c-b74d-f08fa2482344', 'Shop42', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop42', 'http://example.com/shop42.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('f4f1afb0-3df5-444a-8a1f-6e35f5f4e662', 'Shop43', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop43', 'http://example.com/shop43.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('be2dc4c6-a318-4918-a9a7-b7bc1b9aa0e1', 'Shop44', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop44', 'http://example.com/shop44.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('07ff3c01-f137-420a-a45f-83f0147a9fc4', 'Shop45', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'Description of Shop45', 'http://example.com/shop45.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('5e9b172c-e016-4ac8-a19f-2f86ed6f5e39', 'Shop46', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'Description of Shop46', 'http://example.com/shop46.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('c4f5f6e0-377a-454c-8fc3-6bef661c2cf0', 'Shop47', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop47', 'http://example.com/shop47.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('71f1643b-10bd-4d6e-bd2c-96736f8a1061', 'Shop48', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop48', 'http://example.com/shop48.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('54b71781-efef-43ad-bf20-ee896484be1e', 'Shop49', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'Description of Shop49', 'http://example.com/shop49.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('193d49bd-9371-43c9-b15d-fcee09e857f7', 'Shop50', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'Description of Shop50', 'http://example.com/shop50.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31');

-- Insert statements for 'products' table
INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image_url`, `created_at`, `updated_at`) VALUES
('08ad6b36-3e5d-49ad-9d1f-bd2112a6bcd1', 'Product1', 'Description of Product1', 29.5, 153, 'http://example.com/product1.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('fced144b-aca7-4c95-ad4f-50b86b7edf67', 'Product2', 'Description of Product2', 65.28, 426, 'http://example.com/product2.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('24dc478b-7e2a-4963-9a8d-1a1fd706cdea', 'Product3', 'Description of Product3', 92.19, 25, 'http://example.com/product3.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('9d85edbc-6bd0-47cd-bead-9d0cea202f59', 'Product4', 'Description of Product4', 16.93, 165, 'http://example.com/product4.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('6e06c6b3-16bd-41ea-b6c4-e305d41d727f', 'Product5', 'Description of Product5', 54.16, 366, 'http://example.com/product5.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('1849a1ff-93bd-46ce-b6ff-0c331cdda594', 'Product6', 'Description of Product6', 46.13, 483, 'http://example.com/product6.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('81ca4362-02d3-4392-9855-0587ade44e01', 'Product7', 'Description of Product7', 42.68, 151, 'http://example.com/product7.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('ea658884-fa18-4dbf-a033-1f193565c7ca', 'Product8', 'Description of Product8', 98.02, 91, 'http://example.com/product8.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('97d27e91-4216-41b9-88da-bf12a4561b4a', 'Product9', 'Description of Product9', 46.76, 132, 'http://example.com/product9.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('ca723b20-fe19-4230-9b4e-02cd1d02aeab', 'Product10', 'Description of Product10', 19.51, 158, 'http://example.com/product10.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('4988b278-afea-4cda-930f-818de7cc137c', 'Product11', 'Description of Product11', 80.65, 372, 'http://example.com/product11.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('d50807b7-4a5b-475d-a098-1edc305b2f23', 'Product12', 'Description of Product12', 74.15, 394, 'http://example.com/product12.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('9d884ea3-8c6f-4887-9898-ce36af4d8110', 'Product13', 'Description of Product13', 42.04, 388, 'http://example.com/product13.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('6e34b22d-f4b9-4bc8-9e84-3e3de447351f', 'Product14', 'Description of Product14', 18.54, 115, 'http://example.com/product14.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('57fc2fc9-d73e-4df0-b7b1-321d23b23684', 'Product15', 'Description of Product15', 14.27, 340, 'http://example.com/product15.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('c4aa7248-600b-468d-8d8e-a47a74f434bd', 'Product16', 'Description of Product16', 50.16, 227, 'http://example.com/product16.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('d07c057b-baba-4dba-8be9-fd06942aeb70', 'Product17', 'Description of Product17', 42.91, 121, 'http://example.com/product17.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('9daee0e9-cb85-4409-a69c-44632d175453', 'Product18', 'Description of Product18', 22.84, 491, 'http://example.com/product18.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('bfad5fa8-f12f-45c8-8f7a-83208eb92cd7', 'Product19', 'Description of Product19', 90.68, 406, 'http://example.com/product19.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('3d682bec-3450-49da-a196-a79035760a90', 'Product20', 'Description of Product20', 88.77, 389, 'http://example.com/product20.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('d405c71f-ea03-453e-a567-46bf1433eaac', 'Product21', 'Description of Product21', 7.55, 154, 'http://example.com/product21.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('c3641c4f-8a30-4fd8-947c-b2717f153804', 'Product22', 'Description of Product22', 40.33, 251, 'http://example.com/product22.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('ca13f22c-d577-46e8-9166-c4a45070c633', 'Product23', 'Description of Product23', 38.9, 471, 'http://example.com/product23.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('7715f1cc-c019-4126-b325-c70f3a195231', 'Product24', 'Description of Product24', 75.47, 110, 'http://example.com/product24.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('723bb5d3-57e8-492a-a9db-e140a1b4597f', 'Product25', 'Description of Product25', 73.3, 476, 'http://example.com/product25.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('19a79939-8fda-4003-88a7-868400f81e42', 'Product26', 'Description of Product26', 32.37, 153, 'http://example.com/product26.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('6ef3ec09-1612-4f42-b084-202720e47cf5', 'Product27', 'Description of Product27', 90.92, 261, 'http://example.com/product27.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('11ff342c-0e0f-4fc7-b950-a23ee6a30cc2', 'Product28', 'Description of Product28', 42.14, 397, 'http://example.com/product28.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('e820b803-925b-422d-b2a4-c2d722e4c968', 'Product29', 'Description of Product29', 66.89, 74, 'http://example.com/product29.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('ecf5e997-b4b9-4c8d-928f-c92e7158b403', 'Product30', 'Description of Product30', 74.77, 342, 'http://example.com/product30.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('083dbe46-77e5-4108-ae05-f03ffb46844b', 'Product31', 'Description of Product31', 69.9, 412, 'http://example.com/product31.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('261d951b-6155-4f68-8e20-12a4db5409b4', 'Product32', 'Description of Product32', 29.87, 132, 'http://example.com/product32.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('1ab7a75c-8da0-4c36-8662-7eb7f1a28993', 'Product33', 'Description of Product33', 81.87, 464, 'http://example.com/product33.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('dd2664a3-a284-4f68-8c16-0d6b32be792a', 'Product34', 'Description of Product34', 44.38, 473, 'http://example.com/product34.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('1eaf3feb-5cab-44ed-b2e0-a833a662944a', 'Product35', 'Description of Product35', 97.59, 289, 'http://example.com/product35.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('6130ce7d-0607-4472-98d1-c4a562f054f9', 'Product36', 'Description of Product36', 18.58, 71, 'http://example.com/product36.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('1471dfb6-1221-4c03-9505-01168e5b1d99', 'Product37', 'Description of Product37', 85.77, 366, 'http://example.com/product37.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('5c479f18-ed01-42f1-8214-6f99f2ca8083', 'Product38', 'Description of Product38', 64.21, 439, 'http://example.com/product38.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('dca09b79-a351-4a5b-b7a6-41ebd905433c', 'Product39', 'Description of Product39', 54.16, 234, 'http://example.com/product39.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('e7c9bee1-9418-4bb4-aa98-c1207c4f115c', 'Product40', 'Description of Product40', 64.06, 98, 'http://example.com/product40.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('8df74b8f-ce6d-4437-8cd7-155afe51896c', 'Product41', 'Description of Product41', 32.44, 497, 'http://example.com/product41.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('934732fd-d88f-47ee-abdc-a2c21927542f', 'Product42', 'Description of Product42', 16.08, 213, 'http://example.com/product42.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('5ace3594-1180-4ecd-9556-e4c8f915e0ae', 'Product43', 'Description of Product43', 58.24, 418, 'http://example.com/product43.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('94b86b9f-9106-4c40-943e-38805d237bc4', 'Product44', 'Description of Product44', 38.95, 370, 'http://example.com/product44.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('3496387a-f5ed-446e-8ba3-f3d162d3cc5b', 'Product45', 'Description of Product45', 33.39, 317, 'http://example.com/product45.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('445453e0-4e4c-4cce-8d3e-815bdff96ad3', 'Product46', 'Description of Product46', 31.25, 97, 'http://example.com/product46.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('9957c9e9-85b6-4e6d-a3b8-9b829c7bd367', 'Product47', 'Description of Product47', 61.99, 60, 'http://example.com/product47.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('40ad910b-dc49-41ae-91f2-b5d3a614a0f4', 'Product48', 'Description of Product48', 58.13, 357, 'http://example.com/product48.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('4f2f6b3b-45be-4d8f-8afb-300d3dc70f09', 'Product49', 'Description of Product49', 6.76, 36, 'http://example.com/product49.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('38ac0dc4-c398-45ed-a468-c4eef628b415', 'Product50', 'Description of Product50', 31.52, 86, 'http://example.com/product50.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('d96ebc4b-ace7-406d-af51-4a341fc35c79', 'Product51', 'Description of Product51', 8.78, 176, 'http://example.com/product51.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('46ce6226-1db5-4c3c-a8ed-167b7b9597f4', 'Product52', 'Description of Product52', 15.85, 298, 'http://example.com/product52.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('270793d0-39c8-4b4c-8f41-ba2051c6d102', 'Product53', 'Description of Product53', 96.12, 445, 'http://example.com/product53.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('4a392494-ec54-47d4-be30-be2b2b0cbb21', 'Product54', 'Description of Product54', 73.56, 207, 'http://example.com/product54.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('76d99807-eb43-48d3-b32f-35324386af2d', 'Product55', 'Description of Product55', 61.57, 58, 'http://example.com/product55.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('a0fef06b-dd8b-4bfc-ab0e-5de84bef3ff0', 'Product56', 'Description of Product56', 19.51, 390, 'http://example.com/product56.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('0593c69d-9004-4735-82ac-3cfb8988ca04', 'Product57', 'Description of Product57', 86.96, 299, 'http://example.com/product57.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('e84e3012-8b03-4731-8a46-92d1d8ef2dba', 'Product58', 'Description of Product58', 42.93, 129, 'http://example.com/product58.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('a243c694-e5ed-44d6-ac50-193ba84834cd', 'Product59', 'Description of Product59', 35.42, 64, 'http://example.com/product59.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('eb6020e2-eafd-422a-bd24-3de31af9036a', 'Product60', 'Description of Product60', 41.96, 343, 'http://example.com/product60.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('7d0a066a-a7a5-44ee-bc54-2c2556a04273', 'Product61', 'Description of Product61', 10.97, 295, 'http://example.com/product61.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('2f4cd32a-8571-4ed6-b72d-6997b9904ce0', 'Product62', 'Description of Product62', 24.3, 258, 'http://example.com/product62.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('93cc8e88-8ecc-407c-8237-08f96eae1f46', 'Product63', 'Description of Product63', 94.83, 15, 'http://example.com/product63.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('095f471c-daa5-4cfb-918b-29f5f07b0188', 'Product64', 'Description of Product64', 14.14, 315, 'http://example.com/product64.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('e2fc1561-dc44-41b3-876b-d853f3795823', 'Product65', 'Description of Product65', 78.93, 103, 'http://example.com/product65.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('a0a564b9-4b0b-41a4-9f4e-fa2923b3a73a', 'Product66', 'Description of Product66', 36.9, 188, 'http://example.com/product66.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('8de5c76d-a4cc-4949-b547-58022b72f17a', 'Product67', 'Description of Product67', 99.81, 243, 'http://example.com/product67.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('e1f5e867-5e3d-4863-aef9-96add05685ed', 'Product68', 'Description of Product68', 36.73, 82, 'http://example.com/product68.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('46fbd23b-3aa6-40af-9e07-f492b54d3d8c', 'Product69', 'Description of Product69', 21.27, 290, 'http://example.com/product69.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('c9e754bd-2d8a-4a1a-a3f2-2b10d3d2a18a', 'Product70', 'Description of Product70', 61.96, 224, 'http://example.com/product70.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('4aa7e241-249e-4d66-bbe3-d2d6d27e6327', 'Product71', 'Description of Product71', 88.37, 165, 'http://example.com/product71.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('1c666f70-e3fd-4e4a-9a40-421b316bb25e', 'Product72', 'Description of Product72', 7.21, 178, 'http://example.com/product72.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('4d4fd36e-b357-4a87-a896-8487ddca36a6', 'Product73', 'Description of Product73', 82.21, 278, 'http://example.com/product73.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('12eb9972-87af-4294-b90f-6b92fea67ee1', 'Product74', 'Description of Product74', 89.6, 390, 'http://example.com/product74.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('59c081b8-60fc-48a8-a963-1d29f527722c', 'Product75', 'Description of Product75', 16.26, 293, 'http://example.com/product75.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('054f0876-a547-4a1d-97ca-6d3db997744b', 'Product76', 'Description of Product76', 66.08, 248, 'http://example.com/product76.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('f6523cde-8d0f-4d10-8bb3-1a8a7dcd1cb3', 'Product77', 'Description of Product77', 9.51, 366, 'http://example.com/product77.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('b1666c0d-e418-46cc-85e5-15266a039b71', 'Product78', 'Description of Product78', 52.16, 343, 'http://example.com/product78.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('7530da19-d805-4b2a-b30b-715dadd45017', 'Product79', 'Description of Product79', 57.23, 356, 'http://example.com/product79.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('9d75d92d-8640-47b5-ad60-beb76cdd12a9', 'Product80', 'Description of Product80', 80.71, 447, 'http://example.com/product80.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('84073865-1a20-43b4-84fd-b222aa198056', 'Product81', 'Description of Product81', 5.97, 114, 'http://example.com/product81.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('d2281c4a-077f-4d7f-960d-e14aa347a7cc', 'Product82', 'Description of Product82', 42.88, 150, 'http://example.com/product82.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('6c2e99b2-7332-4d41-a783-05095abc4ed3', 'Product83', 'Description of Product83', 52.58, 440, 'http://example.com/product83.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('d255d128-cd71-4205-819c-69f4d53504b3', 'Product84', 'Description of Product84', 95.77, 15, 'http://example.com/product84.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('985f2dc3-1a3f-48c0-9e12-efc968405728', 'Product85', 'Description of Product85', 58.96, 401, 'http://example.com/product85.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('bd10d672-3f20-4fb5-9d69-ded4f1b666bf', 'Product86', 'Description of Product86', 91.56, 357, 'http://example.com/product86.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('13423880-0295-4beb-9672-6b60ceeff5a7', 'Product87', 'Description of Product87', 95.49, 433, 'http://example.com/product87.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('a2f728e2-b426-454c-ba07-c03f4dc6b214', 'Product88', 'Description of Product88', 55.02, 212, 'http://example.com/product88.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('c4a21903-e13a-4e03-8c57-4dab9536f6c7', 'Product89', 'Description of Product89', 76.45, 415, 'http://example.com/product89.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('ab9489c7-62f4-467e-90a5-098b6528a041', 'Product90', 'Description of Product90', 15.01, 97, 'http://example.com/product90.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31'),
('e6d782f9-b14a-451f-b19b-983ca950470f', 'Product91', 'Description of Product91', 8.38, 172, 'http://example.com/product91.jpg', '2024-08-28 17:43:31', '2024-08-28 17:43:31'),
('1adc8a6d-7222-48b1-8d25-3d6431b47545', 'Product92', 'Description of Product92', 77.62, 429, 'http://example.com/product92.jpg', '2024-08-29 17:43:31', '2024-08-29 17:43:31'),
('feebafcb-9e2e-456d-952b-ce977aef3d39', 'Product93', 'Description of Product93', 29.16, 460, 'http://example.com/product93.jpg', '2024-08-30 17:43:31', '2024-08-30 17:43:31'),
('6b7218ac-74ef-40fc-a4d4-d54fafef1182', 'Product94', 'Description of Product94', 13.58, 356, 'http://example.com/product94.jpg', '2024-08-31 17:43:31', '2024-08-31 17:43:31'),
('e7596be8-a049-491a-9ffd-d8451ef2797f', 'Product95', 'Description of Product95', 41.85, 269, 'http://example.com/product95.jpg', '2024-09-01 17:43:31', '2024-09-01 17:43:31'),
('1e9572e4-22aa-4248-ad26-ee173f268a00', 'Product96', 'Description of Product96', 42.2, 229, 'http://example.com/product96.jpg', '2024-09-02 17:43:31', '2024-09-02 17:43:31'),
('e89b67a7-4887-4762-830b-6e08ba10d769', 'Product97', 'Description of Product97', 33.02, 254, 'http://example.com/product97.jpg', '2024-09-03 17:43:31', '2024-09-03 17:43:31'),
('383bc079-b131-45af-baad-23afba9962a2', 'Product98', 'Description of Product98', 37.88, 251, 'http://example.com/product98.jpg', '2024-09-04 17:43:31', '2024-09-04 17:43:31'),
('3bda2638-3717-4c08-9424-d56ea5db1821', 'Product99', 'Description of Product99', 28.79, 222, 'http://example.com/product99.jpg', '2024-09-05 17:43:31', '2024-09-05 17:43:31'),
('9765fbbe-b67c-4a9e-bf95-106396bd1ec6', 'Product100', 'Description of Product100', 11.37, 101, 'http://example.com/product100.jpg', '2024-08-27 17:43:31', '2024-08-27 17:43:31');

-- Insert statements for 'purchase_history' table
INSERT INTO `purchase_history` (`id`, `user_id`, `product_id`, `quantity`, `price_at_purchase`, `purchase_date`, `created_at`) VALUES
('b1acf8ea-d8e3-4719-8985-4eb6ab9380df', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '9d884ea3-8c6f-4887-9898-ce36af4d8110', 4, 42.04, '2024-09-03 06:08:20', '2024-09-03 06:08:20'),
('0548ef63-c2d1-4327-822b-336d4caf3a1c', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'feebafcb-9e2e-456d-952b-ce977aef3d39', 4, 29.16, '2024-09-05 00:42:05', '2024-09-05 00:42:05'),
('84f8c6bb-bd05-41ad-9228-623e5583bf75', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '4a392494-ec54-47d4-be30-be2b2b0cbb21', 1, 73.56, '2024-09-05 03:44:51', '2024-09-05 03:44:51'),
('ab1214e7-51e6-4eff-9944-3a8910a774a4', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'bfad5fa8-f12f-45c8-8f7a-83208eb92cd7', 3, 90.68, '2024-09-22 17:21:01', '2024-09-22 17:21:01'),
('6bb266b0-d78e-4a4f-a4ce-13e71e3a5146', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'c4aa7248-600b-468d-8d8e-a47a74f434bd', 4, 50.16, '2024-09-19 05:55:58', '2024-09-19 05:55:58'),
('7981485b-024f-4fc5-83c3-e34f222f3759', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'fced144b-aca7-4c95-ad4f-50b86b7edf67', 2, 65.28, '2024-09-17 04:25:31', '2024-09-17 04:25:31'),
('abeea3c9-c13e-43a6-bcbb-23a70867dca2', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'e2fc1561-dc44-41b3-876b-d853f3795823', 4, 78.93, '2024-09-19 19:53:35', '2024-09-19 19:53:35'),
('ff89a43e-b000-4a6a-a881-a8cb387e05e9', 'd4927563-9f39-47c6-adca-d6115e4bbd23', '3bda2638-3717-4c08-9424-d56ea5db1821', 1, 28.79, '2024-09-03 05:26:47', '2024-09-03 05:26:47'),
('3c5a132f-94ee-490b-afc9-c8b211181b62', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'e84e3012-8b03-4731-8a46-92d1d8ef2dba', 1, 42.93, '2024-09-09 14:26:00', '2024-09-09 14:26:00'),
('6a88a969-7bff-4355-9b53-65225c00d9ec', 'd5945139-614d-4c77-bea6-7484e42a16f0', '57fc2fc9-d73e-4df0-b7b1-321d23b23684', 3, 14.27, '2024-09-20 17:03:32', '2024-09-20 17:03:32'),
('af630922-f43b-4f7d-88d1-ec8782d1679e', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', '6e34b22d-f4b9-4bc8-9e84-3e3de447351f', 1, 18.54, '2024-09-13 08:48:26', '2024-09-13 08:48:26'),
('fcddc8de-0386-4a7a-a0c8-73ed173f1d2d', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', 'c4aa7248-600b-468d-8d8e-a47a74f434bd', 4, 50.16, '2024-09-10 12:12:40', '2024-09-10 12:12:40'),
('f028a736-365e-4857-9508-24cb484886d4', '74cc0e78-2b56-4c7b-b248-365f2d4565fb', '1eaf3feb-5cab-44ed-b2e0-a833a662944a', 2, 97.59, '2024-09-07 13:53:22', '2024-09-07 13:53:22'),
('396a3c25-0f9e-4785-9ca3-8bc5a09df646', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'c3641c4f-8a30-4fd8-947c-b2717f153804', 2, 40.33, '2024-09-08 18:24:24', '2024-09-08 18:24:24'),
('fa1cb6ab-51a2-4fcf-9a27-a611102a843e', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '9d75d92d-8640-47b5-ad60-beb76cdd12a9', 3, 80.71, '2024-09-02 06:44:19', '2024-09-02 06:44:19'),
('2bda3efe-0a54-4838-b5b0-d7f259188108', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '261d951b-6155-4f68-8e20-12a4db5409b4', 2, 29.87, '2024-09-17 17:16:03', '2024-09-17 17:16:03'),
('1194571b-4e72-4ea6-844b-754be63cc6c1', 'd5945139-614d-4c77-bea6-7484e42a16f0', '19a79939-8fda-4003-88a7-868400f81e42', 3, 32.37, '2024-09-17 02:14:05', '2024-09-17 02:14:05'),
('db501044-e178-47b9-bc48-27f548887727', 'd5945139-614d-4c77-bea6-7484e42a16f0', '6e06c6b3-16bd-41ea-b6c4-e305d41d727f', 2, 54.16, '2024-09-07 17:22:19', '2024-09-07 17:22:19'),
('02efeefe-c7bb-45d5-a7c8-bb9ffd220489', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '9d75d92d-8640-47b5-ad60-beb76cdd12a9', 1, 80.71, '2024-09-17 22:05:47', '2024-09-17 22:05:47'),
('32b420e8-40e1-4ecb-9c74-14134e62a2bc', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '934732fd-d88f-47ee-abdc-a2c21927542f', 2, 16.08, '2024-09-15 04:02:57', '2024-09-15 04:02:57'),
('73ef9cdb-2540-4d0e-976f-d3f3001de766', 'd5945139-614d-4c77-bea6-7484e42a16f0', '985f2dc3-1a3f-48c0-9e12-efc968405728', 4, 58.96, '2024-09-15 12:32:27', '2024-09-15 12:32:27'),
('60135b6d-2736-4631-bf52-ca624476eef5', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '9d75d92d-8640-47b5-ad60-beb76cdd12a9', 2, 80.71, '2024-09-16 15:05:10', '2024-09-16 15:05:10'),
('a1a01d96-fbc3-4f38-8b66-fb54a856f6e9', '8e32b645-7dbe-4503-bbcc-8336a67c881f', '9d85edbc-6bd0-47cd-bead-9d0cea202f59', 1, 16.93, '2024-09-10 18:47:20', '2024-09-10 18:47:20'),
('14a8b053-5e03-4ef6-a06c-3665c0e28989', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'ca723b20-fe19-4230-9b4e-02cd1d02aeab', 5, 19.51, '2024-09-22 10:23:32', '2024-09-22 10:23:32'),
('87a16fd5-cd74-4fa1-a9ba-ec735c599a59', 'd4927563-9f39-47c6-adca-d6115e4bbd23', 'd07c057b-baba-4dba-8be9-fd06942aeb70', 4, 42.91, '2024-09-07 23:09:12', '2024-09-07 23:09:12'),
('667923c5-d84f-4f18-a0db-e06482d662a1', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'd07c057b-baba-4dba-8be9-fd06942aeb70', 1, 42.91, '2024-09-02 08:06:49', '2024-09-02 08:06:49'),
('c9d40be6-0629-4d3b-bdd7-d0684a32c97f', '8e32b645-7dbe-4503-bbcc-8336a67c881f', 'dca09b79-a351-4a5b-b7a6-41ebd905433c', 2, 54.16, '2024-09-24 02:07:49', '2024-09-24 02:07:49'),
('33f267c7-90da-4696-bc70-4e813a8d1da2', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', 'd07c057b-baba-4dba-8be9-fd06942aeb70', 4, 42.91, '2024-09-19 06:17:39', '2024-09-19 06:17:39'),
('742b45d5-66a9-4f25-947a-bb9d35c9b375', '5eb62e28-c489-42a4-a596-ebfd9436f8b6', '6130ce7d-0607-4472-98d1-c4a562f054f9', 3, 18.58, '2024-08-29 12:19:30', '2024-08-29 12:19:30'),
('2ca09ce8-d52d-4ccd-bfd4-b291ea420dae', 'd5945139-614d-4c77-bea6-7484e42a16f0', 'd07c057b-baba-4dba-8be9-fd06942aeb70', 2, 42.91, '2024-08-31 06:43:25', '2024-08-31 06:43:25');

-- Insert statements for 'shop_product_maps' table
INSERT INTO `shop_product_maps` (`id`, `shop_id`, `product_id`) VALUES
('cad2c1fc-3119-45e0-bae5-f72f73533dc1', '1cc2fbf0-ba91-4e50-8f38-dbadf1c974b8', '46ce6226-1db5-4c3c-a8ed-167b7b9597f4'),
('44a22141-754c-478c-9a77-ef96428028a4', '3d711c9b-4c61-468b-8827-9e17df44f830', '4a392494-ec54-47d4-be30-be2b2b0cbb21'),
('4eb55622-6535-43bd-bb85-abfc5f6e03d1', 'be2dc4c6-a318-4918-a9a7-b7bc1b9aa0e1', 'e7596be8-a049-491a-9ffd-d8451ef2797f'),
('4efc9dbe-a362-4e2b-81a0-6ffb697c8d02', '55bde91d-1d49-4110-b181-8f2416c0b9ee', '81ca4362-02d3-4392-9855-0587ade44e01'),
('5edbeafa-db3b-4ef0-ad5c-ef53d1ca2827', 'fe37d8a3-5ac2-41f1-8a73-1537a48b5bfe', '12eb9972-87af-4294-b90f-6b92fea67ee1'),
('966e0372-07fb-46bd-82c0-1b92bc14d1b1', '24a3956d-0714-4f1d-a866-f90fd1051691', 'ab9489c7-62f4-467e-90a5-098b6528a041'),
('23de4d4d-b071-4c38-ab56-a54b6eb4b908', 'f87ab5dd-a37a-4197-8c6e-13b3c602b940', '9d85edbc-6bd0-47cd-bead-9d0cea202f59'),
('ab83856e-baeb-4386-ab7b-c0cb7fb28a06', '55bde91d-1d49-4110-b181-8f2416c0b9ee', '8df74b8f-ce6d-4437-8cd7-155afe51896c'),
('5e6fe3be-dc4b-4f92-b762-73fbf42c7287', 'a19ef9be-ea3e-4715-b9dc-b51c2dfe0c2e', 'd96ebc4b-ace7-406d-af51-4a341fc35c79'),
('98869d21-d72c-4b59-9a76-1afb94e4df00', '643b4e6f-3194-48b1-8cbe-86327632d586', '5ace3594-1180-4ecd-9556-e4c8f915e0ae'),
('b5b24e40-afd7-4d1b-83f0-6ef64b4ce6b4', '01e2e1a5-e4e0-43e0-ae5e-4b09f56bb289', 'ab9489c7-62f4-467e-90a5-098b6528a041'),
('23546713-2644-4db0-a24c-a069a0aa679b', 'c4f5f6e0-377a-454c-8fc3-6bef661c2cf0', '0593c69d-9004-4735-82ac-3cfb8988ca04'),
('28906f64-8b66-416a-b537-4c25cf73f2b9', '1cc2fbf0-ba91-4e50-8f38-dbadf1c974b8', 'd96ebc4b-ace7-406d-af51-4a341fc35c79'),
('f0d519ae-c617-439d-bb02-358e020577c1', 'facfd6dd-3188-4f57-aae0-cb9f3d9e0b26', '095f471c-daa5-4cfb-918b-29f5f07b0188'),
('83f78932-e55d-4839-98de-dda0faecdfe2', '08499f58-abd9-4dab-b359-1c6e7aee2d3f', 'd50807b7-4a5b-475d-a098-1edc305b2f23'),
('7c30d11a-4b03-4b5c-9aca-7e1d143fa386', '623d5dc5-c7ce-416f-bf4f-80faf2f6dada', 'e6d782f9-b14a-451f-b19b-983ca950470f'),
('c3a7725b-4337-4dd9-b7c4-e8b7ea8a6c23', '07ff3c01-f137-420a-a45f-83f0147a9fc4', 'e6d782f9-b14a-451f-b19b-983ca950470f'),
('b945584e-a832-4996-8d61-ed21257c9112', 'c5716074-fcd6-42d9-8371-85d5bd1a1fd0', '1471dfb6-1221-4c03-9505-01168e5b1d99'),
('44548c28-7126-483c-a0d6-065a18ea1a87', '49121688-0445-4bd7-83c7-14684589a816', 'd405c71f-ea03-453e-a567-46bf1433eaac'),
('ff6bd752-411b-464c-83dc-c755bc61757e', 'fe7d1fcf-43f3-4ec3-8bbe-7367c2d12639', '0593c69d-9004-4735-82ac-3cfb8988ca04'),
('d1177f6d-3162-478d-840d-428ebd92236b', 'a19ef9be-ea3e-4715-b9dc-b51c2dfe0c2e', 'e7c9bee1-9418-4bb4-aa98-c1207c4f115c'),
('9d715997-b5d5-4aed-84ca-4abd40a1d3e7', '01e2e1a5-e4e0-43e0-ae5e-4b09f56bb289', 'e6d782f9-b14a-451f-b19b-983ca950470f'),
('cbaff044-422f-43df-b353-5a2999ca812b', 'c5716074-fcd6-42d9-8371-85d5bd1a1fd0', '9d75d92d-8640-47b5-ad60-beb76cdd12a9'),
('fcc5f9ff-ec7b-4f90-bc6b-1f5e18400da4', 'a7fde2a8-f1e3-44ad-b7df-42eee4e5bb8c', '095f471c-daa5-4cfb-918b-29f5f07b0188'),
('44b5e49b-5ac4-45ff-95a4-7451e55d9fcd', 'ba99abc0-c05f-4ef5-a07f-b0454cb14844', 'e1f5e867-5e3d-4863-aef9-96add05685ed'),
('01bb3700-0cd3-4d20-9e56-a057c000887d', '5e6d0600-53d0-48de-a48b-26db81f816d7', '08ad6b36-3e5d-49ad-9d1f-bd2112a6bcd1'),
('d8a9e35d-2831-49a0-9cb0-cab2236f2ac6', '911033d0-1ee7-45b4-b088-d0de037358c2', 'eb6020e2-eafd-422a-bd24-3de31af9036a'),
('4ae6b2e8-6cdb-4ea6-aa15-abb7147a285a', '55bde91d-1d49-4110-b181-8f2416c0b9ee', '4988b278-afea-4cda-930f-818de7cc137c'),
('1dc35494-b610-42c7-93c8-77959ba3656a', 'c5716074-fcd6-42d9-8371-85d5bd1a1fd0', '4aa7e241-249e-4d66-bbe3-d2d6d27e6327'),
('eecd0128-0a71-4bf4-94f7-a8d2b2f2af92', 'a7fde2a8-f1e3-44ad-b7df-42eee4e5bb8c', '985f2dc3-1a3f-48c0-9e12-efc968405728'),
('20eada70-ab4c-4853-8890-727837ae4343', '08499f58-abd9-4dab-b359-1c6e7aee2d3f', '1471dfb6-1221-4c03-9505-01168e5b1d99'),
('15b21181-a793-49eb-b5e8-618f84571f30', '90e045b2-1136-41ed-ad44-f3ef28c36006', '12eb9972-87af-4294-b90f-6b92fea67ee1'),
('e369bbbf-b4f4-4cf3-bdf5-6e8a30cbc7db', '7253cfe2-4283-4de2-a1fc-cefb59ab21a3', '095f471c-daa5-4cfb-918b-29f5f07b0188'),
('aad491bb-c971-4f90-a6a1-0161a53c9472', 'd98086ef-eec6-424c-b74d-f08fa2482344', 'e89b67a7-4887-4762-830b-6e08ba10d769'),
('8a4ce503-f4ce-4da7-82fb-e555f4c04677', '722996be-a90e-4838-a21d-b503805d364f', '6b7218ac-74ef-40fc-a4d4-d54fafef1182'),
('3f266bb0-9028-4e23-bff5-77aec6dcf7ff', '28866160-2546-4d46-ba0c-5e79fd21d32d', '24dc478b-7e2a-4963-9a8d-1a1fd706cdea'),
('bb0aeb51-3c71-43d8-938f-fb0272adf862', 'f4f1afb0-3df5-444a-8a1f-6e35f5f4e662', '3496387a-f5ed-446e-8ba3-f3d162d3cc5b'),
('e0488c25-29c6-43fe-bdeb-262a4b89966d', '8e220746-54d1-41ac-a697-df8a99265aae', 'e89b67a7-4887-4762-830b-6e08ba10d769'),
('39b1be98-5651-4047-89c9-0444ea3a279c', '7253cfe2-4283-4de2-a1fc-cefb59ab21a3', 'b1666c0d-e418-46cc-85e5-15266a039b71'),
('b67b5672-a61f-45c2-80c3-46023ed828ae', 'a85fd41c-8195-4d6a-9d4b-f6cb9fd2a629', 'fced144b-aca7-4c95-ad4f-50b86b7edf67'),
('99955a3a-1d74-407b-9ce1-a6a57f609e80', '71f1643b-10bd-4d6e-bd2c-96736f8a1061', '8df74b8f-ce6d-4437-8cd7-155afe51896c'),
('8f73ceac-6f95-417e-8d6f-85f8a8d94ea7', '193d49bd-9371-43c9-b15d-fcee09e857f7', '94b86b9f-9106-4c40-943e-38805d237bc4'),
('1a13d99a-5717-4eb1-beea-1c9ef581df8e', '49121688-0445-4bd7-83c7-14684589a816', '054f0876-a547-4a1d-97ca-6d3db997744b'),
('28a09808-b2d4-4e98-953c-5487737bd924', '28866160-2546-4d46-ba0c-5e79fd21d32d', '5ace3594-1180-4ecd-9556-e4c8f915e0ae'),
('6357adaa-8b6c-4d79-8eca-e78bde8a5c56', '5e9b172c-e016-4ac8-a19f-2f86ed6f5e39', '12eb9972-87af-4294-b90f-6b92fea67ee1'),
('20daa3b5-3692-4d72-a2ea-62e7078ed166', 'f87ab5dd-a37a-4197-8c6e-13b3c602b940', 'e7596be8-a049-491a-9ffd-d8451ef2797f'),
('6a7dd346-a365-446e-86fb-b6c77ba5b7e9', '8e220746-54d1-41ac-a697-df8a99265aae', '8de5c76d-a4cc-4949-b547-58022b72f17a'),
('3f69b1e5-f661-4f54-911d-20e4ae9c646d', 'f03c5a0d-2615-4237-aae0-fe60d1b6c010', '8df74b8f-ce6d-4437-8cd7-155afe51896c'),
('52ed0ad0-8a5a-4e30-b4f2-675a54719c40', 'd98086ef-eec6-424c-b74d-f08fa2482344', 'a0a564b9-4b0b-41a4-9f4e-fa2923b3a73a'),
('2cf5ee28-448a-4b49-9388-032d79d8fd8c', '8e220746-54d1-41ac-a697-df8a99265aae', '9765fbbe-b67c-4a9e-bf95-106396bd1ec6');
>>>>>>> 86164cd (matchの実装)
