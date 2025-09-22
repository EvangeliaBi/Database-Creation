create database Hospital;
    create table Doctor(
    ID int not null, 
    f_name_l_name varchar(100), 
    t_number int(30), 
    b_date date, 
    d_email varchar(100) not null, 
    special varchar(100),
    primary key(ID)
    );

    create table Patient(
        SSN varchar(15) not null, 
        f_name_l_name varchar(100), 
        p_number int(30), 
        p_date date, 
        p_email varchar(100), 
        p_address varchar(255),
        d_ID int not null,
        primary key(SSN), 
        foreign key(d_ID) references Doctor(ID)
    );

    insert into Doctor (ID, f_name_l_name, t_number, b_date, d_email, special)
    values(150785, 'Γιώργος Παπαδόπουλος', 2101234567, '1970-01-15', 'gpapadopoulos@gmail.com', 'Καρδιολόγος');

    insert into Doctor (ID, f_name_l_name, t_number, b_date, d_email, special)
    values(150786, 'Μαρία Ιωάννου', 2107654321, '1980-03-22', 'mioannou@gmail.com', 'Παιδίατρος');

    insert into Doctor (ID, f_name_l_name, t_number, b_date, d_email, special)
    values(150787, 'Κώστας Νικολάου', 2109876543, '1975-07-10', 'knikolaou@gmail.com', 'Ορθοπεδικός');

    insert into Patient (SSN, f_name_l_name, p_number, p_date, p_email, p_address, d_ID)
    values('123-45-6789', 'Αντώνης Δημητρίου', 2106543210, '2000-05-30', 'adimitriou@gmail.com', 'Οδός Παπαδοπούλου 12', 150785);

    insert into Patient (SSN, f_name_l_name, p_number, p_date, p_email, p_address, d_ID)
    values('987-65-4321', 'Ελένη Κωνσταντίνου', 2103456789, '1995-08-15', 'ekonstantinou@gmail.com', 'Οδός Νικολάου 34', 150786);

    insert into Patient (SSN, f_name_l_name, p_number, p_date, p_email, p_address, d_ID)
    values('555-55-5555', 'Παναγιώτης Μακρής', 2108765432, '1988-02-25', 'pmakris@gmail.com', 'Οδός Καρδιών 56', 150787);


    update Doctor
    set special = 'Καρδιοχειρουργός', t_number = 2109999999
    where ID = 150785;

    update Doctor
    set f_name_l_name = 'Μαρία Ιωαννίδη', d_email = 'mariaioannidou@gmail.com'
    where ID = 150786;

    update Doctor
    set b_date = '1974-07-10', special = 'Νευρολόγος'
    where ID = 150787;


    update Patient
    set p_number = 2101234567, p_address = 'Οδός Δημοκρατίας 45'
    where SSN = '123-45-6789';

    update Patient
    set f_name_l_name = 'Αθήνα Παπαδημητρίου', p_date = '1985-08-15'
    where SSN = '987-65-4321';

    update Patient
    set p_email = 'pmakris_new@gmail.com', p_address = 'Οδός Ελευθερίας 78'
    where SSN = '555-55-5555';

    select * from Doctor
    where f_name_l_name LIKE '%Μαρία%' OR b_date < '1980-01-01';

    select * 
    from Patient
    where p_number LIKE '210%' AND d_ID = 150785;

    select * 
    from Doctor
    where t_number LIKE '210%' AND special LIKE '%λόγος%';

    delete from Patient
    where Patient.SSN = '123-45-6789';

    delete from Patient
    where Patient.p_address LIKE '%Οδός%';

    delete from Doctor
    where b_date < '1980-01-01';

















