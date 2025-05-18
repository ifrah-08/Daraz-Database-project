##########################################################################
# COMSATS University Islamabad
# Group Members: Abdul Basit Qureshi (FA21-BCE-003)
# 				  Ifrah Khan (FA21-BCE-028)
# Project: Daraz Database Management System
# Description: In this file, we inserted data in Daraz database tables
# Date: 17-December-2023
##########################################################################
USE daraz;

-- -- Users
INSERT INTO Users (UserID, FirstName, LastName, Email, Phone, Address, Password)
VALUES
(16, 'Sara', 'Malik', 'sara.malik@gmail.com', '+92-300-1234567', '123 Islamabad Avenue, Karachi', 'Pass1!'),
(17, 'Ali', 'Hassan', 'ali.hassan@outlook.com', '+92-321-9876543', '456 Lahore Street, Lahore', 'Secure2!'),
(18, 'Ayesha', 'Ahmed', 'ayesha.ahmed@gmail.com', '+92-333-1112233', '789 Karachi Road, Islamabad', 'Key3!'),
(19, 'Usman', 'Riaz', 'usman.riaz@outlook.com', '+92-311-4455667', '101 Rawalpindi Street, Rawalpindi', 'Word4!'),
(20, 'Zainab', 'Khan', 'zainab.khan@gmail.com', '+92-322-1122334', '202 Peshawar Avenue, Peshawar', 'P123Pass5!'),
(21, 'Omar', 'Bashir', 'omar.bashir@outlook.com', '+92-300-7654321', '303 Quetta Road, Quetta', 'Pk@Secure6!'),
(22, 'Lina', 'Aamir', 'lina.aamir@gmail.com', '+92-331-9876543', '404 Multan Street, Multan', 'PPassKey7!'),
(23, 'Imran', 'Ali', 'imran.ali@outlook.com', '+92-321-1112233', '505 Faisalabad Avenue, Faisalabad', 'akSecureWord8!'),
(24, 'Sadia', 'Ahmed', 'sadia.ahmed@gmail.com', '+92-333-4455667', '606 Sialkot Street, Sialkot', 'Paord1239!'),
(25, 'Kamran', 'Khan', 'kamran.khan@outlook.com', '+92-311-1122334', '707 Abbottabad Road, Abbottabad', 'k456Pass10!'),
(26, 'Aisha', 'Farooq', 'aisha.farooq@gmail.com', '+92-322-9876543', '808 Rawalakot Avenue, Rawalakot', 'kSec789urePass11!'),
(27, 'Bilal', 'Hassan', 'bilal.hassan@outlook.com', '+92-300-1112233', '909 Sukkur Street, Sukkur', 'PakWrdPass12!'),
(28, 'Nadia', 'Riaz', 'nadia.riaz@gmail.com', '+92-331-4455667', '1010 Jacobabad Road, Jacobabad', 'PakSreKey13!'),
(29, 'Zubair', 'Khan', 'zubair.khan@outlook.com', '+92-321-1122334', '1111 Rahim Yar Khan Avenue, Rahim Yar Khan', 'PaPss12314!'),
(30, 'Saima', 'Ali', 'saima.ali@gmail.com', '+92-322-9876543', '1212 Muzaffarabad Street, Muzaffarabad', 'Pecure15!');

