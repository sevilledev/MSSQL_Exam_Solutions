CREATE PROCEDURE MultiplyProc (
    @a INT,
    @b INT,
    @c INT,
    @d INT,
    @result INT OUTPUT
)
AS
BEGIN
    SET @result = @a * @b * @c * @d
END

DECLARE @res INT;

exec dbo.MultiplyProc @a = 5, @b = 100, @c = 2, @d = 1, @result = @res OUTPUT;

SELECT @res AS result;