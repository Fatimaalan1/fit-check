-- Add user to table
INSERT INTO users (uid, username, password, role, email, brandname, website) 
VALUES 
    (1, 'user1', 'password123', 'user', 'user1@example.com', NULL , NULL),
    (2, 'user2', 'password123', 'user', 'user2@example.com', NULL , NULL),
    (3, 'user3', 'password123', 'user', 'user3@example.com', NULL , NULL),
    (4, 'HMFashion', 'password456', 'business', 'marketing@hmcanada.com', 'H&M', 'https://www2.hm.com/en_ca/index.html'),
    (5, 'BananaRepublic', 'password456', 'business', 'marketing@brcanada.com', 'Banana Republic', 'https://bananarepublic.gap.com/'),
    (6, 'Admin1', 'adminpassword', 'admin', 'admin1@example.com', NULL , NULL);

-- Delete user1 
-- DELETE FROM Users
-- WHERE uid = 1;

-- Update password of user1
-- UPDATE Users 
-- SET password = “password789”
-- WHERE uid = 1;

-- Update business brand_name
-- UPDATE Users 
-- SET brand_name = “Hennes & Mauritz”
-- WHERE uid = 2; // or username = “hm”

-- Update business websites
-- UPDATE Users 
-- SET website = “www.hmcanada.ca”
-- WHERE uid = 2; // or username = “hm”

-- Insert sample wardrobe items
INSERT INTO wardrobe (wid, uid, itemtype, name, picture, otherDetails)
VALUES
    (1, 1, 'Top', 'Purple Top', 'purple_top.png', 'Cool top I found at H&M'),
    (2, 1, 'Bottom', 'Black Jeans', 'black_jeans.png', 'Classic black jeans'),
    (3, 1, 'Accessory', 'Silver Ring', 'silver_ring.png', 'A ring from an antique shop'),
    (4, 2, 'Top', 'White T-shirt', 'white_tshirt.png', 'Simple and comfy'),
    (5, 2, 'Bottom', 'Blue Shorts', 'blue_shorts.png', 'Perfect for summer'),
    (6, 3, 'Outerwear', 'Denim Jacket', 'denim_jacket.png', 'Vintage denim jacket'),
    (7, 3, 'Top', 'Green Hoodie', 'green_hoodie.png', 'Comfy and warm hoodie');

-- For a certain type of clothing for drop down
-- SELECT DISTINCT ItemType
-- FROM Wardrobe;

-- group a user’s wardrobe by type each type has 
-- SELECT Wid, ItemType, name, picture, other_details
-- FROM Wardrobe
-- WHERE Uid = 1
-- ORDER BY ItemType;

-- Count amount of items in each item type
-- SELECT ItemType, COUNT(*) AS ItemCount
-- FROM Wardrobe
-- WHERE Uid = 1
-- GROUP BY ItemType;


INSERT INTO userpost (pid, uid, picture, title, description, avgrating, flag)
VALUES
    (1, 1, 'outfit1.png', 'My new outfit', '...', 2, FALSE),
    (2, 2, 'outfit2.png', 'cool oufit', '!!!', 3.5, FALSE),
    (3, 1, 'outfit3.png', 'rate me!!', '???', 1, FALSE),
    (4, 2, 'outfit4.png', 'look at this', '>>>', 5, FALSE),
    (5, 3, 'outfit5.png', 'what do you guys think?', '<<<', 4, FALSE),
    (6, 1, 'outfit6.png', 'my comfort fit', '$$$', 2.6, FALSE),
    (7, 3, 'outfit7.png', 'should i wear this to grad?', '@@@', 3.8, FALSE);

-- Queries

-- Grab user post based on flag value of 1:
-- SELECT *
-- FROM userpost
-- WHERE flag = 1;

-- grab user posts based on uid = 3
-- SELECT *
-- FROM userpost
-- WHERE uid = 3;

-- Flag a specific user post
-- UPDATE userpost
-- SET flag = 1
-- WHERE pid = 1;

INSERT INTO userrating (rid, pid, uid, rating)
VALUES
    (1, 1, 1, 2),
    (2, 2, 3, 3.5),
    (3, 3, 2, 1),
    (4, 4, 2, 5),
    (5, 5, 3, 4),
    (6, 6, 1, 2.6),
    (7, 7, 1, 3.8);

-- Queries

-- get average of ratign for one post
-- SELECT pid, AVG(rating) AS avg_rating_of_post
-- FROM userrating
-- WHERE pid = 1
-- GROUP BY pid;

INSERT INTO brandpost (pid, uid, picture, flag) 
VALUES 
    (1, 4, 'https://image.hm.com/assets/hm/1e/e6/1ee60900d682e151222d978cc215c986e2df5c89.jpg?imwidth=1260', FALSE),
    (2, 5, 'https://image.hm.com/assets/hm/61/1f/611fafb8cf4020f1e585b01f9f5e75d70724e51f.jpg?imwidth=1260', FALSE);

-- Queries

-- Get photo from a Brand Post
-- SELECT Picture
-- FROM BrandPost
-- WHERE pid = 1;

-- Get all flagged Brand Posts
-- SELECT pid, Picture, flag
-- FROM BrandPost
-- WHERE flag = 0;

-- Delete a specific Brand Post
-- DELETE 
-- FROM BrandPost
-- WHERE pid = 1;

-- Flag a specific Brand Post
-- UPDATE BrandPost
-- SET flag = 1
-- WHERE pid = 1;

INSERT INTO brandpostdetails (bpdid, pid, itemtype, URL, clicks) 
VALUES 
    (1, 1, 'Sweater', 'https://www2.hm.com/en_ca/productpage.1268715001.html', 0),
    (2, 1, 'Skirt', 'https://www2.hm.com/en_ca/productpage.1246595001.html', 0),
    (3, 2, 'Dress', 'https://www2.hm.com/en_ca/productpage.1252066001.html', 0),
    (4, 2, 'Earrings', 'https://www2.hm.com/en_ca/productpage.1258220001.html', 0);

-- Queries

-- Get Item types, URLs, and # of clicks for a specific Brand Post (Analytics query)
-- SELECT bd.ItemType, bd.URL, bd.Clicks
-- FROM BrandPostDetails bd, BrandPost bp
-- WHERE bd.pid = bp.pid AND bd.pid = 1;

-- Delete Brand Post Details for a specific Brand Post (Run before deleting brand post itself)
-- DELETE 
-- FROM BrandPostDetails
-- WHERE pid = 1;

-- Update # of clicks for a specific Brand Post and ItemType
-- UPDATE BrandPostDetails
-- SET Clicks = 100
-- WHERE pid = 1 AND ItemType = ‘Sweater’;