-- -- Customers
INSERT INTO Customers (CustomerID, UserID, FirstName, LastName, Email, Phone, Address, City, Country, OrderID, PostalCode, Points)
VALUES
(1, 16, 'Ifrah', 'Khan', 'ifrah.khan@outlook.com', '+92-300-1234567', ' Soan Garden Block F, Street 16, House#531', 'Islamabad', 'Pakistan', 101, 54000, 50),
(2, 30, 'Abdul Basit', 'Qureshi', 'abdul.qureshi@gmail.com', '+92-321-9876543', 'North Karachi, Street 2, House#455', 'Karachi', 'Pakistan', 102, 74500, 30),
(3, 16, 'Aayan', 'Khattak', 'aayan.khattak@outlook.com', '+92-333-1112233', 'G6/3, Street AK Fazal-ul-Haq', 'Islamabad', 'Pakistan', 103, 44000, 20),
(4, 27, 'Mahnoor', 'Siddique', 'mahnoor.siddique@outlook.com', '+92-311-4455667', 'Machar Colony Street 4', 'Lahore', 'Pakistan', 104, 54000, 40),
(5, 22, 'Ambreen', 'Khadim', 'ambreen.khadim@gmail.com', '+92-322-1122334', 'Malir Cantt. Street 5 House#123', 'Karachi', 'Pakistan', 105, 74500, 10),
(6, 20, 'Maham', 'Ejaz', 'maham.ejaz@gmail.com', '+92-300-7654321', 'Chak Shahzad', 'Islamabad', 'Pakistan', 106, 44000, 25),
(7, 19, 'Nahal', 'Shehraz', 'nahal.shehraz@outlook.com', '+92-331-9876543', 'Unknown Colony, Street 7', 'Faislabad', 'Pakistan', 107, 54000, 15),
(8, 17, 'Hassan', 'Imran', 'hassan.imran@gmail.com', '+92-321-1112233', 'Street 8, City8', 'Rahim Yar Khan', 'Pakistan', 108, 74500, 35),
(9, 21, 'Hassan', 'Jawad', 'hassan.jawad@outlook.com', '+92-333-4455667', 'Street 9, House#800', 'Wah Cantt', 'Pakistan', 109, 44000, 50),
(10, 23, 'Farhan', 'Kashif', 'farhan.kashif@gmail.com', '+92-311-1122334', 'G13/3, Street 10, House#100', 'Islamabad', 'Pakistan', 110, 54000, 10),
(11, 25, 'Eeman', 'Safdar', 'eeman.safdar@gmail.com', '+92-322-9876543', 'Askari, Street 1, House#8', 'Rawalpindi', 'Pakistan', 111, 74500, 30),
(12, 29, 'Daniyal', 'Mehmood', 'daniyal.mehmood@gmail.com', '+92-300-1112233', 'Street 120, House#901', 'Multan', 'Pakistan', 112, 44000, 20),
(13, 24, 'Irshad', 'Ahmed', 'irshad.ahmed@outlook.com', '+92-331-4455667', 'Street 103, House#111', 'Dera Ghazi Khan', 'Pakistan', 113, 54000, 40),
(14, 26, 'Maheen', 'Arshad', 'maheen.arshad@outlook.com', '+92-321-1122334', 'Street 19, House#444', 'Peshawar', 'Pakistan', 114, 74500, 15),
(15, 29, 'Tayyaba', 'Saif', 'tayyaba.saif@gmail.com', '+92-322-9876543', 'Street 15, House#6', 'Bhawalpur', 'Pakistan', 115, 44000, 45);

-- -- Brands
INSERT INTO Brands (BrandID, BrandName, Description)
VALUES
(107, 'AutomobileTech', 'Specializing in high-performance automobile products'),
(108, 'FitPro', 'Dedicated to providing premium fitness supplements'),
(109, 'BabyCare', 'Ensuring the best for your baby with BPA-free products'),
(110, 'EthnicWear', 'Bringing elegance to traditional ethnic wear for men'),
(111, 'KidTech', 'Innovative technology for kids with safety in mind'),
(112, 'TechCharge', 'Leading the way in fast and wireless charging technology'),
(113, 'Fashionista', 'Creating stylish and trendy fashion for women'),
(114, 'FitTrack', 'Your partner in achieving and tracking fitness goals'),
(115, 'AquaNourish', 'Nutritious food solutions for tropical fish species'),
(116, 'CoolBreeze', 'Efficient and energy-saving cooling solutions for homes'),
(117, 'ProSports', 'Professional-grade sports equipment for enthusiasts'),
(118, 'SoundWave', 'Portable and waterproof audio solutions for outdoor use');



