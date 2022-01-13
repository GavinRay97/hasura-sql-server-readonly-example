CREATE TABLE [dbo].todo (
    id INT PRIMARY KEY IDENTITY (1, 1),
    title VARCHAR (50) NOT NULL,
    is_completed BIT DEFAULT 'FALSE' NOT NULL
);
INSERT INTO [dbo].todo
    (title)
VALUES
    ('Buy milk'),
    ('Buy eggs'),
    ('Buy bread');
GO

CREATE LOGIN my_readonly_user_example WITH PASSWORD = 'Password123!';
CREATE USER my_readonly_user_example FOR LOGIN my_readonly_user_example;  
GO

ALTER ROLE db_datareader ADD MEMBER my_readonly_user_example
GO