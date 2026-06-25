-- Scenario 1: Discount for customers above 60
DECLARE
    age NUMBER := 65;
    interest_rate NUMBER := 10;
BEGIN
    IF age > 60 THEN
        interest_rate := interest_rate - 1;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Interest Rate = ' || interest_rate);
END;
/

-- Scenario 2: VIP Customer
DECLARE
    balance NUMBER := 15000;
    isVIP VARCHAR2(5);
BEGIN
    IF balance > 10000 THEN
        isVIP := 'TRUE';
    ELSE
        isVIP := 'FALSE';
    END IF;

    DBMS_OUTPUT.PUT_LINE('VIP Status = ' || isVIP);
END;
/

-- Scenario 3: Loan Reminder
DECLARE
    loan_due_days NUMBER := 20;
BEGIN
    IF loan_due_days <= 30 THEN
        DBMS_OUTPUT.PUT_LINE('Reminder: Your loan is due within 30 days');
    END IF;
END;
/