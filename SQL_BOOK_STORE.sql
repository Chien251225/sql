-- Nhập dữ liệu khách hàng
INSERT INTO customer (name, email, address) VALUES 
('Nguyen Van A', 'nva@gmail.com','Ha Noi'),
('Nguyen Van B', 'nvb@gmail.com','Ha Noi'),
('Nguyen Van C', 'nvc@gmail.com','Hai Phong'),
('Nguyen Van A', 'nva@gmail.com','Quang Ninh'),
('Nguyen Van D', 'nvd@gmail.com','Sai Gon'),
('Nguyen Van F', 'nvf@gmail.com','Hai Phong');

-- Nhập loại sách
INSERT INTO category (name) VALUES
('Autobiography and memoir (non-fiction)'),
('Biography (non-fiction)'),
('Essays (non-fiction)'),
('Non-fiction novel (non-fiction)'),
('Self-help (non-fiction)'),
('Adventure stories (fiction)'),
('Classics (fiction)'),
('Crime (fiction)'),
('Fairy tales, fables, and folk tales (fiction)'),
('Fantasy (fiction)'),
('Historical fiction (fiction)'),
('Horror (fiction)'),
('Humour and satire (fiction)'),
('Literary fiction (fiction)'),
('Mystery (fiction)'),
('Poetry (fiction)'),
('Plays (fiction)'),
('Romance (fiction)'),
('Science fiction (fiction)'),
('Short stories (fiction)'),
('Thrillers (fiction)'),
('War (fiction)'),
('Women’s fiction (fiction)'),
('Young adult (fiction)'),
(N'Sách Văn Học'),
(N'Sách Kinh Tế'),
(N'Sách Thiếu Nhi'),
(N'Sách Kỹ Năng Sống'),
(N'Nuôi Dạy Con'),
(N'Sách Giáo Khoa - Giáo Trình'),
(N'Sách Học Ngoại Ngữ '),
(N'Sách Tham Khảo'),
(N'Từ Điển'),
(N'Sách Kiến Thức Tổng Hợp'),
(N'Sách Khoa Học - Kỹ Thuật'),
(N'Sách Lịch sử'),
(N'Điện ảnh - Nhạc - Họa'),
(N'Truyện Tranh,Manga,Comic'),
(N'Sách Tôn Giáo - Tâm Linh'),
(N'Sách Văn Hóa - Địa Lý - Du Lịch'),
(N'Sách Chính Trị - Pháp Lý'),
(N'Sách Nông - Lâm - Ngư Nghiệp'),
(N'Sách Công Nghệ Thông Tin'),
(N'Sách Y Học'),
(N'Tạp Chí - Catalogue'),
(N'Sách Tâm lý - Giới tính'),
(N'Sách Thưởng Thức - Gia Đình'),
(N'Thể Dục - Thể Thao');

-- Nhập dữ liệu người bán hàng
INSERT INTO saler (name) VALUES
(N'Vũ Đình Quý'),
(N'Mai Hồng Anh'),
(N'Trần Đức Thuận'),
(N'Lê Đức Anh'),
(N'Phan Tiến Anh'),
(N'Đặng Minh Đức');

-- Nhập dữ liệu nhà xuất bản
INSERT INTO publisher (name) VALUES
(N'Nhà Xuất Bản Hồng Đức'),
(N'Nhà Xuất Bản Thế Giới'),
(N'Nhà xuất bản Trẻ'),
(N'Nhà xuất bản Kim Đồng'),
(N'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh'),
(N'Nhà xuất bản Hội Nhà văn'),
(N'Nhà xuất bản Chính trị quốc gia Sự thật'),
(N'Nhà xuất bản Phụ nữ Việt Nam'),
(N'Nhà xuất bản Lao Động '),
(N'Nhã Nam (tư nhân)'),
(N'Đinh Tị Books (tư nhân)'),
(N'Đông A (tư nhân)');

-- Nhập dữ liệu sách
INSERT INTO book (name, price, purchase_price, quantity, author, category_id, publisher_id) VALUES
(N'TÚP LỀU BÁC TOM', 50000, 99000, 10, 'Harriet Beecher Stowe', 25, 2),
(N'How To Make Money In Stock', 350000, 700000, 10, 'William J. O’Neil, Matthew Galgani', 26, 12),
(N'Con Sẽ Thành Công', 30000, 65000, 10, N'Lưu Dung', 27, 11),
(N'Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh', 25000, 52510, 10, N'Tống Mặc', 28, 11),
(N'Từ Điển Tiếng Việt', 225000, 455400, 10, N'GS.Hoàng Phê', 33, 10),
(N'Phương Pháp Đọc Sáng Tạo Của Người Do Thái', 40000, 79400, 10, N'Soon-Doc Ryu', 29, 7),
(N'Huyễn Tưởng Về Trí Tuệ Nhân Tạo', 65000, 131000, 10, 'Gary Smith', 35, 8),
(N'Kiếp Nào Ta Cũng Tìm Thấy Nhau', 34000, 67200, 10, 'Brian L. Weiss', 39, 7),
(N'Doraemon Truyện Ngắn trọn bộ 45 tập', 500000, 990000, 10, 'Fujiko.F.Fujio', 38, 5),
(N'AI 2041 - 10 Viễn cảnh cho tương lai', 145000, 285000, 10, 'Kai-Fu Lee, Chen Qiufan', 43, 4);

-- Nhập dữ liệu đơn hàng
INSERT INTO orders (order_date, customer_id, saler_id, order_total) VALUES
('2020-2-12', 3, 1, 765000),
('2023-5-5', 2, 3, 210400),
('2023-9-1', 4, 2, 131000);

-- Nhập dữ liệu chi tiết đơn hàng
INSERT INTO order_detail (order_id, book_id, amount, price) VALUES
(1, 3, 1, 65000),
(1, 2, 1, 700000),
(2, 7, 1, 131000),
(2, 6, 1, 79400),
(3, 7, 1, 131000);


