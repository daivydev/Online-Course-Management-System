
USE dbfinal;

INSERT INTO users (user_id, full_name, email, password_hash, role) VALUES
('010001', 'Admin User', 'admin@example.com', 'hashedsfs_password', 'admin'),

('020001', 'Nguyen Van A', 'nguyenvana@example.com', 'hashed_psfzassword', 'instructor'),
('020002', 'Nguyen Van B', 'nguyenvanb@example.com', 'hashesfsd_password', 'instructor'),
('020003', 'Nguyen Van C', 'nguyenvanc@example.com', 'hashed_pafaGssword', 'instructor'),
('020004', 'Nguyen Van D', 'nguyenvand@example.com', 'hashed_padassword', 'instructor'),

('220041', 'Tran Thi B', 'tranthib@example.com', 'hashed_pagZgcssword', 'student'),
('220001', 'Pham Thi D', 'phamthid@example.com', 'hashed_passwZFzcsgord', 'student'),
('220002', 'Hoang Van E', 'hoangvdane@example.com', 'hashed_pafafzxfgassword', 'student'),
('220003', 'Nguyen Van F', 'nguyenvanf@example.com', 'hashedasGsdfz_password', 'student'),
('220004', 'Bui Thi G', 'buithig@example.com', 'hashed_pazfzvgssword', 'student'),
('220005', 'Doan Van H', 'doanvanh@example.com', 'hashsgzxfed_password', 'student'),
('220006', 'Pham Van I', 'phamvani@example.com', 'hashed_hdfchpassword', 'student'),
('220007', 'Ngo Thi J', 'ngothij@example.com', 'hashed_paAjssword', 'student'),
('220008', 'Trinh Van K', 'trinhvank@example.com', 'hashed_xndtpassword', 'student'),
('220009', 'Vo Thi L', 'vothil@example.com', 'hashed_pbdbgrdassword', 'student'),
('220010', 'Duong Van M', 'duongvanm@example.com', 'hashbxdrbed_password', 'student'),

('220042', 'Le Van C', 'levanc@example.com', 'hashed_pabxxgssword', 'student'),
('220011', 'Ly Van N', 'lyvann@example.com', 'hashed_paszbgbsword', 'student'),
('220012', 'Truong Thi O', 'truongthio@example.com', 'hashzbrbed_password', 'student'),
('220013', 'Nguyen Van P', 'nguyenvanp@example.com', 'hashexbrd_password', 'student'),
('220014', 'Phan Thi Q', 'phanthiq@example.com', 'hashed_paxnssword', 'student'),
('220015', 'Dinh Van R', 'dinhvanr@example.com', 'hashed_pxnassword', 'student'),
('220016', 'Cao Thi S', 'caothis@example.com', 'hashed_pahmssword', 'student'),
('220017', 'Tran Van T', 'tranvant@example.com', 'hashed_paadjssword', 'student'),
('220018', 'Le Thi U', 'lethiu@example.com', 'hashed_passwodtjrd', 'student'),
('220019', 'Nguyen Van V', 'nguyenvanv@example.com', 'hashgkdxhed_password', 'student'),
('220020', 'Dang Thi W', 'dangthiw@example.com', 'hashed_pasjtrssword', 'student'),

('210021', 'Pham Thi D', 'phamthid2@example.com', 'hashed_peyassword', 'student'),
('210022', 'Hoang Van E', 'hoangvane2@example.com', 'hashed_pfgdassword', 'student'),
('210023', 'Nguyen Van X', 'nguyenvanx@example.com', 'hashed_pjxfgjassword', 'student'),
('210024', 'Bui Van Y', 'buivany@example.com', 'hashed_pfxjgassword', 'student'),
('210025', 'Do Van Z', 'dovanz@example.com', 'hashed_pafgjfjssword', 'student'),
('210026', 'Luong Thi A', 'luongthia@example.com', 'hashxfgjed_password', 'student'),
('210027', 'Dang Van B', 'dangvanb@example.com', 'hashed_pasxgjjfsword', 'student'),
('210028', 'Tran Thi C', 'tranthic@example.com', 'hashed_xfjjxpassword', 'student'),
('210029', 'Nguyen Minh D', 'nguyenminhd@example.com', 'hashexfjfjd_password', 'student'),
('210030', 'Le Quang E', 'lequange@example.com', 'hashedxhfxj_password', 'student'),

