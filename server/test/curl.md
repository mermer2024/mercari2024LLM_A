```bash
curl -X GET "http://localhost:8080/api/ping"
```

```bash
curl -X POST "http://localhost:8080/api/openai" \
  -H "Content-Type: application/json" \
  -d '{
    "sentences": [
      "This is the first sentence.",
      "This is the second sentence."
    ]
  }'
```

```bash
curl -X POST "http://localhost:8080/api/match_shops" \
  -H "Content-Type: application/json" \
  -d '{
    "userId": "114639E0-6E0D-420F-998F-A52BB9ECC145"
  }'
```

```bash
curl -X POST "http://localhost:8080/api/shop" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "New Select Shop",
    "ownerId": "1B493F89-58C4-40E6-8648-2B8445D8032D",
    "description": "This is a new select shop created by suzuki_ryo.",
    "headerImage": "https://example.com/images/newshop.jpg"
  }'
```

```bash
curl -X PUT "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Updated Shop Name",
    "description": "Updated description of the shop.",
    "headerImage": "https://example.com/images/updatedshop.jpg"
  }'
```

```bash
curl -X POST "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/follow" \
  -H "Content-Type: application/json" \
  -d '{
    "userId": "114639E0-6E0D-420F-998F-A52BB9ECC145"
  }'
```

```bash
curl -X POST "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/unfollow" \
  -H "Content-Type: application/json" \
  -d '{
    "userId": "114639E0-6E0D-420F-998F-A52BB9ECC145"
  }'
```

```bash
curl -X GET "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/search_products"
```

```bash
curl -X POST "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products" \
  -H "Content-Type: application/json" \
  -d '{
    "products": [
      {
        "name": "最新型スマートウォッチ",
        "price": 35000,
        "stock": 10,
        "description": "心拍数や睡眠パターンをモニタリングできる最新のスマートウォッチです。",
        "imageUrl": "https://example.com/images/gadget1.jpg"
      },
      {
        "name": "ワイヤレスノイズキャンセリングヘッドホン",
        "price": 28000,
        "stock": 15,
        "description": "高品質なサウンドとノイズキャンセリング機能を備えたワイヤレスヘッドホンです。",
        "imageUrl": "https://example.com/images/gadget2.jpg"
      }
    ]
  }'
```

```bash
curl -X GET "http://localhost:8080/api/search_shops"
```

```bash
curl -X GET "http://localhost:8080/api/users/114639E0-6E0D-420F-998F-A52BB9ECC145/purchase_histories" \
  -H "Content-Type: application/json"
```

Not implemented:

```bash
curl -X GET "http://localhost:8080/api/recommendations/today"
```

Not implemented:

```bash
curl -X POST "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products/B71B742C-3459-4671-86DE-4112A541909B/caption" \
  -H "Content-Type: application/json" \
  -d '{
    "caption": "期間限定セール！このソファが10%オフ！"
  }'
```

Not implemented:

```bash
curl -X POST "http://localhost:8080/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products/B71B742C-3459-4671-86DE-4112A541909B/sold_out"
```