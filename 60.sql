CREATE FUNCTION Multiply (
    @a INT,
    @b INT,
    @c INT,
    @d INT
)
RETURNS INT
AS
BEGIN
    RETURN @a * @b * @c * @d
END;

SELECT dbo.Multiply(2, 5, 10, 3) AS result;