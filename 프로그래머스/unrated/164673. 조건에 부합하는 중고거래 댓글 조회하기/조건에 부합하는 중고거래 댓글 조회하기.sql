-- 코드를 입력하세요

-- WHERE DATE_FORMAT(A.CREATED_DATE, '%Y-%m') = '2022-10'
-- ORDER BY 6, 1

# SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS,DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d')
# -- SELECT문 순서에 따라 table 만들어 짐
# FROM USED_GOODS_BOARD A
# JOIN USED_GOODS_REPLY B
# ON A.BOARD_ID = B.BOARD_ID

SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, DATE_FORMAT(B.CREATED_DATE, '%Y-%m-%d')
-- 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회
FROM USED_GOODS_BOARD A
JOIN USED_GOODS_REPLY B
# ON A.BOARD_ID = B.BOARD_ID

# FROM USED_GOODS_REPLY B
# JOIN USED_GOODS_BOARD A
ON A.BOARD_ID = B.BOARD_ID
WHERE DATE_FORMAT(A.CREATED_DATE, '%Y-%m') = '2022-10'
-- 2022년 10월에 작성된 
ORDER BY 6, 1
-- 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.