('210044', 'Hoang Van E', 'hoangvane@example.com', 'hashedxfgjxfjvc_password', 'student'),
('210031', 'Pham Thi D', 'phamthid3@example.com', 'hashfxjfxgjed_password', 'student'),
('210032', 'Hoang Van E', 'hoangvane3@example.com', 'hasxfgjfgbvnhed_password', 'student'),
('210033', 'Vu Van F', 'vuvanf@example.com', 'hashed_paxfjfgjssword', 'student'),
('210034', 'Dinh Thi G', 'dinhthig@example.com', 'hashed_pxfgjvbassword', 'student'),
('210035', 'Cao Van H', 'caovanh@example.com', 'hashed_xfgjgvbjnpassword', 'student'),
('210036', 'Doan Thi I', 'doanthiI@example.com', 'hashexfgjvbjd_password', 'student'),
('210037', 'Pham Van J', 'phamvanj@example.com', 'haxfgjxfshed_password', 'student'),
('210038', 'Ngo Thi K', 'ngothik@example.com', 'hashed_passwxfjfxjord', 'student'),
('210039', 'Trinh Van L', 'trinhvanl@example.com', 'zdhhhashed_password', 'student'),
('210040', 'Ly Thi M', 'lythim@example.com', 'hashed_pzdhdhassword', 'student');





INSERT INTO courses (course_id, course_name, description, created_by) VALUES
(1, 'Software Technology', 'Công nghệ phần mềm', '010001'),
(2, 'Database Design', 'Thiết kế cơ sở dữ liệu', '010001'),
(3, 'Machine Learning', 'Học máy và trí tuệ nhân tạo', '010001'),
(4, 'Cybersecurity', 'An toàn thông tin', '010001');




INSERT INTO course_instructors (course_id, instructor_id) VALUES
(1, '020001'), -- Nguyễn Văn A dạy Software Technology
(2, '020002'), -- Nguyễn Văn B dạy Database Design
(3, '020003'), -- Nguyễn Văn C dạy Machine Learning
(4, '020004'); -- Nguyễn Văn D dạy Cybersecurity



-- xx
INSERT INTO enrollments (student_id, course_id) VALUES
('220041', 1),
('220001', 1),
('220002', 1),
('220003', 1),
('220004', 1),
('220005', 1),
('220006', 1),
('220007', 1),
('220008', 1),
('220009', 1),
('220010', 1), -- Software Technology

('220042', 2),
('220011', 2),
('220012', 2),
('220013', 2),
('220014', 2),
('220015', 2),
('220016', 2),
('220017', 2),
('220018', 2),
('220019', 2),
('220020', 2), -- Database Design

('210021', 3),
('210022', 3),
('210023', 3),
('210024', 3),
('210025', 3),
('210026', 3),
('210027', 3),
('210028', 3),
('210029', 3),
('210030', 3), -- Machine Learning

('210044', 4),
('210031', 4),
('210032', 4),
('210033', 4),
('210034', 4),
('210035', 4),
('210036', 4),
('210037', 4),
('210038', 4),
('210039', 4),
('210040', 4); -- Cybersecurity






INSERT INTO assignments (course_id, instructor_id, title, description, due_date) VALUES
(1, '020001', 'Bài tập 1: Lập trình phần mềm', 'Viết chương trình quản lý sinh viên', '2025-03-01'),
(2, '020002', 'Bài tập 1: Thiết kế Database', 'Tạo database cho hệ thống e-learning', '2025-03-05'),
(3, '020003', 'Bài tập 1: Machine Learning', 'Xây dựng mô hình phân loại dữ liệu', '2025-03-10'),
(4, '020004', 'Bài tập 1: An toàn thông tin', 'Mô phỏng tấn công SQL Injection', '2025-03-15');




-- xx
INSERT INTO submissions (assignment_id, student_id, file_url) VALUES
(1, '220041', 'https://example.com/submission41.pdf'),
(1, '220001', 'https://example.com/submission01.pdf'),
(1, '220002', 'https://example.com/submission02.pdf'),
(1, '220003', 'https://example.com/submission03.pdf'),
(1, '220004', 'https://example.com/submission04.pdf'),
(1, '220005', 'https://example.com/submission05.pdf'),
(1, '220006', 'https://example.com/submission06.pdf'),
(1, '220007', 'https://example.com/submission07.pdf'),
(1, '220008', 'https://example.com/submission08.pdf'),
(1, '220009', 'https://example.com/submission09.pdf'),
(1, '220010', 'https://example.com/submission10.pdf'),

