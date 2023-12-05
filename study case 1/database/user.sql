
CREATE TABLE if not exists `user` (
    user_name VARCHAR(255) PRIMARY KEY,
    `password` VARCHAR(255),
    is_delete BIT(1)
);

INSERT INTO `user` (`user_name`, `password`, `is_delete`) VALUES
('john_doe', 'password1', 0),
('jane_smith', 'password2', 0),
('michael_jones', 'password3', 1),
('emily_wilson', 'password4', 0),
('ryan_taylor', 'password5', 1),
('olivia_davis', 'password6', 0),
('adam_martin', 'password7', 1),
('lily_thompson', 'password8', 0),
('nathan_anderson', 'password9', 1),
('sophia_miller', 'password10', 0),
('william_baker', 'password11', 1),
('ava_wright', 'password12', 0),
('alexander_morris', 'password13', 1),
('chloe_hall', 'password14', 0),
('daniel_robinson', 'password15', 1),
('ella_hill', 'password16', 0),
('matthew_jackson', 'password17', 1),
('grace_evans', 'password18', 0),
('jacob_clark', 'password19', 1),
('amelia_turner', 'password20', 0),
('oliver_carter', 'password21', 1),
('mia_fisher', 'password22', 0),
('ethan_nelson', 'password23', 1),
('isabella_harrison', 'password24', 0),
('noah_wood', 'password25', 1),
('sophie_walker', 'password26', 0),
('logan_mitchell', 'password27', 1),
('ava_watson', 'password28', 0),
('liam_rogers', 'password29', 1),
('olivia_fletcher', 'password30', 0),
('mason_campbell', 'password31', 1),
('amelia_hudson', 'password32', 0),
('jack_stevens', 'password33', 1),
('harper_wells', 'password34', 0),
('benjamin_barnes', 'password35', 1),
('ava_murray', 'password36', 0),
('samuel_williams', 'password37', 1),
('grace_cooper', 'password38', 0),
('dylan_jenkins', 'password39', 1),
('aubrey_cox', 'password40', 0),
('jackson_hughes', 'password41', 1),
('emma_ferguson', 'password42', 0),
('owen_cole', 'password43', 1),
('abigail_ward', 'password44', 0),
('aiden_turner', 'password45', 1),
('ella_knight', 'password46', 0),
('luke_porter', 'password47', 1),
('mia_cunningham', 'password48', 0),
('carter_watts', 'password49', 1),
('scarlett_brooks', 'password50', 0);
