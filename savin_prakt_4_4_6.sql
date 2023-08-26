use vk;

SELECT users.username, 
CONCAT('User is in chat: ',chats.title,' by theme: ',chats.description) FROM users, chats, users_to_chats
WHERE users.id=users_to_chats.user_id ;

SELECT CONCAT('User ', UPPER(users.username),' is in chat: ',chats.title,' - ',chats.description) 
FROM users, chats, users_to_chats WHERE users.id=users_to_chats.user_id ;

SELECT CONCAT('User ',users.username,' is in chat: ',chats.title, 
' since ',YEAR(users_to_chats.enter_datetime)) 
FROM users, chats, users_to_chats WHERE users.id=users_to_chats.user_id ;

SELECT CONCAT('User ',users.username,' open the chat: ',chats.title, 
' more than ',FLOOR(YEAR(CURRENT_DATE())-YEAR(users_to_chats.enter_datetime)),' years ago') 
FROM users, chats, users_to_chats WHERE users.id=chats.owner_id ;



