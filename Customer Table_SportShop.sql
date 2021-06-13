create table Customer -- таблиці покупців
(
	id int primary key IDENTITY,
	First_Name nvarchar(50),
	Last_Name nvarchar(50),
	Email nvarchar(50) NOT NULL,
	Gender nvarchar(50),
	Phone nvarchar(50) NOT NULL,
	Discount int,
	Subscription bit,
);

SET IDENTITY_INSERT Customer ON;

ALTER TABLE Customer
ALTER COLUMN Subscription NVARCHAR(10);

ALTER TABLE Customer
DROP COLUMN Subscription;

ALTER TABLE Customer
ADD Subscription bit NOT NULL;

insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (1, 'Rutter', 'Osmond', 'rosmond0@ezinearticles.com', 'Male', '876-964-7201', 16, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (2, 'Wendell', 'Dislee', 'wdislee1@blogtalkradio.com', 'Male', '381-402-4576', 33, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (3, 'Alida', 'Machel', 'amachel2@google.com.br', 'Female', '522-750-3694', 11, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (4, 'Addie', 'Cothey', 'acothey3@icio.us', 'Male', '668-908-1196', 46, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (5, 'Morissa', 'Fleis', 'mfleis4@furl.net', 'Female', '908-581-7848', 12, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (6, 'Cassey', 'D''Aguanno', 'cdaguanno5@ebay.com', 'Male', '326-226-3432', 35, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (7, 'Al', 'Saby', 'asaby6@miitbeian.gov.cn', 'Female', '888-403-0297', 39, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (8, 'Starr', 'Baltrushaitis', 'sbaltrushaitis7@vimeo.com', 'Male', '829-489-7566', 20, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (9, 'Lindy', 'Garstang', 'lgarstang8@rediff.com', 'Male', '389-358-4500', 12, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (10, 'Ruth', 'McDonough', 'rmcdonough9@de.vu', 'Female', '960-315-2729', 21, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (11, 'Moise', 'Girsch', 'mgirscha@thetimes.co.uk', 'Male', '404-903-4020', 45, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (12, 'Armand', 'Tomaszek', 'atomaszekb@ucoz.ru', 'Female', '550-569-7414', 31, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (13, 'Cthrine', 'Foister', 'cfoisterc@devhub.com', 'Female', '255-490-6367', 15, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (14, 'Kaitlin', 'Maden', 'kmadend@skype.com', 'Male', '264-288-3490', 1, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (15, 'Kym', 'Grimestone', 'kgrimestonee@reuters.com', 'Female', '613-299-4398', 14, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (16, 'Shelia', 'Rushton', 'srushtonf@diigo.com', 'Female', '739-696-5483', 2, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (17, 'Avivah', 'Niave', 'aniaveg@edublogs.org', 'Male', '620-185-3505', 49, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (18, 'Alleen', 'Dorrance', 'adorranceh@dedecms.com', 'Male', '137-880-8840', 46, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (19, 'Kendrick', 'Kobpa', 'kkobpai@wp.com', 'Male', '358-984-0354', 18, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (20, 'Martie', 'Levensky', 'mlevenskyj@prweb.com', 'Male', '215-468-0782', 47, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (21, 'Christal', 'Ales0', 'calesk@sakura.ne.jp', 'Female', '315-187-6463', 10, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (22, 'Vanya', 'Drewery', 'vdreweryl@businesswire.com', 'Male', '503-576-6667', 42, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (23, 'Tamma', 'Gabala', 'tgabalam@behance.net', 'Male', '921-851-2609', 27, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (24, 'Kathlin', 'Doret', 'kdoretn@upenn.edu', 'Male', '177-312-1847', 37, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (25, 'Kacie', 'Bernhart', 'kbernharto@ameblo.jp', 'Male', '632-602-0911', 35, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (26, 'Krystle', 'Chazerand', 'kchazerandp@nydailynews.com', 'Female', '945-502-0286', 50, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (27, 'Christophe', 'Dalley', 'cdalleyq@globo.com', 'Female', '777-300-8046', 35, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (28, 'Thomasine', 'Dashkovich', 'tdashkovichr@plala.or.jp', 'Female', '855-584-0014', 18, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (29, 'Desdemona', 'Melloi', 'dmellois@hubpages.com', 'Female', '139-290-6060', 9, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (30, 'Inge', 'Conahy', 'iconahyt@weebly.com', 'Female', '746-282-0187', 1, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (31, 'Ray', 'Rubenczyk', 'rrubenczyku@vistaprint.com', 'Female', '481-253-3444', 10, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (32, 'Vanya', 'Jopp', 'vjoppv@geocities.jp', 'Male', '417-591-4412', 29, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (33, 'Abbey', 'Clair', 'aclairw@1und1.de', 'Female', '442-337-7120', 6, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (34, 'Gwendolyn', 'Gaucher', 'ggaucherx@theatlantic.com', 'Male', '824-401-9062', 29, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (35, 'Christophorus', 'Peckitt', 'cpeckitty@webnode.com', 'Male', '831-849-6796', 32, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (36, 'Jonathon', 'Twiname', 'jtwinamez@linkedin.com', 'Male', '507-372-0681', 35, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (37, 'Mikol', 'Grayson', 'mgrayson10@nih.gov', 'Male', '259-168-2149', 28, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (38, 'Lolly', 'Ambroise', 'lambroise11@hud.gov', 'Male', '685-382-4514', 23, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (39, 'Giustino', 'Harrild', 'gharrild12@studiopress.com', 'Male', '881-292-8301', 10, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (40, 'Brittaney', 'Skeeles', 'bskeeles13@wufoo.com', 'Female', '257-834-0058', 27, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (41, 'Meris', 'Kyd', 'mkyd14@who.int', 'Male', '360-629-3740', 35, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (42, 'Noelyn', 'O''Dreain', 'nodreain15@goodreads.com', 'Female', '632-784-2394', 4, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (43, 'Colline', 'Surman', 'csurman16@opera.com', 'Male', '369-268-5911', 48, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (44, 'Madelon', 'Matheson', 'mmatheson17@scientificamerican.com', 'Female', '887-462-7493', 38, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (45, 'Alic', 'Gommowe', 'agommowe18@tuttocitta.it', 'Female', '556-545-7610', 23, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (46, 'Kimberli', 'Perrins', 'kperrins19@umn.edu', 'Male', '300-519-4331', 12, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (47, 'Peri', 'Ritchard', 'pritchard1a@dot.gov', 'Female', '267-870-9979', 30, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (48, 'Anne', 'Yedy', 'ayedy1b@boston.com', 'Female', '782-933-8883', 20, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (49, 'Indira', 'Germann', 'igermann1c@nytimes.com', 'Male', '418-267-6345', 5, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (50, 'Leopold', 'Jamieson', 'ljamieson1d@edublogs.org', 'Female', '945-367-9343', 29, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (51, 'Leena', 'Morena', 'lmorena1e@google.com.br', 'Male', '575-504-3823', 12, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (52, 'Jinny', 'Filintsev', 'jfilintsev1f@oakley.com', 'Female', '102-719-9439', 25, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (53, 'Glynn', 'Lowings', 'glowings1g@cdc.gov', 'Male', '420-488-3809', 33, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (54, 'Kimberlee', 'Impey', 'kimpey1h@stanford.edu', 'Male', '704-755-5543', 18, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (55, 'Demetria', 'Farthing', 'dfarthing1i@sitemeter.com', 'Male', '119-223-5618', 21, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (56, 'Nickola', 'Dury', 'ndury1j@jiathis.com', 'Male', '163-855-1758', 21, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (57, 'Herschel', 'Prosh', 'hprosh1k@mac.com', 'Male', '541-246-1028', 34, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (58, 'Lorna', 'Hartridge', 'lhartridge1l@cocolog-nifty.com', 'Male', '617-824-2467', 24, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (59, 'Benoit', 'Triggol', 'btriggol1m@dailymail.co.uk', 'Male', '709-336-3200', 32, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (60, 'Lauretta', 'Cater', 'lcater1n@jalbum.net', 'Male', '222-515-4894', 22, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (61, 'Barnie', 'Wookey', 'bwookey1o@live.com', 'Female', '451-770-6393', 6, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (62, 'Monroe', 'Easey', 'measey1p@mapy.cz', 'Female', '410-287-3008', 2, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (63, 'Davida', 'Kearley', 'dkearley1q@fastcompany.com', 'Female', '144-685-1553', 45, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (64, 'Sadie', 'd''Arcy', 'sdarcy1r@apache.org', 'Male', '283-750-2604', 39, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (65, 'Sioux', 'Mercer', 'smercer1s@youtu.be', 'Female', '628-454-1798', 44, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (66, 'Ula', 'Huband', 'uhuband1t@twitter.com', 'Female', '872-421-1069', 17, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (67, 'Ulrica', 'Letts', 'uletts1u@nature.com', 'Male', '565-813-7113', 16, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (68, 'Hercule', 'Berrick', 'hberrick1v@unicef.org', 'Male', '779-997-1294', 26, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (69, 'Mikol', 'Scurry', 'mscurry1w@microsoft.com', 'Male', '209-337-0652', 9, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (70, 'Joellyn', 'Demcak', 'jdemcak1x@cnbc.com', 'Male', '477-588-0456', 2, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (71, 'Clarisse', 'Ericsson', 'cericsson1y@youtu.be', 'Male', '537-369-2755', 26, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (72, 'Robinet', 'Larchier', 'rlarchier1z@nymag.com', 'Male', '289-185-9404', 28, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (73, 'Gwenore', 'Grayston', 'ggrayston20@latimes.com', 'Male', '482-679-1217', 31, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (74, 'Ros', 'Romagosa', 'rromagosa21@hostgator.com', 'Female', '937-137-7894', 25, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (75, 'Buddie', 'Staneland', 'bstaneland22@behance.net', 'Male', '918-415-1516', 5, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (76, 'Bo', 'O''Lynn', 'bolynn23@dell.com', 'Male', '385-169-3920', 37, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (77, 'Ursala', 'Witul', 'uwitul24@stanford.edu', 'Female', '535-138-2944', 45, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (78, 'Darill', 'Shewsmith', 'dshewsmith25@cbslocal.com', 'Male', '119-857-6315', 49, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (79, 'Kaia', 'Laurance', 'klaurance26@mysql.com', 'Female', '182-120-9903', 15, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (80, 'Antone', 'Jurn', 'ajurn27@utexas.edu', 'Female', '306-932-3670', 3, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (81, 'Janine', 'Klimas', 'jklimas28@tinypic.com', 'Female', '724-636-0176', 17, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (82, 'Odilia', 'Mariel', 'omariel29@purevolume.com', 'Female', '640-191-1395', 45, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (83, 'Gilberta', 'Muldrew', 'gmuldrew2a@mapquest.com', 'Male', '860-674-9581', 44, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (84, 'Sansone', 'Maylin', 'smaylin2b@artisteer.com', 'Female', '394-522-2322', 8, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (85, 'Lian', 'Torricella', 'ltorricella2c@accuweather.com', 'Female', '484-522-5019', 50, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (86, 'Elaina', 'Ricks', 'ericks2d@mysql.com', 'Female', '793-231-8763', 4, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (87, 'Silvana', 'Anderson', 'sanderson2e@bravesites.com', 'Female', '636-959-7621', 14, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (88, 'Diane-marie', 'Collishaw', 'dcollishaw2f@latimes.com', 'Male', '899-799-9269', 15, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (89, 'Sal', 'Tetther', 'stetther2g@springer.com', 'Male', '614-629-8609', 21, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (90, 'Lamar', 'Ramirez', 'lramirez2h@sohu.com', 'Male', '682-744-1124', 48, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (91, 'Reinaldos', 'Rendell', 'rrendell2i@wisc.edu', 'Female', '429-212-6486', 5, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (92, 'Tomaso', 'Eccleshall', 'teccleshall2j@blog.com', 'Female', '221-782-5106', 36, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (93, 'Samson', 'Pohls', 'spohls2k@nsw.gov.au', 'Male', '474-705-9371', 46, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (94, 'Aggi', 'Forsyth', 'aforsyth2l@dedecms.com', 'Female', '592-307-3773', 5, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (95, 'Jessi', 'Hellmer', 'jhellmer2m@usnews.com', 'Male', '326-149-8338', 9, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (96, 'Dagmar', 'Alenov', 'dalenov2n@shutterfly.com', 'Female', '110-349-2419', 12, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (97, 'Malissa', 'Whetton', 'mwhetton2o@wunderground.com', 'Male', '645-337-1479', 15, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (98, 'Ferdinande', 'Foucher', 'ffoucher2p@earthlink.net', 'Male', '679-690-9952', 14, 0);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (99, 'Horace', 'Stredder', 'hstredder2q@amazon.com', 'Female', '932-247-6756', 44, 1);
insert into Customer (Id, First_name, Last_name, Email, Gender, Phone, Discount, Subscription) values (100, 'Peggy', 'Boxen', 'pboxen2r@tinyurl.com', 'Male', '630-977-1638', 41, 0);