(2, '220042', 'https://example.com/submission42.pdf'),
(2, '220011', 'https://example.com/submission11.pdf'),
(2, '220012', 'https://example.com/submission12.pdf'),
(2, '220013', 'https://example.com/submission13.pdf'),
(2, '220014', 'https://example.com/submission14.pdf'),
(2, '220015', 'https://example.com/submission15.pdf'),
(2, '220016', 'https://example.com/submission16.pdf'),
(2, '220017', 'https://example.com/submission17.pdf'),
(2, '220018', 'https://example.com/submission18.pdf'),
(2, '220019', 'https://example.com/submission19.pdf'),
(2, '220020', 'https://example.com/submission20.pdf'),

(3, '210021', 'https://example.com/submission21.pdf'),
(3, '210022', 'https://example.com/submission22.pdf'),
(3, '210023', 'https://example.com/submission23.pdf'),
(3, '210024', 'https://example.com/submission24.pdf'),
(3, '210025', 'https://example.com/submission25.pdf'),
(3, '210026', 'https://example.com/submission26.pdf'),
(3, '210027', 'https://example.com/submission27.pdf'),
(3, '210028', 'https://example.com/submission28.pdf'),
(3, '210029', 'https://example.com/submission29.pdf'),
(3, '210030', 'https://example.com/submission30.pdf'),

(4, '210044', 'https://example.com/submission44.pdf'),
(4, '210031', 'https://example.com/submission31.pdf'),
(4, '210032', 'https://example.com/submission32.pdf'),
(4, '210033', 'https://example.com/submission33.pdf'),
(4, '210034', 'https://example.com/submission34.pdf'),
(4, '210035', 'https://example.com/submission35.pdf'),
(4, '210036', 'https://example.com/submission36.pdf'),
(4, '210037', 'https://example.com/submission37.pdf'),
(4, '210038', 'https://example.com/submission38.pdf'),
(4, '210039', 'https://example.com/submission39.pdf'),
(4, '210040', 'https://example.com/submission40.pdf');




-- xx
INSERT INTO grades (submission_id, grader_id, grade, feedback) VALUES
(1, '020001', 85, 'Bài làm tốt nhưng cần cải thiện code'),
(2, '020001', 90, 'Thiết kế database hợp lý'),
(3, '020001', 88, 'Mô hình AI chạy tốt, cần tối ưu hơn'),
(4, '020001', 92, 'Phát hiện lỗ hổng bảo mật tốt'),
(5, '020001', 78, 'Cần bổ sung thêm tài liệu tham khảo'),
(6, '020001', 95, 'Bài làm xuất sắc, đạt yêu cầu cao'),
(7, '020001', 80, 'Code chạy đúng nhưng cần cải tiến hiệu suất'),
(8, '020001', 85, 'Phân tích dữ liệu khá tốt, nhưng thiếu biểu đồ minh họa'),
(9, '020001', 89, 'Ứng dụng có giao diện đẹp, cần tối ưu UX'),
(10, '020001', 76, 'Cần trình bày rõ ràng hơn và sửa một số lỗi logic'),
(11, '020002', 90, 'Thiết kế database hợp lý'),
(12, '020002', 85, 'Mô hình Machine Learning có thể tối ưu hơn'),
(13, '020002', 88, 'Bảo mật tốt, cần bổ sung tài liệu tham khảo'),
(14, '020002', 80, 'Cần cải thiện hiệu suất thuật toán'),
(15, '020002', 92, 'Database được thiết kế hợp lý, tối ưu truy vấn tốt'),
(16, '020002', 87, 'Ứng dụng hoạt động đúng nhưng giao diện chưa đẹp'),
(17, '020002', 90, 'Bảo mật hệ thống ổn nhưng thiếu kiểm thử'),
(18, '020002', 85, 'Code chạy đúng nhưng cần viết gọn hơn'),
(19, '020002', 94, 'Mô hình dữ liệu xuất sắc, phân tích chuyên sâu'),
(20, '020002', 89, 'Machine Learning đạt độ chính xác cao, cần thêm thử nghiệm'),
(21, '020003', 88, 'Mô hình AI chạy tốt, cần tối ưu hơn'),
(22, '020003', 91, 'Bài làm có tính sáng tạo, cần bổ sung tài liệu'),
(23, '020003', 85, 'Thuật toán tốt nhưng cần cải thiện tốc độ'),
(24, '020003', 90, 'Cấu trúc code gọn gàng, dễ bảo trì'),
(25, '020003', 87, 'Ứng dụng hoạt động ổn định, giao diện có thể cải thiện'),
(26, '020003', 89, 'Bảo mật dữ liệu tốt nhưng cần thêm kiểm thử'),
(27, '020003', 92, 'Mô hình Machine Learning đạt độ chính xác cao'),
(28, '020003', 86, 'Phân tích dữ liệu hợp lý, thiếu tài liệu tham khảo'),
(29, '020003', 94, 'Hệ thống chạy hiệu quả, tối ưu tốt'),
(30, '020003', 90, 'Ứng dụng đầy đủ tính năng, cần cải thiện UX/UI'),
(31, '020004', 92, 'Phát hiện lỗ hổng bảo mật tốt'),
(32, '020004', 88, 'Cải thiện thuật toán mã hóa dữ liệu'),
(33, '020004', 90, 'Ứng dụng bảo mật ổn định, cần thêm logging'),
(34, '020004', 85, 'Tường lửa hoạt động hiệu quả, cần kiểm tra thêm'),
(35, '020004', 91, 'Phân quyền người dùng hợp lý, dễ quản lý'),
(36, '020004', 87, 'Hệ thống chống tấn công SQL Injection tốt'),
(37, '020004', 93, 'Cơ chế xác thực mạnh mẽ, phù hợp với tiêu chuẩn bảo mật'),
(38, '020004', 89, 'Hệ thống có thể mở rộng, cần tối ưu hiệu suất'),
(39, '020004', 86, 'Giảm thiểu rủi ro bảo mật bằng cách cải tiến mã nguồn'),
(40, '020004', 94, 'Phát hiện và xử lý xâm nhập trái phép tốt');