-- -- Sellers
INSERT INTO Sellers (SellerID, UserID, SellerName, ShopName, Email, Phone, Address, City, Country)
VALUES
(31, 16, 'Saba Malik', 'Gadget Galaxy', 'saba.malik@outlook.com', '2345678901', 'Street 2', 'Lahore', 'Pakistan'),
(32, 17, 'Usman Ahmed', 'Furniture Haven', 'usman.ahmed@outlook.com', '3456789012', 'Street 3', 'Faislabad', 'Pakistan'),
(33, 18, 'Hina Khan', 'Outdoor Emporium', 'hina.khan@gmail.com', '4567890123', 'Street 4', 'Karachi', 'Pakistan'),
(34, 19, 'Bilal Mahmood', 'Beauty Bliss', 'bilal.mahmood@outlook.com', '5678901234', 'Street 5', 'Lahore', 'Pakistan'),
(35, 20, 'Sadia Aslam', 'Audio Elegance', 'sadia.aslam@gmail.com', '6789012345', 'Street 6', 'Multan', 'Pakistan'),
(36, 21, 'Ahmed Khan', 'Fashion Fiesta', 'ahmed.khan@gmail.com', '7890123456', 'Street 7', 'Karachi', 'Pakistan'),
(37, 22, 'Saima Khan', 'Appliance Alley', 'saima.khan@outlook.com', '8901234567', 'Street 8', 'Lahore', 'Pakistan'),
(38, 23, 'Kamran Ahmed', 'Fitness Focus', 'kamran.ahmed@gmail.com', '9012345678', 'Street 9', 'Islamabad', 'Pakistan'),
(39, 24, 'Sara Malik', 'Camera Corner', 'sara.malik@outlook.com', '0123456789', 'Street 10', 'Rawalpindi', 'Pakistan'),
(40, 25, 'Noman Ashraf', 'Makeup Magic', 'noman.ashraf@gmail.com', '1234567890', 'Street 11', 'Lahore', 'Pakistan'),
(41, 26, 'Ayesha Siddiqui', 'Beverage Bazaar', 'ayesha.siddiqui@gmail.com', '1115678901', 'Street 12', 'Islamabad', 'Pakistan'),
(42, 27, 'Fahad Khan', 'Watch World', 'fahad.khan@gmail.com', '3456789011', 'Street 13', 'Rahim Yar Khan', 'Pakistan'),
(43, 28, 'Maria Ahmed', 'Sunglasses Haven', 'maria.ahmed@outlook.com', '4567897123', 'Street 14', 'Peshawar', 'Pakistan'),
(44, 29, 'Asim Munir', 'Unexpected Phone', 'asim.munir@gmail.com', '4567110123', 'Street 15', 'Domile', 'Pakistan'),
(45, 29, 'Anjum Khalid', 'Indoor Perfume', 'anjum.khalid@gmail.com', '9082890123', 'Street 16', 'Lahore', 'Pakistan');

-- -- Categories
INSERT INTO Categories (CategoryID, CategoryName)
VALUES
(1, 'Groceries & Pets'),
(2, 'Health & Beauty'),
(3, 'Men\'s Fashion'),
(4, 'Women\'s Fashion'),
(5, 'Mother & Baby'),
(6, 'Home & Lifestyle'),
(7, 'Electronics Devices'),
(8, 'Electronics Accessories'),
(9, 'TV & Home Appliances'),
(10, 'Sports & Outdoor'),
(11, 'Watches, Bags & Jewwllery'),
(12, 'Automative & Motorbike');

INSERT INTO SubCategories (SubcategoryID, CategoryID, SubcategoryName)
VALUES
(301, 1, 'Cat'),
(302, 1, 'Dog'),
(303, 1, 'Fish'),
(304, 1, 'Breakfast, Choco & Snacks'),
(305, 1, 'Beverages'),
(306, 2, 'Skin Care'),
(307, 2, 'Hair Care'),
(308, 2, 'Bath & Body'),
(309, 2, 'Makeup'),
(310, 3, 'Shoes'),
(311, 3, 'Kurta & Shalwar Kazee'),
(312, 3, 'Winter Clothing'),
(313, 3, 'T-Shirts & Tanks'),
(314, 3, 'Pants & Jeans'),
(315, 4, 'Pants, Jeans & Leggings'),
(316, 4, 'Girls Shoes'),
(317, 4, 'Kurta & Shalwar Kazeez'),
(318, 4, 'Muslim Wear'),
(319, 5, 'Toys & Games'),
(320, 5, 'Nursery'),
(321, 5, 'Feeding'),
(322, 5, 'Baby Gear'),
(323, 6, 'Lighting'),
(324, 6, 'Bath'),
(325, 6, 'Bedding'),
(326, 6, 'Decor'),
(327, 7, 'Smart Phones'),
(328, 7, 'Laptops'),
(329, 7, 'Tablets'),
(330, 7, 'Monitors'),
(331, 7, 'Sercurity Cameras'),
(332, 7, 'Cameras & Drones'),
(333, 8, 'Wearable'),
(334, 8, 'Headphones & Headsets'),
(335, 8, 'Mobile Accessories'),
(336, 8, 'Gaming Accessories'),
(337, 8, 'Printers'),
(338, 9, 'Washing Machine'),
(339, 9, 'Televisions'),
(340, 9, 'Air Conditioner'),
(341, 10, 'Supplements'),
(342, 10, 'Outdoor Recreation'),
(343, 10, 'Team Sports'),
(344, 10, 'Racket Sports'),
(345, 11, 'Kid\'s Watches'),
(346, 11, 'Men\'s Jewellery'),
(347, 11, 'Women\'s Bag'),
(348, 11, 'Men\'s Bag'),
(349, 12, 'Automative'),
(350, 12, 'Motorcycle'),
(351, 12, 'Loaders & Rickshaw');

