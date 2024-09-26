-- +goose Up

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