INSERT INTO attendance (course_id, student_id, instructor_id, attendance_date, status) VALUES
(1, '220041', '020001', '2025-02-25', 'present'),
(1, '220001', '020001', '2025-02-25', 'present'),
(1, '220002', '020001', '2025-02-25', 'present'),
(1, '220003', '020001', '2025-02-25', 'present'),
(1, '220004', '020001', '2025-02-25', 'late'),
(1, '220005', '020001', '2025-02-25', 'present'),
(1, '220006', '020001', '2025-02-25', 'present'),
(1, '220007', '020001', '2025-02-25', 'late'),
(1, '220008', '020001', '2025-02-25', 'present'),
(1, '220009', '020001', '2025-02-25', 'present'),
(1, '220010', '020001', '2025-02-25', 'present'),

(2, '220042', '020002', '2025-02-25', 'absent'),
(2, '220011', '020002', '2025-02-25', 'absent'),
(2, '220012', '020002', '2025-02-25', 'absent'),
(2, '220013', '020002', '2025-02-25', 'absent'),
(2, '220014', '020002', '2025-02-25', 'absent'),
(2, '220015', '020002', '2025-02-25', 'absent'),
(2, '220016', '020002', '2025-02-25', 'absent'),
(2, '220017', '020002', '2025-02-25', 'absent'),
(2, '220018', '020002', '2025-02-25', 'absent'),
(2, '220019', '020002', '2025-02-25', 'absent'),
(2, '220020', '020002', '2025-02-25', 'absent'),

(3, '210021', '020003', '2025-02-25', 'late'),
(3, '210022', '020003', '2025-02-25', 'late'),
(3, '210023', '020003', '2025-02-25', 'late'),
(3, '210024', '020003', '2025-02-25', 'late'),
(3, '210025', '020003', '2025-02-25', 'late'),
(3, '210026', '020003', '2025-02-25', 'late'),
(3, '210027', '020003', '2025-02-25', 'late'),
(3, '210028', '020003', '2025-02-25', 'late'),
(3, '210029', '020003', '2025-02-25', 'late'),
(3, '210030', '020003', '2025-02-25', 'late'),

(4, '210044', '020004', '2025-02-25', 'present'),
(4, '210031', '020004', '2025-02-25', 'present'),
(4, '210032', '020004', '2025-02-25', 'present'),
(4, '210033', '020004', '2025-02-25', 'present'),
(4, '210034', '020004', '2025-02-25', 'present'),
(4, '210035', '020004', '2025-02-25', 'present'),
(4, '210036', '020004', '2025-02-25', 'present'),
(4, '210037', '020004', '2025-02-25', 'present'),
(4, '210038', '020004', '2025-02-25', 'present'),
(4, '210039', '020004', '2025-02-25', 'present'),
(4, '210040', '020004', '2025-02-25', 'present');