-- -- Products
INSERT INTO Products (ProductID, SubcategoryID, ProductName, Description, Price, StockQuantity, BrandID, SellerID)
VALUES
(46, 350, 'Automobile Engine Oil', 'High-performance engine oil for automobiles', 25599, 100, 107, 31),
(47, 341, 'Protein Powder', 'Premium protein supplement for muscle building', 499, 50, 108, 32),
(48, 322, 'Baby Feeding Bottle', 'BPA-free feeding bottle for infants', 199, 75, 109, 33),
(49, 317, 'Traditional Kurta', 'Elegant and comfortable traditional kurta for men', 3499, 60, 110, 34),
(50, 345, 'Kids Smart Watch', 'Smartwatch designed for kids with safety features', 5999, 30, 111, 35),
(51, 337, 'Wireless Charging Pad', 'Fast charging wireless pad for smartphones', 1989, 80, 112, 36),
(52, 311, 'Embroidered Kurta', 'Stylish embroidered kurta for women', 6999, 45, 113, 37),
(53, 333, 'Fitness Tracker', 'Track your fitness goals with this advanced fitness tracker', 2996, 70, 114, 38),
(54, 303, 'Tropical Fish Food', 'Nutritious food for tropical fish species', 860, 120, 115, 39),
(55, 340, 'Split Air Conditioner', 'Energy-efficient split AC for home cooling', 34999, 25, 116, 40),
(56, 344, 'Tennis Racket', 'Professional-grade tennis racket for enthusiasts', 899, 40, 117, 41),
(57, 310, 'Waterproof Bluetooth Speaker', 'Portable and waterproof speaker for outdoor use', 2999, 55, 118, 42),
(58, 315, 'Denim Jeans', 'Classic denim jeans for a casual look', 4499, 65, 107, 43),
(59, 335, 'Mobile Phone Case', 'Protective case for smartphones with stylish design', 149, 90, 108, 44),
(60, 308, 'Luxury Bath Towel Set', 'Soft and luxurious towel set for bath time', 249, 75, 109, 45),
(61, 327, 'Smartphone with AI Camera', 'High-performance smartphone with AI camera features', 39799, 20, 110, 31),
(62, 307, 'Hair Repair Serum', 'Nourishing serum for hair repair and growth', 989, 50, 111, 32),
(63, 323, 'LED Ceiling Light', 'Modern LED ceiling light for home illumination', 4919, 30, 112, 33),
(64, 348, 'Leather Men\'s Bag', 'Stylish leather bag for men', 7909, 40, 113, 34),
(65, 338, 'Front Load Washing Machine', 'Efficient front-load washing machine for laundry', 49949, 15, 114, 35);



-- -- Wishlist 
INSERT INTO Wishlist (WishlistID, CustomerID, ProductID, AddedDate)
VALUES
(76, 1, 46, '2023-01-25'),
(77, 1, 47, '2023-02-28'),
(78, 2, 61, '2023-03-10'),
(79, 3, 49, '2023-04-05'),
(80, 3, 50, '2023-05-15'),
(81, 4, 65, '2023-06-20'),
(82, 5, 52, '2023-07-01'),
(83, 6, 55, '2023-08-12'),
(84, 14, 54, '2023-09-18'),
(85, 7, 63, '2023-10-02'),
(86, 8, 56, '2023-11-15'),
(87, 9, 60, '2023-12-05'),
(88, 9, 58, '2024-01-10'),
(89, 15, 64, '2024-02-20');


