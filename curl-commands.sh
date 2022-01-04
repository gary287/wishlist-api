curl -X POST http://127.0.0.1:3000/wish_lists -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"title":"test"}}'
curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Accept: application/json'
curl -X PUT http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"daea9922-442c-4b1d-af25-d71a903a20b5","title":"My Wish List"}}'
curl -X PATCH http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"wish_list":{"id":"daea9922-442c-4b1d-af25-d71a903a20b5","title":"Birthday List"}}'
curl -X DELETE http://127.0.0.1:3000/wish_lists/a2b75eb1-8ade-4a88-a14a-dacd35ed5e9d -i -H 'Accept: application/json'

curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items -i -H 'Accept: application/json'
curl -X POST http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"test","url":"http://test.url"}}'
curl -X GET http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Accept: application/json'
curl -X PUT http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"My Item", "url":"http://my.url"}}'
curl -X PATCH http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/e4df9b5c-2320-43ce-b454-aa80b1b1b016 -i -H 'Content-Type: application/json' -H 'Accept: application/json' -d '{"item":{"title":"Another Item", "url":"https://my.secure.url"}}'
curl -X DELETE http://127.0.0.1:3000/wish_lists/daea9922-442c-4b1d-af25-d71a903a20b5/items/cae1cf5b-0b46-4a7e-a2e8-268376cfc2f0 -i -H 'Accept: application/json'

curl -X GET http://127.0.0.1:3000/shared_wish_lists/0dc96ab4-7738-4555-94f6-d8e3db67957d -i -H 'Accept: application/json'
