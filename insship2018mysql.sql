INSERT INTO `captain` (`capt_id`, `license_grade`, `fname`, `lname`, `dob`) VALUES
('001-01', 3, 'Robert', 'Sourchie', '1945-05-01'),
('001-23', 1, 'Cliff', 'Walker', '1972-02-01'),
('001-24', 1, 'John', 'Smith', '1957-01-12'),
('002-14', 2, 'Sal', 'Levine', '1956-02-20'),
('002-15', 1, 'Henry', 'Moore', '1957-01-15'),
('003-01', 3, 'James', 'Westmoreland', '1972-02-12'),
('003-02', 1, 'Earl', 'Gray', '1965-03-17'),
('004-01', 2, 'Otheno', 'Vollage', '1962-11-16'),
('004-02', 1, 'Marcia', 'Nesmith', '1957-05-01'),
('011-11', 2, 'Phillip', 'Levinchuck', '1962-03-02'),
('001-25', 2, 'Mark', 'Smith', '1973-05-17'),
('004-03', 1, 'Paul', 'Rice', '1977-09-10');

INSERT INTO `distance` (`origin`, `destination`, `miles`, `days`) VALUES
('BOSTON', 'BRAZIL', 2500.00, 4),
('BOSTON', 'LONDON', 3000.00, 5),
('BOSTON', 'SEATTLE', 6000.00, 7),
('BOSTON', 'SINGAPORE', 5000.00, 5),
('BRAZIL', 'BOSTON', 2600.00, 5),
('LONDON', 'BOSTON', 3000.00, 5),
('LONDON', 'SEATTLE', 9000.00, 12),
('SEATTLE', 'BOSTON', 6000.00, 7),
('SEATTLE', 'LONDON', 9000.00, 12),
('SINGAPORE', 'BOSTON', 5000.00, 5);


INSERT INTO `item` (`item_no`, `item_type`, `description`, `weight`) VALUES
('2101', 'FP', 'Beans', 500.00),
('2109', 'FP', 'Corn Meal', 200.00),
('2123', 'FP', 'Rice', 300.00),
('2125', 'FP', 'Oats', 335.00),
('3212', 'BL', 'Cement', 2000.00),
('3223', 'BL', 'Concrete Forms', 500.00),
('3297', 'BL', 'Steel Beam', 2000.00),
('3299', 'BL', 'Small Steel Plate', 750.00),
('4521', 'WP', '5/8" Plywood - 200 sheets/pallet', 800.00),
('4532', 'WP', 'Beam', 100.00),
('4533', 'WP', '2X4X8 Pine Boards', 250.00),
('4534', 'WP', '3/4" Plywood - 200 sheets/pallet', 1200.00),
('7821', 'AUTO', 'Toyota Camry', 2000.00),
('7823', 'AUTO', 'Mercury Sable', 2500.00),
('7829', 'AUTO', 'Mercedes', 2550.00),
('7830', 'AUTO', 'Honda Accord', 1960.00);

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `city`, `state`, `rep_id`, `bid_preference`) VALUES
('210', 'United ship Builders', 'Bath', 'ME', NULL, NULL),
('211', 'General ship Builders', 'San Diego', 'CA', NULL, NULL),
('212', 'Master Dynamics', 'Bridgeport', 'CT', NULL, NULL),
('213', 'Asia West ship Builders', 'Hong Kong', NULL, NULL, NULL),
('214', 'Pacific ship Builders', 'Fairbanks', 'AK', NULL, NULL),
('215', 'Best Industries', 'Seattle', 'WA', NULL, NULL),
('216', 'Union Corp', 'Buffalo', 'NY', NULL, NULL);