-- -- Reviews 
INSERT INTO Reviews (ReviewID, CustomerID, UserID, ProductID, Rating, Comments, ReviewDate)
VALUES
(91, 1, 16, 61, 5, 'Excellent product!', '2023-01-22'),
(92, 11, 17, 47, 4, 'Great features but delivery was slow', '2023-03-02'),
(93, 3, 18, 48, 3, 'Average product quality', '2023-03-12'),
(94, 1, 19, 47, 5, 'Very satisfied with the purchase', '2023-04-08'),
(95, 5, 20, 50, 4, 'Good value for money', '2023-05-20'),
(96, 6, 21, 51, 2, 'Not as expected', '2023-06-25'),
(97, 15, 22, 50, 4, 'Fast delivery, product in good condition', '2023-07-05'),
(98, 2, 23, 53, 5, 'Excellent service', '2023-08-15'),
(99, 9, 24, 54, 3, 'Issues with the product', '2023-09-22'),
(100, 10, 25, 53, 5, 'Highly recommended', '2023-10-05'),
(101, 14, 26, 56, 4, 'Good performance', '2023-11-18'),
(102, 12, 27, 58, 3, 'Average quality', '2023-12-28'),
(103, 11, 28, 58, 4, 'Satisfied with the purchase', '2024-01-15'),
(104, 14, 29, 57, 5, 'Great customer service', '2024-02-25'),
(105, 15, 30, 61, 1, 'Very poor service', '2023-02-25');

-- -- Orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, OrderStatus, Comments)
VALUES
(61, 1, '2023-01-21', 500, 'Shipped', NULL),
(62, 2, '2023-02-26', 700, 'Delivered', 'Quick delivery'),
(63, 3, '2023-03-21', 400, 'Processing', 'Order in process'),
(64, 4, '2023-04-16', 600, 'Shipped', NULL),
(65, 5, '2023-05-11', 250, 'Delivered', 'Good packaging'),
(66, 6, '2023-06-26', 180, 'Processing', 'Order in process'),
(67, 7, '2023-07-19', 350, 'Shipped', NULL),
(68, 8, '2023-08-29', 450, 'Delivered', 'Quick delivery'),
(69, 9, '2023-09-11', 300, 'Processing', 'Order in process'),
(70, 10, '2023-10-29', 100, 'Shipped', NULL),
(71, 11, '2023-11-11', 600, 'Delivered', 'Good packaging'),
(72, 12, '2023-12-23', 120, 'Processing', 'Order in process'),
(73, 13, '2024-01-05', 320, 'Shipped', NULL),
(74, 14, '2024-02-18', 450, 'Delivered', 'Quick delivery');

-- -- OrdersDetail
INSERT INTO OrdersDetail (OrderID, ProductID, Quantity, UnitPrice)
VALUES
	(61, 46, 1, 569),
	(62, 47, 2, 350),
	(63, 48, 1, 299),
	(64, 49, 3, 360),
	(65, 50, 7, 259),
	(66, 51, 2, 180),
	(67, 52, 1, 400),
	(68, 53, 9, 500),
	(69, 54, 1, 200),
	(70, 55, 4, 99),
	(71, 56, 4, 80),
	(72, 57, 2, 700),
	(73, 58, 8, 150),
	(74, 59, 3, 600);

-- -- Shipping Details
INSERT INTO ShippingDetails (ShippingID, OrderID, Address, City, State, Country, ShippingDate)
VALUES
(111, 61, 'Sadiqabad Street 26', 'Rawalpindi', 'Punjab', 'Pakistan', '2023-01-22'),
(112, 62, 'Machar Colony Street 90', 'Sukkur', 'Sindh', 'Pakistan', '2023-02-28'),
(113, 63, 'Sohan Vallye Street 3', 'Islamabad', 'Islamabad', 'Pakistan', '2023-03-15'),
(114, 64, 'Bilal Town Street 43', 'Jehlum', 'Punjab', 'Pakistan', '2023-04-20'),
(115, 65, 'North Karachi Street 5', 'Karachi', 'Sindh', 'Pakistan', '2023-05-16'),
(116, 66, 'Soan Garden Street 66 House#11', 'Islamabad', 'Islamabad', 'Pakistan', '2023-06-30'),
(117, 67, 'Sadiqabad Street 7 House#50', 'Rahim Yar Khan', 'Punjab', 'Pakistan', '2023-07-25'),
(118, 68, 'Mirchi Town Street 8 House#54', 'Hyderabad', 'Sindh', 'Pakistan', '2023-08-31'),
(119, 69, 'Gulshan Iqbal Street 9 House#5', 'Rawalpindi', 'Punjab', 'Pakistan', '2023-09-14'),
(120, 70, 'Unknown Town Street 10', 'Faislabad', 'Punjab', 'Pakistan', '2023-10-31'),
(121, 71, 'Thank Colony Street 111', 'Sibbi', 'Sindh', 'Pakistan', '2023-11-14'),
(122, 72, 'G11/2 Street 102', 'Islamabad', 'Islamabad', 'Pakistan', '2023-12-26'),
(123, 73, 'Raiwand Block-D Street 13', 'Lahore', 'Punjab', 'Pakistan', '2024-01-07'),
(124, 74, 'Khan Town Street 14', 'Peshawar', 'KPK', 'Pakistan', '2024-02-20');

