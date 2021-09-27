-- question2: lấy ra tất cả các phòng ban 
SELECT*
FROM department;
-- question3: lấy ra id của phòng ban sale
SELECT DepartmentID
FROM department
WHERE DepartmentName LIKE '%sale%';
-- question4: lấy ra thông tin account có fullname dài nhất
SELECT*
FROM `account`
WHERE LENGTH(FullName) = (SELECT MAX(LENGTH(FullName)) FROM `account`);
-- question5: lấy ra thông tin account có fullname dài nhất và thuộc phòng ban có id =3
SELECT*
FROM `account`
WHERE LENGTH(FullName) = (SELECT MAX(LENGTH(FullName)) FROM `account`) AND DepartmentID = 3;
-- question6: lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT GroupName
FROM `group` 
WHERE CreatedDate < '2019/12/20';
-- question7: lấy ra id của question có >=4 câu trả lời
SELECT q.QuestionID,  COUNT(a.QuestionID) AS qa
FROM question q
INNER JOIN answer a ON q.QuestionID = a.QuestionID
GROUP BY QuestionID
HAVING qa >= 4;
-- question8: lấy ra các mã đề thi có thời gian thi >=60 phút và được tạo trước ngày 20/12/2019 
SELECT `Code`
FROM exam
WHERE Duration >=60 AND CreatedDate < '2019/12/20';
-- question9: lấy ra 5 group được tạo gần đây nhất
SELECT*
FROM `group`
ORDER BY CreatedDate 
LIMIT 5;
-- question10: đếm số nhân viên có department có id =2
SELECT DepartmentID, COUNT(AccountID) as svn
FROM `account`
WHERE DepartmentID = 2;
-- question11: lấy ra tên nhân viên bắt đầu bằng chữ D và kết thúc bằng o 
SELECT FullName
FROM `account`
WHERE FullName LIKE 'D%o';
-- question12: xóa tất cả các exam được tạo sau ngày 20/12/2019 
DELETE 
FROM exam
WHERE CreatedDate > '2019/12/20';
-- question13: xóa tất cả các question có nội dung bắt đầu bằng từ câu hỏi
DELETE
FROM question
WHERE Content = 'câu hỏi%';
-- question14: update thông tin của account có id=5 thành tên Nguyễn Bá Lộc và email thành loc.nguyenba@vti.com.vn
UPDATE `account`
SET FullName = ' Nguyễn Bá Lộc', email = 'loc.nguyenba@vti.com.vn'
WHERE AccountID = 5;
-- question15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE groupaccount
SET AccountID = 5
WHERE GroupID = 4;

( thầy giảng lại giúp em phần delete và update với ạ! em làm theo đúng trình tự
nhưng vẫn bị báo lỗi ạ)
