Local:

curl -X POST http://127.0.0.1:3000/wish_lists -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"title":"test"}}'
curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Accept: application/json'
curl -X PUT http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"daea9922-442c-4b1d-af25-d71a903a20b5","title":"My Wish List"}}'
curl -X PATCH http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"daea9922-442c-4b1d-af25-d71a903a20b5","title":"Birthday List"}}'
curl -X DELETE http://127.0.0.1:3000/wish_lists/a2b75eb1-8ade-4a88-a14a-dacd35ed5e9d -i -H 'Accept: application/json'

curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items -i -H 'Accept: application/json'
curl -X POST http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"test","url":"http://test.url"}}'
curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Accept: application/json'
curl -X PUT http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"My Item", "url":"http://my.url", "purchased": false}}'
curl -X PATCH http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"Another Item", "url":"https://my.secure.url", "purchased": true}}'
curl -X DELETE http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/cae1cf5b-0b46-4a7e-a2e8-268376cfc2f0 -i -H 'Accept: application/json'

curl -X GET http://127.0.0.1:3000/shared_wish_lists/70946537-49fa-4cc2-a81e-28104670c252 -i -H 'Accept: application/json'
curl -X PATCH http://127.0.0.1:3000/shared_wish_lists/70946537-49fa-4cc2-a81e-28104670c252/purchase/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Accept: application/json'


Heroku:

curl -X POST https://pacific-earth-94052.herokuapp.com/wish_lists -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"title":"test"}}'
curl -X GET https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27 -i -H 'Accept: application/json'
curl -X PUT https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"c0922735-7544-4e13-8428-0c802f168f27","title":"My Wish List"}}'
curl -X PATCH https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"c0922735-7544-4e13-8428-0c802f168f27","title":"Birthday List"}}'
curl -X DELETE https://pacific-earth-94052.herokuapp.com/wish_lists/a2b75eb1-8ade-4a88-a14a-dacd35ed5e9d -i -H 'Accept: application/json'

curl -X GET https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items -i -H 'Accept: application/json'
curl -X POST https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"test","url":"http://test.url"}}'
curl -X GET https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items/3d041b74-09f0-4e65-824e-01488f80a1f6 -i -H 'Accept: application/json'
curl -X PUT https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items/3d041b74-09f0-4e65-824e-01488f80a1f6 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"My Item", "url":"http://my.url", "purchased": false}}'
curl -X PATCH https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items/3d041b74-09f0-4e65-824e-01488f80a1f6 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"Another Item", "url":"https://my.secure.url", "purchased": true}}'
curl -X DELETE https://pacific-earth-94052.herokuapp.com/wish_lists/c0922735-7544-4e13-8428-0c802f168f27/items/f1e0f558-7fef-4e1b-9269-5b13dabac80c -i -H 'Accept: application/json'

curl -X GET https://pacific-earth-94052.herokuapp.com/shared_wish_lists/57b14558-5318-4d7b-b468-be2af7696406 -i -H 'Accept: application/json'
curl -X PATCH https://pacific-earth-94052.herokuapp.com/shared_wish_lists/57b14558-5318-4d7b-b468-be2af7696406/purchase/3d041b74-09f0-4e65-824e-01488f80a1f6 -i -H 'Accept: application/json'