-- Complaints
INSERT INTO Complaints (ComplaintID, CustomerID, OrderID, Description, Date)
VALUES
(121, 1, 61, 'Delayed delivery', '2023-01-23'),
(122, 2, 62, 'Product damaged during shipping', '2023-03-03'),
(123, 5, 65, 'Defective product', '2023-05-25'),
(124, 8, 68, 'Issues with payment processing', '2023-09-10'),
(125, 9, 69, 'Poor customer service', '2023-09-28'),
(126, 11, 71, 'Product out of stock after purchase', '2023-11-20'),
(127, 12, 72, 'Received damaged and used product', '2024-01-02'),
(128, 13, 73, 'Long wait time for customer support', '2024-02-12');

-- -- Cart
INSERT INTO Cart (CartID, CustomerID, TotalQuantity, TotalPrice)
VALUES
(201, 1, 5, 12000),
(202, 2, 3, 7550),
(203, 3, 2, 5000),
(204, 4, 4, 9525),
(205, 5, 1, 2575),
(206, 6, 6, 1400),
(207, 7, 3, 7280),
(208, 8, 2, 5590),
(209, 9, 5, 1275),
(210, 10, 1, 3025),
(211, 11, 4, 920);


-- -- CartProducts
INSERT INTO CartProducts (CartID, ProductID, Quantity)
VALUES
(201, 46, 2),
(201, 47, 3),
(202, 48, 1),
(202, 49, 2),
(203, 50, 1),
(204, 51, 4),
(205, 52, 1),
(206, 53, 2),
(206, 54, 4),
(207, 55, 3),
(208, 56, 2),
(208, 57, 1),
(209, 58, 3),
(210, 59, 1),
(211, 60, 2),
(211, 61, 2);


-- -- Payments
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount, PaymentMethod)
VALUES
(141, 61, '2023-01-25', 500, 'Credit Card'),
(142, 62, '2023-03-01', 700, 'EasyPaisa'),
(143, 63, '2023-03-15', 400, 'Debit Card'),
(144, 64, '2023-04-22', 600, 'SadaPay'),
(145, 65, '2023-05-18', 250, 'JazzCash'),
(146, 66, '2023-06-30', 180, 'JazzCash'),
(147, 67, '2023-07-25', 350, 'PayPal'),
(148, 68, '2023-08-31', 450, 'Debit Card'),
(149, 69, '2023-09-14', 300, 'EasyPaisa'),
(150, 70, '2023-10-31', 100, 'EasyPaisa'),
(151, 71, '2023-11-14', 600, 'Credit Card'),
(152, 72, '2023-12-26', 120, 'SadaPay'),
(153, 73, '2024-01-07', 320, 'Debit Card'),
(154, 74, '2024-02-20', 450, 'Bank Transfer');


-- Promotions
INSERT INTO Promotions (ProductID, PromotionName, Description, DiscPercent, StartDate, EndDate, PromotionID)
VALUES
(46, 'NewYearSale', 'Year-end promotion on laptops', 10, '2023-01-01', '2023-01-15', 161),
(47, 'AzaadiSale', 'Spring discount on smartphones', 15, '2023-03-01', '2023-03-10', 162),
(48, '11.11 Sale', 'Exclusive discounts on every item', 20, '2023-11-11', '2023-11-24', 163),
(49, '12.12 Sale', 'Exclusive discounts on every item', 10, '2023-12-12', '2023-12-12', 164),
(51, 'LoveSale', 'Valentine Sale on every lovely item', 18, '2023-02-13', '2023-02-14', 165),
(52, 'WinterDeal', 'Stay warm with discounts on winter jackets', 18, '2023-10-20', '2023-10-30', 166),
(54, 'SummerDeal', 'Get ready for summer with amazing discounts!', 15, '2023-08-01', '2023-08-15', 167),
(55, 'ChristmasOffer', 'Celebrate the season with special Christmas discounts!', 8, '2023-12-25', '2023-12-26', 168),
(56, 'BlackFriday', 'Friday sale on every item', 50, '2023-10-01', '2023-10-15', 169),
(57, 'Eid', 'Savor the flavor of Eid with special offers', 10, '2023-10-20', '2023-11-05', 170);
