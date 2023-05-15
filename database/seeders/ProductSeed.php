<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProductSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
                [
                'id' => 1,
                'name' => 'Dell i5 !2th Gen 8GM',
                'image' => 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg',
                'price' => 850,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 5,
                'name' => 'Dell Inspiron XPS 16 GB RAM',
                'image' => 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg',
                'price' => 1200,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 6,
                'name' => 'XPS 15 inch 16GM 250GM SSD',
                'image' => 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg',
                'price' => 1450,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 7,
                'name' => 'Inspiron 8GM RAM 250 GB',
                'image' => 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg',
                'price' => 1400,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 8,
                'name' => 'XPS 8G 250GB SSD with TB HBB',
                'image' => 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg',
                'price' => 1220,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 9,
                'name' => '13 inch 16GB 250GM SSD Laptop',
                'image' => 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg',
                'price' => 1300,
                'user_id' => 1,
                'listing_id' => 1,
                ],
                [
                'id' => 10,
                'name' => 'Meny Special Eye Glass',
                'image' => 'product/1pvcZPdRflJAPgq1HeIF3wOHq9hZgkvUJjQFweOP.jpg',
                'price' => 120,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 11,
                'name' => 'Kiss Cool Sun Glass',
                'image' => 'product/2uag0h7HcjwePwSnjuHCcuj2IVZDPBq5f7Rd6nD5.jpg',
                'price' => 140,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 12,
                'name' => 'Super Cool Eye Glass Colord',
                'image' => 'product/kSi7MOV0qo7SdVMJdYyN2SWcucVYjzvHeMfGFGBW.jpg',
                'price' => 150,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 13,
                'name' => 'Rigmu Cool Kids Eye Glass',
                'image' => 'product/BJsjsiCHXGAo4cqxDHgAf422PbnKJspSX8LT7y7f.jpg',
                'price' => 189,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 14,
                'name' => 'Super Cool Mens Eye Glass',
                'image' => 'product/iK0ipuaWcnw02sI3bzxwf5e2Sm74GTtvEFejoQXC.jpg',
                'price' => 133,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 15,
                'name' => 'Kids Rimson Eye Glass',
                'image' => 'product/70Aj31ykRHnev7D8CMnUETcWSR6cX0lFhxy1zUxk.jpg',
                'price' => 144,
                'user_id' => 1,
                'listing_id' => 2,
                ],
                [
                'id' => 16,
                'name' => 'Spanish Brinjal 1 kg',
                'image' => 'product/fEY7l4ce3unCU4oirnPfE0w0AkDsYUX7vtItFEa8.png',
                'price' => 12,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 17,
                'name' => 'Australian Orange',
                'image' => 'product/OeLCehvqYsUIjWr2oaSZCXSo6zs8aTGMApvUmkg1.png',
                'price' => 10,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 18,
                'name' => 'Kashmir Mushroom',
                'image' => 'product/6qrDCElkaqv7SsdIeJfykpuy9Wg8o1My1GaD80UV.png',
                'price' => 12,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 19,
                'name' => 'Country Tomato',
                'image' => 'product/mtWEq18lfgqY7TDMMpytL6bjrYVP1juclYVCwU8y.png',
                'price' => 8,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 20,
                'name' => 'Grapes',
                'image' => 'product/6aGbPZsN7lovpDnBNL2iMdn0tpdCj4R0NHM5OEI5.png',
                'price' => 9,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 21,
                'name' => 'Watermelon',
                'image' => 'product/6ACNpkSVS6oXjeqmwy9RTtST7ngjvszxq5Yh2Kdn.png',
                'price' => 7,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 22,
                'name' => 'Indian Beans',
                'image' => 'product/MghGaqHVBpV75iIlE6zRUq684CZncmdfAWId74h2.png',
                'price' => 6,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 23,
                'name' => 'Fresh Fish 1kg',
                'image' => 'product/SljBUTJ0odUnyONI3J7JBZqTOPDXdtUMHUW3ycOE.png',
                'price' => 44,
                'user_id' => 1,
                'listing_id' => 3,
                ],
                [
                'id' => 24,
                'name' => 'Cauliflower 1kg',
                'image' => 'product/GfpBIp0baKF2AxqzlS0OnxNr1HUJGx4DYQgMjNcJ.jpg',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 25,
                'name' => 'Strawberry 1kg',
                'image' => 'product/vGEAKuR8DfCc40dGojtyDJJpQ5XrdINRHLTIhQmE.jpg',
                'price' => 14,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 26,
                'name' => 'Carrot 1 kg',
                'image' => 'product/pFdUbY5ISyV1yV2VAzvYJ39dOUwaECo3sXfL6VSO.jpg',
                'price' => 6,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 27,
                'name' => 'Mysore Banana',
                'image' => 'product/qtajYJ3V3x8tUdMVvrchzUQUpLvMWVi80dS9H13J.jpg',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 28,
                'name' => 'Kivi Fruit',
                'image' => 'product/0YiK0wLZuw19UDjDZVyPUOKBUYOvnydmmjLJD6U1.jpg',
                'price' => 18,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 29,
                'name' => 'Country Egg 5 nos',
                'image' => 'product/WrU3nCVXyEKW2lNBtAiIcTt4wV8UW3GpOUhyit0v.jpg',
                'price' => 5,
                'user_id' => 2,
                'listing_id' => 4,
                ],
                [
                'id' => 30,
                'name' => 'Flower Stand',
                'image' => 'product/ONm8EcEdQJKqvxUVIjsPDWPeEN5Gh0ZEPpTUTAsu.jpg',
                'price' => 22,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 31,
                'name' => 'Light Folder Cover',
                'image' => 'product/JXeLbdawZvoFSzbQ5d5GZH0YDOqIGjWQ0KDmyRYu.jpg',
                'price' => 33,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 32,
                'name' => 'Custom Chair model',
                'image' => 'product/ftqlBLl1KO4yInoCpyG0i0oXY4DfsPZHQjpX0IdZ.jpg',
                'price' => 112,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 33,
                'name' => 'Fall light',
                'image' => 'product/7YFtAukRAJM6Z5bI6vqiQx6cH4qJx9nimUARlVqt.jpg',
                'price' => 89,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 34,
                'name' => 'Cup Holder',
                'image' => 'product/WdgOON3JX2tOw9Qd8Vo6sqN5eOg2wkfAvSUNhiGK.jpg',
                'price' => 88,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 35,
                'name' => 'Modern Chair',
                'image' => 'product/MP38wErEDxyHrrqrX5HPpmyPOnQRz8f7bOrjTYcV.jpg',
                'price' => 44,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 36,
                'name' => 'Modern long Stool',
                'image' => 'product/ZhLrpm6jW5SdyBNviTjg6w4sxlvO2UM3KQ6kIyn0.jpg',
                'price' => 55,
                'user_id' => 1,
                'listing_id' => 5,
                ],
                [
                'id' => 37,
                'name' => 'Chicken Fry',
                'image' => 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 38,
                'name' => 'Chick Wings',
                'image' => 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png',
                'price' => 9,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 39,
                'name' => 'Chicken Burget',
                'image' => 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png',
                'price' => 14,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 40,
                'name' => 'Spicy Noodles',
                'image' => 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 41,
                'name' => 'Gril Chicken',
                'image' => 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png',
                'price' => 33,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 42,
                'name' => 'Chicken Nugets',
                'image' => 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png',
                'price' => 15,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 43,
                'name' => 'Chicken Burget',
                'image' => 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png',
                'price' => 18,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 44,
                'name' => 'Fully Loaded Cheesy Burger',
                'image' => 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png',
                'price' => 22,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 45,
                'name' => 'Non Veg Pizza',
                'image' => 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png',
                'price' => 34,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 46,
                'name' => 'Capsicum 1kg',
                'image' => 'product/B3IPBywbafL5YEgU32bysVE8s49Vxqn9EIbtfFJ2.jpg',
                'price' => 22,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 47,
                'name' => 'Onion 1kg',
                'image' => 'product/4exE2pH9vkyDddOXTYBulCQ1AAf28vBrKCNRlajn.jpg',
                'price' => 13,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 48,
                'name' => 'Broccoli 1kg',
                'image' => 'product/wiO0QNISH52sc4h98IS457N5e0v8sk5plgjxTKmb.jpg',
                'price' => 32,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 49,
                'name' => 'Fresh Mutton 1kg',
                'image' => 'product/5nan1Xv0HixRpnM25aCBgHcwCuJkbhegJo0yX7eh.jpg',
                'price' => 55,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 50,
                'name' => 'India Orange',
                'image' => 'product/J9JyLKezz4GRl2LyK1ZPXkeBhQAqklIBhYvvN1Mw.jpg',
                'price' => 24,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 51,
                'name' => 'Kerala Brinjal',
                'image' => 'product/5RmVlluQRfgQodgvbEb5IAXDZzFSx9RfBuFXRvib.jpg',
                'price' => 15,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 52,
                'name' => 'Straberry 1kg',
                'image' => 'product/5B5xZPNUp2vpk8SI7JxSszn5btToVIAtznvqctav.jpg',
                'price' => 56,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 53,
                'name' => 'Cauliflower',
                'image' => 'product/3iKgxPzfSMyJPJCBO98BNVefMFdLnYK4PcpWPrcs.jpg',
                'price' => 43,
                'user_id' => 1,
                'listing_id' => 7,
                ],
                [
                'id' => 54,
                'name' => 'Dell i5 !2th Gen 8GM',
                'image' => 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg',
                'price' => 850,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 55,
                'name' => 'Dell Inspiron XPS 16 GB RAM',
                'image' => 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg',
                'price' => 1200,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 56,
                'name' => 'XPS 15 inch 16GM 250GM SSD',
                'image' => 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg',
                'price' => 1450,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 57,
                'name' => 'Inspiron 8GM RAM 250 GB',
                'image' => 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg',
                'price' => 1400,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 58,
                'name' => 'XPS 8G 250GB SSD with TB HBB',
                'image' => 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg',
                'price' => 1220,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 59,
                'name' => '13 inch 16GB 250GM SSD Laptop',
                'image' => 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg',
                'price' => 1300,
                'user_id' => 1,
                'listing_id' => 8,
                ],
                [
                'id' => 60,
                'name' => 'Meny Special Eye Glass',
                'image' => 'product/1pvcZPdRflJAPgq1HeIF3wOHq9hZgkvUJjQFweOP.jpg',
                'price' => 120,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 61,
                'name' => 'Kiss Cool Sun Glass',
                'image' => 'product/2uag0h7HcjwePwSnjuHCcuj2IVZDPBq5f7Rd6nD5.jpg',
                'price' => 140,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 62,
                'name' => 'Super Cool Eye Glass Colord',
                'image' => 'product/kSi7MOV0qo7SdVMJdYyN2SWcucVYjzvHeMfGFGBW.jpg',
                'price' => 150,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 63,
                'name' => 'Rigmu Cool Kids Eye Glass',
                'image' => 'product/BJsjsiCHXGAo4cqxDHgAf422PbnKJspSX8LT7y7f.jpg',
                'price' => 189,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 64,
                'name' => 'Super Cool Mens Eye Glass',
                'image' => 'product/iK0ipuaWcnw02sI3bzxwf5e2Sm74GTtvEFejoQXC.jpg',
                'price' => 133,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 65,
                'name' => 'Kids Rimson Eye Glass',
                'image' => 'product/70Aj31ykRHnev7D8CMnUETcWSR6cX0lFhxy1zUxk.jpg',
                'price' => 144,
                'user_id' => 2,
                'listing_id' => 9,
                ],
                [
                'id' => 66,
                'name' => 'Chicken Fry',
                'image' => 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 67,
                'name' => 'Chick Wings',
                'image' => 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png',
                'price' => 9,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 68,
                'name' => 'Chicken Burget',
                'image' => 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png',
                'price' => 14,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 69,
                'name' => 'Spicy Noodles',
                'image' => 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png',
                'price' => 12,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 70,
                'name' => 'Gril Chicken',
                'image' => 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png',
                'price' => 33,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 71,
                'name' => 'Chicken Nugets',
                'image' => 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png',
                'price' => 15,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 72,
                'name' => 'Chicken Burget',
                'image' => 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png',
                'price' => 18,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 73,
                'name' => 'Fully Loaded Cheesy Burger',
                'image' => 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png',
                'price' => 22,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 74,
                'name' => 'Non Veg Pizza',
                'image' => 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png',
                'price' => 34,
                'user_id' => 2,
                'listing_id' => 10,
                ],
                [
                'id' => 75,
                'name' => 'Flower Stand',
                'image' => 'product/ONm8EcEdQJKqvxUVIjsPDWPeEN5Gh0ZEPpTUTAsu.jpg',
                'price' => 22,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 76,
                'name' => 'Light Folder Cover',
                'image' => 'product/JXeLbdawZvoFSzbQ5d5GZH0YDOqIGjWQ0KDmyRYu.jpg',
                'price' => 33,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 77,
                'name' => 'Custom Chair model',
                'image' => 'product/ftqlBLl1KO4yInoCpyG0i0oXY4DfsPZHQjpX0IdZ.jpg',
                'price' => 112,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 78,
                'name' => 'Fall light',
                'image' => 'product/7YFtAukRAJM6Z5bI6vqiQx6cH4qJx9nimUARlVqt.jpg',
                'price' => 89,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 79,
                'name' => 'Cup Holder',
                'image' => 'product/WdgOON3JX2tOw9Qd8Vo6sqN5eOg2wkfAvSUNhiGK.jpg',
                'price' => 88,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 80,
                'name' => 'Modern Chair',
                'image' => 'product/MP38wErEDxyHrrqrX5HPpmyPOnQRz8f7bOrjTYcV.jpg',
                'price' => 44,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 81,
                'name' => 'Modern long Stool',
                'image' => 'product/ZhLrpm6jW5SdyBNviTjg6w4sxlvO2UM3KQ6kIyn0.jpg',
                'price' => 55,
                'user_id' => 1,
                'listing_id' => 11,
                ],
                [
                'id' => 82,
                'name' => 'Chicken Fry',
                'image' => 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png',
                'price' => 12,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 83,
                'name' => 'Chick Wings',
                'image' => 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png',
                'price' => 9,
                'user_id' => 2,
                'listing_id' => 6,
                ],
                [
                'id' => 84,
                'name' => 'Chicken Burget',
                'image' => 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png',
                'price' => 14,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 85,
                'name' => 'Spicy Noodles',
                'image' => 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png',
                'price' => 12,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 86,
                'name' => 'Gril Chicken',
                'image' => 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png',
                'price' => 33,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 87,
                'name' => 'Chicken Nugets',
                'image' => 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png',
                'price' => 15,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 88,
                'name' => 'Chicken Burget',
                'image' => 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png',
                'price' => 18,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 89,
                'name' => 'Fully Loaded Cheesy Burger',
                'image' => 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png',
                'price' => 22,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 90,
                'name' => 'Non Veg Pizza',
                'image' => 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png',
                'price' => 34,
                'user_id' => 1,
                'listing_id' => 12,
                ],
                [
                'id' => 91,
                'name' => 'Dell i5 !2th Gen 8GM',
                'image' => 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg',
                'price' => 850,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 92,
                'name' => 'Dell Inspiron XPS 16 GB RAM',
                'image' => 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg',
                'price' => 1200,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 93,
                'name' => 'XPS 15 inch 16GM 250GM SSD',
                'image' => 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg',
                'price' => 1450,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 94,
                'name' => 'Inspiron 8GM RAM 250 GB',
                'image' => 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg',
                'price' => 1400,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 95,
                'name' => 'XPS 8G 250GB SSD with TB HBB',
                'image' => 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg',
                'price' => 1220,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 96,
                'name' => '13 inch 16GB 250GM SSD Laptop',
                'image' => 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg',
                'price' => 1300,
                'user_id' => 2,
                'listing_id' => 13,
                ],
                [
                'id' => 97,
                'name' => 'Australian Orange',
                'image' => 'product/OeLCehvqYsUIjWr2oaSZCXSo6zs8aTGMApvUmkg1.png',
                'price' => 10,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 98,
                'name' => 'Kashmir Mushroom',
                'image' => 'product/6qrDCElkaqv7SsdIeJfykpuy9Wg8o1My1GaD80UV.png',
                'price' => 12,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 99,
                'name' => 'Country Tomato',
                'image' => 'product/mtWEq18lfgqY7TDMMpytL6bjrYVP1juclYVCwU8y.png',
                'price' => 8,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 100,
                'name' => 'Grapes',
                'image' => 'product/6aGbPZsN7lovpDnBNL2iMdn0tpdCj4R0NHM5OEI5.png',
                'price' => 9,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 101,
                'name' => 'Watermelon',
                'image' => 'product/6ACNpkSVS6oXjeqmwy9RTtST7ngjvszxq5Yh2Kdn.png',
                'price' => 7,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 102,
                'name' => 'Indian Beans',
                'image' => 'product/MghGaqHVBpV75iIlE6zRUq684CZncmdfAWId74h2.png',
                'price' => 6,
                'user_id' => 1,
                'listing_id' => 14,
                ],
                [
                'id' => 103,
                'name' => 'Fresh Fish 1kg',
                'image' => 'product/SljBUTJ0odUnyONI3J7JBZqTOPDXdtUMHUW3ycOE.png',
                'price' => 44,
                'user_id' => 1,
                'listing_id' => 14,
                ],

        ]);
    }
}
