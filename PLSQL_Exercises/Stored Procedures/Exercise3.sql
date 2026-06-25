-- Scenario 1: Process Monthly Interest
CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest AS
BEGIN
    UPDATE SavingsAccounts
    SET balance = balance + (balance * 0.01);

    COMMIT;
END;
/

-- Scenario 2: Update Employee Bonus
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    p_department_id NUMBER,
    p_bonus_percent NUMBER
)
AS
BEGIN
    UPDATE Employees
    SET salary = salary + (salary * p_bonus_percent / 100)
    WHERE department_id = p_department_id;

    COMMIT;
END;
/

-- Scenario 3: Transfer Funds

CREATE OR REPLACE PROCEDURE TransferFunds(
    p_from_account NUMBER,
    p_to_account NUMBER,
    p_amount NUMBER
)
AS
    v_balance NUMBER;
BEGIN
    SELECT balance
    INTO v_balance
    FROM Accounts
    WHERE account_id = p_from_account;

    IF v_balance >= p_amount THEN

        UPDATE Accounts
        SET balance = balance - p_amount
        WHERE account_id = p_from_account;

        UPDATE Accounts
        SET balance = balance + p_amount
        WHERE account_id = p_to_account;

        COMMIT;

    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
    END IF;
END;
/