-- xx
INSERT INTO feedbacks (student_id, course_id, rating, comment) VALUES
('220001', 1, 5, 'Khóa học rất bổ ích, giảng viên giảng dễ hiểu'),
('220002', 1, 5, 'Khóa học rất bổ ích, giảng viên nhiệt tình'),
('220003', 1, 4, 'Giảng viên giảng dễ hiểu nhưng cần thêm ví dụ thực tế'),
('220004', 1, 3, 'Nội dung khóa học ổn nhưng phần thực hành còn ít'),
('220005', 1, 2, 'Khóa học khá khó hiểu, cần cải thiện cách trình bày'),
('220006', 1, 5, 'Bài giảng rõ ràng, nhiều ví dụ hay'),
('220007', 1, 4, 'Kiến thức chuyên sâu, giảng viên giảng tốt'),
('220008', 1, 1, 'Khóa học không như mong đợi, nội dung khó tiếp thu'),
('220009', 1, 3, 'Cần cải thiện phần hỗ trợ học viên trong khóa học'),
('220010', 1, 5, 'Khóa học xuất sắc, rất đáng tham gia'),
('220041', 1, 2, 'Giảng viên giảng nhanh, khó theo kịp bài học'),
('220042', 2, 4, 'Khóa học tốt nhưng nội dung hơi nặng'),
('220012', 2, 5, 'Giảng viên giảng rất cuốn hút, khóa học tuyệt vời'),
('220013', 2, 4, 'Kiến thức hay nhưng phần bài tập hơi khó'),
('220014', 2, 3, 'Nội dung ổn nhưng cần thêm bài tập thực hành'),
('220015', 2, 2, 'Chương trình học nặng, khó theo kịp'),
('220016', 2, 5, 'Khóa học rất bổ ích, dễ hiểu, nhiều ví dụ hay'),
('220017', 2, 1, 'Khóa học chưa như mong đợi, cần cải thiện nội dung'),
('220018', 2, 3, 'Bài giảng tốt nhưng cần hỗ trợ thêm cho sinh viên'),
('220019', 2, 4, 'Giảng viên giảng tốt, nhưng cần thêm thời gian ôn tập'),
('220020', 2, 2, 'Bài giảng khó hiểu, nên trình bày chậm hơn'),
('220011', 2, 5, 'Tuyệt vời, khóa học rất đáng giá'),
('210021', 3, 4, 'Khóa học thú vị, nhưng bài tập hơi nhiều'),
('210022', 3, 3, 'Nội dung tốt nhưng cần thêm ví dụ thực tế'),
('210023', 3, 5, 'Giảng viên dạy rất có tâm, dễ hiểu và thực tế'),
('210024', 3, 2, 'Khóa học khá khó, cần hướng dẫn chi tiết hơn'),
('210025', 3, 1, 'Quá khó, không theo kịp bài giảng'),
('210026', 3, 5, 'Bài giảng chất lượng, giúp nắm vững Machine Learning'),
('210027', 3, 4, 'Giảng viên giảng hay, nhưng tốc độ hơi nhanh'),
('210028', 3, 3, 'Khóa học ổn, nhưng phần lý thuyết hơi dài'),
('210029', 3, 2, 'Không dễ tiếp cận, cần có thêm bài giảng nền tảng'),
('210030', 3, 5, 'Ứng dụng thực tế nhiều, rất đáng học'),
('210044', 4, 3, 'An toàn thông tin quan trọng nhưng cần thêm ví dụ thực tế'),
('210031', 4, 5, 'Khóa học rất hữu ích, giảng viên giảng dễ hiểu'),
('210032', 4, 4, 'Nội dung chuyên sâu nhưng cần thêm bài tập thực hành'),
('210033', 4, 3, 'Bài giảng ổn nhưng chưa có nhiều ví dụ thực tế'),
('210034', 4, 2, 'Chưa rõ ràng lắm, tài liệu hơi khó hiểu'),
('210035', 4, 1, 'Quá phức tạp, cần hướng dẫn chi tiết hơn'),
('210036', 4, 5, 'Giảng viên rất giỏi, học được nhiều kiến thức mới'),
('210037', 4, 4, 'Khóa học tốt, nhưng tốc độ giảng hơi nhanh'),
('210038', 4, 3, 'Cần bổ sung thêm tình huống thực tế để dễ áp dụng'),
('210039', 4, 2, 'Bài giảng hơi khô khan, khó tiếp thu'),
('210040', 4, 5, 'Khóa học tuyệt vời, giúp hiểu rõ về bảo mật thông tin');