INSERT INTO `ship` (`ship_no`, `class`, `capacity`, `purch_date`, `manufacturer_id`) VALUES
('1', 1, 100000.00, '1965-01-25', '212'),
('5', 1, 120000.00, '1969-01-20', '212'),
('6', 1, 500000.00, '1969-03-07', '212'),
('11', 2, 50000.00, '1971-01-30', '210'),
('10', 3, 20000.00, '1976-03-15', '210'),
('16', 2, 75000.00, '1975-11-01', '215'),
('25', 3, 15000.00, '1979-11-02', '213'),
('35', 2, 55000.00, '1989-12-01', '211'),
('37', 1, 250000.00, '1990-12-02', '216'),
('39', 1, 500000.00, '1991-12-03', '211');

INSERT INTO `shipment` (`shipment_id`, `ship_no`, `capt_id`, `shipment_date`, `origin`, `destination`, `arrival_date`) VALUES
('09-0001', '25', '001-25', '2016-03-12', 'SEATTLE', 'BOSTON', '2016-03-19'),
('09-0002', '1', '004-03', '2016-04-15', 'BOSTON', 'SINGAPORE', '2016-04-20'),
('09-0003', '11', '003-01', '2016-06-01', 'BRAZIL', 'BOSTON', '2016-06-07'),
('09-0004', '5', '002-14', '2016-07-10', 'LONDON', 'SEATTLE', '2016-07-22'),
('09-0005', '1', '002-15', '2016-09-19', 'BOSTON', 'BRAZIL', '2016-09-23'),
('10-0001', '1', '001-23', '2017-01-15', 'BOSTON', 'LONDON', '2017-01-21'),
('10-0002', '5', '001-01', '2017-01-15', 'SEATTLE', 'LONDON', '2017-01-21'),
('10-0003', '11', '002-14', '2017-01-18', 'BOSTON', 'LONDON', '2017-01-30'),
('10-0004', '39', '001-24', '2017-03-13', 'BOSTON', 'LONDON', '2017-03-18'),
('11-0001', '39', '002-15', '2018-06-10', 'BOSTON', 'BRAZIL', '2018-06-14'),
('11-0002', '37', '004-01', '2018-07-15', 'BRAZIL', 'BOSTON', '2018-07-19'),
('11-0003', '10', '003-01', '2018-08-20', 'BOSTON', 'SEATTLE', '2018-08-31'),
('11-0004', '16', '001-24', '2018-09-01', 'SEATTLE', 'LONDON', '2018-09-14'),
('11-0005', '5', '004-02', '2018-09-15', 'BOSTON', 'SEATTLE', '2018-09-23'),
('11-0006', '6', '003-02', '2018-09-17', 'LONDON', 'SEATTLE', '2018-09-28');

INSERT INTO `shipment_line` (`shipment_id`, `item_no`, `quantity`) VALUES
('09-0001', '3223', 100.00),
('09-0001', '3297', 87.00),
('09-0001', '3299', 34.00),
('09-0002', '3212', 100.00),
('09-0002', '3223', 50.00),
('09-0003', '2101', 432.00),
('09-0003', '2123', 34.00),
('09-0003', '2109', 1000.00),
('09-0003', '2125', 200.00),
('09-0004', '3212', 10.00),
('09-0004', '3223', 5.00),
('09-0005', '3297', 42.00),
('09-0005', '7821', 5.00),
('09-0005', '7823', 45.00),
('10-0001', '7829', 3.00),
('10-0001', '7830', 100.00),
('10-0001', '7821', 10.00),
('10-0002', '4521', 100.00),
('10-0002', '4533', 1000.00),
('10-0002', '4532', 100.00),
('10-0003', '4534', 300.00),
('10-0003', '4521', 100.00),
('10-0004', '2101', 1000.00),
('10-0004', '2109', 800.00),
('10-0004', '2125', 56.00),
('11-0001', '4521', 10.00),
('11-0001', '4532', 100.00),
('11-0002', '4534', 15.00),
('11-0002', '4533', 100.00),
('11-0003', '7829', 1000.00),
('11-0004', '3223', 150.00),
('11-0004', '3297', 10.00),
('11-0005', '2101', 100.00),
('11-0005', '2109', 1000.00),
('11-0006', '2125', 345.00),
('11-0006', '7830', 30.00);



