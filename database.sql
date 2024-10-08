PGDMP  :                     |         	   DBProjeV2    16.0    16.0 m    s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    25637 	   DBProjeV2    DATABASE        CREATE DATABASE "DBProjeV2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "DBProjeV2";
                postgres    false            �            1259    25753 	   bill_rent    TABLE     _   CREATE TABLE public.bill_rent (
    reservationid character(9) NOT NULL,
    amount integer
);
    DROP TABLE public.bill_rent;
       public         heap    postgres    false            �            1259    25898    bill_scooter    TABLE     �   CREATE TABLE public.bill_scooter (
    amount numeric(10,2),
    serviceid character(9) NOT NULL,
    scooterid character(9) NOT NULL,
    parkphoto character(1)
);
     DROP TABLE public.bill_scooter;
       public         heap    postgres    false            �            1259    25883    bill_tag    TABLE     �   CREATE TABLE public.bill_tag (
    amount numeric(10,2),
    ridetype character varying(10),
    serviceid character(9) NOT NULL,
    driverid character(9) NOT NULL
);
    DROP TABLE public.bill_tag;
       public         heap    postgres    false            �            1259    25763    bill_ticket    TABLE     _   CREATE TABLE public.bill_ticket (
    amount numeric(10,2),
    yolculukno integer NOT NULL
);
    DROP TABLE public.bill_ticket;
       public         heap    postgres    false            �            1259    25858    car    TABLE     �   CREATE TABLE public.car (
    plaka character varying(20) NOT NULL,
    seatno integer,
    model character varying(50),
    type character varying(50),
    driverid character(9) NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    25713    car_rent    TABLE     y   CREATE TABLE public.car_rent (
    serviceid character(9) NOT NULL,
    musteriehliyet character varying(20) NOT NULL
);
    DROP TABLE public.car_rent;
       public         heap    postgres    false            �            1259    25648    customer    TABLE     �   CREATE TABLE public.customer (
    customerid integer NOT NULL,
    phonenumber character(11),
    birthdate date,
    name character varying(15) NOT NULL,
    balance numeric(10,2) NOT NULL,
    preference character varying(15)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    25913    customer_customerid_seq    SEQUENCE     �   ALTER TABLE public.customer ALTER COLUMN customerid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customer_customerid_seq
    START WITH 1001
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    25828    driver    TABLE     �   CREATE TABLE public.driver (
    driverid character(9) NOT NULL,
    puan integer,
    name character varying(10),
    ehliyetno character varying(20)
);
    DROP TABLE public.driver;
       public         heap    postgres    false            �            1259    25708    durak    TABLE       CREATE TABLE public.durak (
    durakid character(9) NOT NULL,
    city character varying(9) NOT NULL,
    name character varying(9) NOT NULL,
    airport character(1),
    liman character(1),
    izbanistasyonu character(1),
    trenistasyonu character(1),
    otogar character(1)
);
    DROP TABLE public.durak;
       public         heap    postgres    false            �            1259    25743    marti    TABLE     �   CREATE TABLE public.marti (
    serviceid character(9) NOT NULL,
    kmucreti integer,
    acilisucreti integer,
    mesafe integer
);
    DROP TABLE public.marti;
       public         heap    postgres    false            �            1259    25663    payment    TABLE     �   CREATE TABLE public.payment (
    amount numeric(10,2) NOT NULL,
    serviceid character(9) NOT NULL,
    customerid integer NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    25678    previous_trips    TABLE     u   CREATE TABLE public.previous_trips (
    city character varying(15) NOT NULL,
    serviceid character(9) NOT NULL
);
 "   DROP TABLE public.previous_trips;
       public         heap    postgres    false            �            1259    25723    rentedvehicle    TABLE       CREATE TABLE public.rentedvehicle (
    rentedvehicleid integer NOT NULL,
    km_limit integer,
    plaka character varying(10) NOT NULL,
    aractipi character varying(10),
    depozitoucret integer,
    model character varying(10),
    gunlukucret integer
);
 !   DROP TABLE public.rentedvehicle;
       public         heap    postgres    false            �            1259    25728    reservation    TABLE     L  CREATE TABLE public.reservation (
    reservationid character(9) NOT NULL,
    teslimverisyeri character varying(100),
    teslimalisyeri character varying(100),
    rezervasyonbaslangictarihi date,
    rezervasyonbitistarihi date,
    gunsayisi integer,
    serviceid character(9) NOT NULL,
    rentedvehicleid integer NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            �            1259    25868    ride    TABLE     C  CREATE TABLE public.ride (
    dropofflocation character varying(100),
    pickuplocation character varying(100),
    ridetype character varying(50),
    serviceid character(9) NOT NULL,
    driverid character(9) NOT NULL,
    ceza numeric(10,2),
    dep_date time without time zone,
    arr_date time without time zone
);
    DROP TABLE public.ride;
       public         heap    postgres    false            �            1259    25848    scooter    TABLE     �   CREATE TABLE public.scooter (
    scooterid character(9) NOT NULL,
    bataryayuzdesi integer,
    scooterlocation character varying(100),
    serviceid character(9) NOT NULL
);
    DROP TABLE public.scooter;
       public         heap    postgres    false            �            1259    25818    scooterselection    TABLE     �   CREATE TABLE public.scooterselection (
    dkucreti numeric(10,2),
    serviceid character(9) NOT NULL,
    surussuresi time without time zone,
    kmucreti integer,
    acilisucreti integer,
    mesafe integer
);
 $   DROP TABLE public.scooterselection;
       public         heap    postgres    false            �            1259    25833    seat    TABLE     x   CREATE TABLE public.seat (
    seat_no integer NOT NULL,
    yolculukno integer NOT NULL,
    legno integer NOT NULL
);
    DROP TABLE public.seat;
       public         heap    postgres    false            �            1259    25653    service    TABLE     �   CREATE TABLE public.service (
    serviceid character(9) NOT NULL,
    customerid integer NOT NULL,
    gidis_tarihi date NOT NULL,
    genelvarisyeri character varying(30) NOT NULL,
    genelkalkisyeri character varying(30) NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false            �            1259    25808    tagselection    TABLE     �   CREATE TABLE public.tagselection (
    serviceid character(9) NOT NULL,
    kmucreti integer,
    acilisucreti integer,
    mesafe integer
);
     DROP TABLE public.tagselection;
       public         heap    postgres    false            �            1259    25773 
   ticket_leg    TABLE       CREATE TABLE public.ticket_leg (
    biletsinifi character varying(50),
    kalkisyeri character varying(15),
    varisyeri character varying(15),
    serviceid character(9) NOT NULL,
    yolculukno integer NOT NULL,
    arr_date date NOT NULL,
    dep_date date NOT NULL
);
    DROP TABLE public.ticket_leg;
       public         heap    postgres    false            �            1259    25688    ticketbased    TABLE     o   CREATE TABLE public.ticketbased (
    serviceid character(9) NOT NULL,
    refundflag character(1) NOT NULL
);
    DROP TABLE public.ticketbased;
       public         heap    postgres    false            �            1259    25703    vehicle    TABLE       CREATE TABLE public.vehicle (
    vehicleid character(9) NOT NULL,
    vehicletype character varying(10) NOT NULL,
    totalnoofseats integer,
    izban character(1),
    feribot character(1),
    airplane character(1),
    otobus character(1),
    tren character(1)
);
    DROP TABLE public.vehicle;
       public         heap    postgres    false            �            1259    25698    yolculuk    TABLE     �   CREATE TABLE public.yolculuk (
    yolculukno integer NOT NULL,
    sefertipi character varying(10) NOT NULL,
    kullanilansite character varying(10)
);
    DROP TABLE public.yolculuk;
       public         heap    postgres    false            �            1259    25788    yolculuk_leg    TABLE     ^  CREATE TABLE public.yolculuk_leg (
    legno integer NOT NULL,
    noofavailableseats integer,
    yolculukno integer NOT NULL,
    durakid character(9) NOT NULL,
    arr_time time without time zone,
    dep_time time without time zone,
    dep_date time without time zone,
    arr_date time without time zone,
    vehicleid character(9) NOT NULL
);
     DROP TABLE public.yolculuk_leg;
       public         heap    postgres    false            c          0    25753 	   bill_rent 
   TABLE DATA           :   COPY public.bill_rent (reservationid, amount) FROM stdin;
    public          postgres    false    227   Ԏ       o          0    25898    bill_scooter 
   TABLE DATA           O   COPY public.bill_scooter (amount, serviceid, scooterid, parkphoto) FROM stdin;
    public          postgres    false    239   �       n          0    25883    bill_tag 
   TABLE DATA           I   COPY public.bill_tag (amount, ridetype, serviceid, driverid) FROM stdin;
    public          postgres    false    238   �       d          0    25763    bill_ticket 
   TABLE DATA           9   COPY public.bill_ticket (amount, yolculukno) FROM stdin;
    public          postgres    false    228   +�       l          0    25858    car 
   TABLE DATA           C   COPY public.car (plaka, seatno, model, type, driverid) FROM stdin;
    public          postgres    false    236   H�       _          0    25713    car_rent 
   TABLE DATA           =   COPY public.car_rent (serviceid, musteriehliyet) FROM stdin;
    public          postgres    false    223   e�       W          0    25648    customer 
   TABLE DATA           a   COPY public.customer (customerid, phonenumber, birthdate, name, balance, preference) FROM stdin;
    public          postgres    false    215   ��       i          0    25828    driver 
   TABLE DATA           A   COPY public.driver (driverid, puan, name, ehliyetno) FROM stdin;
    public          postgres    false    233   �       ^          0    25708    durak 
   TABLE DATA           k   COPY public.durak (durakid, city, name, airport, liman, izbanistasyonu, trenistasyonu, otogar) FROM stdin;
    public          postgres    false    222   <�       b          0    25743    marti 
   TABLE DATA           J   COPY public.marti (serviceid, kmucreti, acilisucreti, mesafe) FROM stdin;
    public          postgres    false    226   Y�       Y          0    25663    payment 
   TABLE DATA           @   COPY public.payment (amount, serviceid, customerid) FROM stdin;
    public          postgres    false    217   v�       Z          0    25678    previous_trips 
   TABLE DATA           9   COPY public.previous_trips (city, serviceid) FROM stdin;
    public          postgres    false    218   ��       `          0    25723    rentedvehicle 
   TABLE DATA           v   COPY public.rentedvehicle (rentedvehicleid, km_limit, plaka, aractipi, depozitoucret, model, gunlukucret) FROM stdin;
    public          postgres    false    224   ��       a          0    25728    reservation 
   TABLE DATA           �   COPY public.reservation (reservationid, teslimverisyeri, teslimalisyeri, rezervasyonbaslangictarihi, rezervasyonbitistarihi, gunsayisi, serviceid, rentedvehicleid) FROM stdin;
    public          postgres    false    225   ͐       m          0    25868    ride 
   TABLE DATA           x   COPY public.ride (dropofflocation, pickuplocation, ridetype, serviceid, driverid, ceza, dep_date, arr_date) FROM stdin;
    public          postgres    false    237   �       k          0    25848    scooter 
   TABLE DATA           X   COPY public.scooter (scooterid, bataryayuzdesi, scooterlocation, serviceid) FROM stdin;
    public          postgres    false    235   �       h          0    25818    scooterselection 
   TABLE DATA           l   COPY public.scooterselection (dkucreti, serviceid, surussuresi, kmucreti, acilisucreti, mesafe) FROM stdin;
    public          postgres    false    232   $�       j          0    25833    seat 
   TABLE DATA           :   COPY public.seat (seat_no, yolculukno, legno) FROM stdin;
    public          postgres    false    234   A�       X          0    25653    service 
   TABLE DATA           g   COPY public.service (serviceid, customerid, gidis_tarihi, genelvarisyeri, genelkalkisyeri) FROM stdin;
    public          postgres    false    216   ^�       g          0    25808    tagselection 
   TABLE DATA           Q   COPY public.tagselection (serviceid, kmucreti, acilisucreti, mesafe) FROM stdin;
    public          postgres    false    231   đ       e          0    25773 
   ticket_leg 
   TABLE DATA           s   COPY public.ticket_leg (biletsinifi, kalkisyeri, varisyeri, serviceid, yolculukno, arr_date, dep_date) FROM stdin;
    public          postgres    false    229   �       [          0    25688    ticketbased 
   TABLE DATA           <   COPY public.ticketbased (serviceid, refundflag) FROM stdin;
    public          postgres    false    219   ��       ]          0    25703    vehicle 
   TABLE DATA           q   COPY public.vehicle (vehicleid, vehicletype, totalnoofseats, izban, feribot, airplane, otobus, tren) FROM stdin;
    public          postgres    false    221   �       \          0    25698    yolculuk 
   TABLE DATA           I   COPY public.yolculuk (yolculukno, sefertipi, kullanilansite) FROM stdin;
    public          postgres    false    220   8�       f          0    25788    yolculuk_leg 
   TABLE DATA           �   COPY public.yolculuk_leg (legno, noofavailableseats, yolculukno, durakid, arr_time, dep_time, dep_date, arr_date, vehicleid) FROM stdin;
    public          postgres    false    230   U�       w           0    0    customer_customerid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.customer_customerid_seq', 1003, true);
          public          postgres    false    240            �           2606    25757    bill_rent bill_rent_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.bill_rent
    ADD CONSTRAINT bill_rent_pkey PRIMARY KEY (reservationid);
 B   ALTER TABLE ONLY public.bill_rent DROP CONSTRAINT bill_rent_pkey;
       public            postgres    false    227            �           2606    25902    bill_scooter bill_scooter_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.bill_scooter
    ADD CONSTRAINT bill_scooter_pkey PRIMARY KEY (serviceid, scooterid);
 H   ALTER TABLE ONLY public.bill_scooter DROP CONSTRAINT bill_scooter_pkey;
       public            postgres    false    239    239            �           2606    25887    bill_tag bill_tag_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.bill_tag
    ADD CONSTRAINT bill_tag_pkey PRIMARY KEY (serviceid, driverid);
 @   ALTER TABLE ONLY public.bill_tag DROP CONSTRAINT bill_tag_pkey;
       public            postgres    false    238    238            �           2606    25767    bill_ticket bill_ticket_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bill_ticket
    ADD CONSTRAINT bill_ticket_pkey PRIMARY KEY (yolculukno);
 F   ALTER TABLE ONLY public.bill_ticket DROP CONSTRAINT bill_ticket_pkey;
       public            postgres    false    228            �           2606    25862    car car_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (plaka);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    236            �           2606    25717    car_rent car_rent_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.car_rent
    ADD CONSTRAINT car_rent_pkey PRIMARY KEY (serviceid);
 @   ALTER TABLE ONLY public.car_rent DROP CONSTRAINT car_rent_pkey;
       public            postgres    false    223            {           2606    25652    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    215            �           2606    25832    driver driver_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_pkey PRIMARY KEY (driverid);
 <   ALTER TABLE ONLY public.driver DROP CONSTRAINT driver_pkey;
       public            postgres    false    233            �           2606    25712    durak durak_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.durak
    ADD CONSTRAINT durak_pkey PRIMARY KEY (durakid);
 :   ALTER TABLE ONLY public.durak DROP CONSTRAINT durak_pkey;
       public            postgres    false    222            �           2606    25747    marti marti_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.marti
    ADD CONSTRAINT marti_pkey PRIMARY KEY (serviceid);
 :   ALTER TABLE ONLY public.marti DROP CONSTRAINT marti_pkey;
       public            postgres    false    226                       2606    25667    payment payment_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (amount, serviceid, customerid);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    217    217    217            �           2606    25682 "   previous_trips previous_trips_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.previous_trips
    ADD CONSTRAINT previous_trips_pkey PRIMARY KEY (city, serviceid);
 L   ALTER TABLE ONLY public.previous_trips DROP CONSTRAINT previous_trips_pkey;
       public            postgres    false    218    218            �           2606    25727     rentedvehicle rentedvehicle_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.rentedvehicle
    ADD CONSTRAINT rentedvehicle_pkey PRIMARY KEY (rentedvehicleid);
 J   ALTER TABLE ONLY public.rentedvehicle DROP CONSTRAINT rentedvehicle_pkey;
       public            postgres    false    224            �           2606    25732    reservation reservation_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (reservationid);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    225            �           2606    25872    ride ride_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.ride
    ADD CONSTRAINT ride_pkey PRIMARY KEY (serviceid, driverid);
 8   ALTER TABLE ONLY public.ride DROP CONSTRAINT ride_pkey;
       public            postgres    false    237    237            �           2606    25852    scooter scooter_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.scooter
    ADD CONSTRAINT scooter_pkey PRIMARY KEY (scooterid);
 >   ALTER TABLE ONLY public.scooter DROP CONSTRAINT scooter_pkey;
       public            postgres    false    235            �           2606    25822 &   scooterselection scooterselection_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.scooterselection
    ADD CONSTRAINT scooterselection_pkey PRIMARY KEY (serviceid);
 P   ALTER TABLE ONLY public.scooterselection DROP CONSTRAINT scooterselection_pkey;
       public            postgres    false    232            �           2606    25837    seat seat_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (seat_no, yolculukno);
 8   ALTER TABLE ONLY public.seat DROP CONSTRAINT seat_pkey;
       public            postgres    false    234    234            }           2606    25986    service service_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (serviceid);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    216            �           2606    25812    tagselection tagselection_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tagselection
    ADD CONSTRAINT tagselection_pkey PRIMARY KEY (serviceid);
 H   ALTER TABLE ONLY public.tagselection DROP CONSTRAINT tagselection_pkey;
       public            postgres    false    231            �           2606    25777    ticket_leg ticket_leg_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.ticket_leg
    ADD CONSTRAINT ticket_leg_pkey PRIMARY KEY (serviceid, yolculukno);
 D   ALTER TABLE ONLY public.ticket_leg DROP CONSTRAINT ticket_leg_pkey;
       public            postgres    false    229    229            �           2606    25692    ticketbased ticketbased_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.ticketbased
    ADD CONSTRAINT ticketbased_pkey PRIMARY KEY (serviceid);
 F   ALTER TABLE ONLY public.ticketbased DROP CONSTRAINT ticketbased_pkey;
       public            postgres    false    219            �           2606    25707    vehicle vehicle_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicleid);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public            postgres    false    221            �           2606    25792    yolculuk_leg yolculuk_leg_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.yolculuk_leg
    ADD CONSTRAINT yolculuk_leg_pkey PRIMARY KEY (legno);
 H   ALTER TABLE ONLY public.yolculuk_leg DROP CONSTRAINT yolculuk_leg_pkey;
       public            postgres    false    230            �           2606    25702    yolculuk yolculuk_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.yolculuk
    ADD CONSTRAINT yolculuk_pkey PRIMARY KEY (yolculukno);
 @   ALTER TABLE ONLY public.yolculuk DROP CONSTRAINT yolculuk_pkey;
       public            postgres    false    220            �           2606    25758 &   bill_rent bill_rent_reservationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_rent
    ADD CONSTRAINT bill_rent_reservationid_fkey FOREIGN KEY (reservationid) REFERENCES public.reservation(reservationid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.bill_rent DROP CONSTRAINT bill_rent_reservationid_fkey;
       public          postgres    false    4751    227    225            �           2606    25908 (   bill_scooter bill_scooter_scooterid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_scooter
    ADD CONSTRAINT bill_scooter_scooterid_fkey FOREIGN KEY (scooterid) REFERENCES public.scooter(scooterid) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.bill_scooter DROP CONSTRAINT bill_scooter_scooterid_fkey;
       public          postgres    false    235    239    4771            �           2606    26047 (   bill_scooter bill_scooter_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_scooter
    ADD CONSTRAINT bill_scooter_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.bill_scooter DROP CONSTRAINT bill_scooter_serviceid_fkey;
       public          postgres    false    216    239    4733            �           2606    25893    bill_tag bill_tag_driverid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_tag
    ADD CONSTRAINT bill_tag_driverid_fkey FOREIGN KEY (driverid) REFERENCES public.driver(driverid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.bill_tag DROP CONSTRAINT bill_tag_driverid_fkey;
       public          postgres    false    233    238    4767            �           2606    26042     bill_tag bill_tag_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_tag
    ADD CONSTRAINT bill_tag_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.bill_tag DROP CONSTRAINT bill_tag_serviceid_fkey;
       public          postgres    false    4733    216    238            �           2606    25768 '   bill_ticket bill_ticket_yolculukno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill_ticket
    ADD CONSTRAINT bill_ticket_yolculukno_fkey FOREIGN KEY (yolculukno) REFERENCES public.yolculuk(yolculukno) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.bill_ticket DROP CONSTRAINT bill_ticket_yolculukno_fkey;
       public          postgres    false    220    228    4741            �           2606    25863    car car_driverid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_driverid_fkey FOREIGN KEY (driverid) REFERENCES public.driver(driverid) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.car DROP CONSTRAINT car_driverid_fkey;
       public          postgres    false    236    4767    233            �           2606    26002     car_rent car_rent_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_rent
    ADD CONSTRAINT car_rent_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.car_rent DROP CONSTRAINT car_rent_serviceid_fkey;
       public          postgres    false    216    223    4733            �           2606    26012    marti marti_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marti
    ADD CONSTRAINT marti_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.marti DROP CONSTRAINT marti_serviceid_fkey;
       public          postgres    false    216    4733    226            �           2606    25673    payment payment_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_customerid_fkey;
       public          postgres    false    4731    217    215            �           2606    25987    payment payment_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_serviceid_fkey;
       public          postgres    false    216    217    4733            �           2606    25992 ,   previous_trips previous_trips_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.previous_trips
    ADD CONSTRAINT previous_trips_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.previous_trips DROP CONSTRAINT previous_trips_serviceid_fkey;
       public          postgres    false    4733    216    218            �           2606    25738 ,   reservation reservation_rentedvehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_rentedvehicleid_fkey FOREIGN KEY (rentedvehicleid) REFERENCES public.rentedvehicle(rentedvehicleid) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_rentedvehicleid_fkey;
       public          postgres    false    224    4749    225            �           2606    26007 &   reservation reservation_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_serviceid_fkey;
       public          postgres    false    225    216    4733            �           2606    25878    ride ride_driverid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ride
    ADD CONSTRAINT ride_driverid_fkey FOREIGN KEY (driverid) REFERENCES public.driver(driverid) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.ride DROP CONSTRAINT ride_driverid_fkey;
       public          postgres    false    4767    233    237            �           2606    26037    ride ride_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ride
    ADD CONSTRAINT ride_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.ride DROP CONSTRAINT ride_serviceid_fkey;
       public          postgres    false    4733    237    216            �           2606    26032    scooter scooter_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scooter
    ADD CONSTRAINT scooter_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.scooter DROP CONSTRAINT scooter_serviceid_fkey;
       public          postgres    false    216    4733    235            �           2606    26027 0   scooterselection scooterselection_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.scooterselection
    ADD CONSTRAINT scooterselection_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.scooterselection DROP CONSTRAINT scooterselection_serviceid_fkey;
       public          postgres    false    232    4733    216            �           2606    25843    seat seat_legno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_legno_fkey FOREIGN KEY (legno) REFERENCES public.yolculuk_leg(legno) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.seat DROP CONSTRAINT seat_legno_fkey;
       public          postgres    false    4761    230    234            �           2606    25838    seat seat_yolculukno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_yolculukno_fkey FOREIGN KEY (yolculukno) REFERENCES public.yolculuk(yolculukno) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.seat DROP CONSTRAINT seat_yolculukno_fkey;
       public          postgres    false    220    234    4741            �           2606    25658    service service_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.service DROP CONSTRAINT service_customerid_fkey;
       public          postgres    false    215    216    4731            �           2606    26022 (   tagselection tagselection_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tagselection
    ADD CONSTRAINT tagselection_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.tagselection DROP CONSTRAINT tagselection_serviceid_fkey;
       public          postgres    false    4733    231    216            �           2606    26017 $   ticket_leg ticket_leg_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_leg
    ADD CONSTRAINT ticket_leg_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.ticket_leg DROP CONSTRAINT ticket_leg_serviceid_fkey;
       public          postgres    false    4733    229    216            �           2606    25783 %   ticket_leg ticket_leg_yolculukno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_leg
    ADD CONSTRAINT ticket_leg_yolculukno_fkey FOREIGN KEY (yolculukno) REFERENCES public.yolculuk(yolculukno) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.ticket_leg DROP CONSTRAINT ticket_leg_yolculukno_fkey;
       public          postgres    false    220    4741    229            �           2606    25997 &   ticketbased ticketbased_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticketbased
    ADD CONSTRAINT ticketbased_serviceid_fkey FOREIGN KEY (serviceid) REFERENCES public.service(serviceid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.ticketbased DROP CONSTRAINT ticketbased_serviceid_fkey;
       public          postgres    false    216    219    4733            �           2606    25798 &   yolculuk_leg yolculuk_leg_durakid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.yolculuk_leg
    ADD CONSTRAINT yolculuk_leg_durakid_fkey FOREIGN KEY (durakid) REFERENCES public.durak(durakid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.yolculuk_leg DROP CONSTRAINT yolculuk_leg_durakid_fkey;
       public          postgres    false    222    4745    230            �           2606    25803 (   yolculuk_leg yolculuk_leg_vehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.yolculuk_leg
    ADD CONSTRAINT yolculuk_leg_vehicleid_fkey FOREIGN KEY (vehicleid) REFERENCES public.vehicle(vehicleid) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.yolculuk_leg DROP CONSTRAINT yolculuk_leg_vehicleid_fkey;
       public          postgres    false    4743    221    230            �           2606    25793 )   yolculuk_leg yolculuk_leg_yolculukno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.yolculuk_leg
    ADD CONSTRAINT yolculuk_leg_yolculukno_fkey FOREIGN KEY (yolculukno) REFERENCES public.yolculuk(yolculukno) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.yolculuk_leg DROP CONSTRAINT yolculuk_leg_yolculukno_fkey;
       public          postgres    false    4741    230    220            c      x������ � �      o      x������ � �      n      x������ � �      d      x������ � �      l      x������ � �      _      x������ � �      W   �   x�-ͱ�0��{
/`�Ï��*��d)ĖHvb	�,������1�$"�]��Z7����'}ȑ� �|[>�*�mFj~&�A�j��i�X`tY��c5�f����O1�8��9ܣ^ߦ�ȋuB�WL�j�R_��%�      i      x������ � �      ^      x������ � �      b      x������ � �      Y      x������ � �      Z      x������ � �      `      x������ � �      a      x������ � �      m      x������ � �      k      x������ � �      h      x������ � �      j      x������ � �      X   V   x�s600��� ����D(bh�阗�X��ydCqIb^Ri�3T��R#]S� �*7���n�T�����R��\1z\\\ &�#�      g      x������ � �      e      x������ � �      [      x������ � �      ]      x������ � �      \      x������ � �      f      x������ � �     