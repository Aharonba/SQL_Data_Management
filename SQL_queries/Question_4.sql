SELECT OrderId, RequiredDate
FROM Orders
WHERE shippedDate IS NULL AND RequiredDate < NOW();


-- מטרת השאילתה היא לזהות משלוחים שתאריך המשלוח הנדרש שלהם עבר ועדיין לא נשלחו (כלומר חבילות באיחור), ע״ כך יכולה החברה לטפל בהם בעדיפות עליונה.