-- Create new account
INSERT INTO public.account (
    account_firstname,
    account_lastname,
    account_email,
    account_password
 )
VALUES (
    'Tony',
    'Stark',
    'tony@startkent.com',
    'Iam1ronM@n'
);

-- UPDATE account_type
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;

-- DELETE record
DELETE FROM public.account
WHERE account_id = 1;

-- UPDATE inventory description
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_id = 10;


-- INNER JOIN for SPORTS cars
SELECT 
    i.inv_make, 
    i.inv_model,
    c.classification_name
FROM
    public.inventory AS i
INNER JOIN public.classification AS c
    ON i.classification_id = c.classification_id
WHERE i.classification_id = 2;

-- UPDATE file paths with '/vehicles'
UPDATE public.inventory
SET 
    inv_image = REPLACE(inv_image, '/images', '/images/vehicles'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images', 'images/vehicles');
