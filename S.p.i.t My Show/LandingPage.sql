SET SERVEROUTPUT ON;
SET VERIFY OFF;
PROMPT
-- Use PROMPT to interact dynamically outside PL/SQL
PROMPT =============================================================
PROMPT 
PROMPT '              Welcome to SPIT MY SHOW                     '                   
PROMPT '                  Movies and Events                       '          
         -- 20% Discounts on all movies for SPIT Students

-- Prompt for user input

ACCEPT user_type CHAR PROMPT 'New User? Press [N/n], Existing User? Press [E/e]: '


-- Begin PL/SQL Block
DECLARE
    user_type CHAR(1);  -- Store input type
BEGIN
    -- Store the input value into the variable
    user_type := '&user_type';
    
    -- Condition for new or existing user
    
    IF user_type = 'N' OR user_type = 'n' THEN
        dbms_output.put_line('Running new user script...');
        -- Use dbms_output as placeholders for external script
        dbms_output.put_line('Executing @newuser.sql script...');
    ELSIF user_type = 'E' OR user_type = 'e' THEN
        dbms_output.put_line('Running existing user script...');
        dbms_output.put_line('Executing @existinguser.sql script...');
    ELSE
        dbms_output.put_line('Invalid input. Please press N or E.');
    END IF;
    
    dbms_output.put_line('=============================================================');
    
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('Error occurred!');
END;
/

-- Final message after PL/SQL block execution
-- PROMPT =============================================================
-- PROMPT             Thank you for using SPIT MY SHOW            
-- PROMPT =============================================================
