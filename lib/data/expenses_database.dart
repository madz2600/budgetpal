
import 'package:budgetpal/domain/models/category_icon_model/category_icon.dart';
import 'package:budgetpal/domain/resources/initial_values.dart';
import 'package:sqflite/sqflite.dart';

class ExpensesDatabaseProvider {
  final String userId;
  static Database? _database;

  ExpensesDatabaseProvider(this.userId);

  Future<Database> get database async {
    final userDb = userId.substring(0, userId.indexOf('@'));
    final Future<String> dbPath = getDatabasesPath();
    final dbName = '${userDb}_expense.db';
    final String path = '$dbPath/$dbName';
    _database = await openDatabase(
      path,
      version: 4,
      onCreate: _createDb,
      onUpgrade: _setupDemo,
    );
    return _database!;
  }

// name all tables
  final String entryCatTable = 'entryCategoryTable';
  final String entryTable = 'entryTable';
  final String icTable = 'iconsTable';
  final String searches = 'searchValues';
  final String emptyString = '';

  Future<void> _setupDemo(Database db, int version, int newversion) async {
    await db.transaction((txn) async {
      // Add some entries for old data demo
      // First, clear tables entries and categories
      await txn.execute('''
        DELETE FROM entryCategoryTable WHERE 1=1
      ''');
      await txn.execute('''
        DELETE FROM entryTable WHERE 1=1
      ''');

      // Add categories
      await txn.execute('''
        INSERT INTO entryCategoryTable (categoryId, title, type, iconId, orderNum) VALUES
        (1,'Salary','income',16,1),
        (2,'Gifts','income',17,2),
        (3,'Wages','income',18,3),
        (4,'Interest','income',19,4),
        (5,'Savings','income',20,5),
        (6,'Allowance','income',21,6),
        (7,'Groceries','expense',1,7),
        (8,'Cafe','expense',2,8),
        (9,'Electronics','expense',3,9),
        (10,'Rent','expense',16,10),
        (11,'Utilities','expense',4,11),
        (12,'Internet and Phone','expense',3,12),
        (13,'Transportation','expense',13,13),
        (14,'Dining Out','expense',14,14),
        (15,'Entertainment','expense',7,15),
        (16,'Gym Membership','expense',15,16),
        (17,'Clothing','expense',1,17),
        (18,'Medical Expenses','expense',12,18),
        (19,'Insurance','expense',9,19),
        (20,'Savings','expense',16,20)
      ''');
      // Add entries
      await txn.execute('''
        INSERT INTO entryTable (expenseId, description, amount, dateTime, categoryId) VALUES
        (1,"",-1000,1665921600000,5),
        (2,"",-80,1665921600000,20),
        (3,"",-100,1665921600000,18),
        (4,"",-172,1665921600000,17),
        (5,"",-50,1665921600000,16),
        (6,"",-157,1665921600000,15),
        (7,"",-499,1665921600000,14),
        (8,"",-263,1665921600000,13),
        (9,"",-100,1665921600000,12),
        (10,"",-150,1665921600000,11),
        (11,"",-195,1665921600000,7),
        (12,"",-207,1665921600000,7),
        (13,"",-89,1665921600000,7),
        (14,"",-297,1665921600000,7),
        (15,"",-1200,1665921600000,10),
        (16,"",113,1665921600000,4),
        (17,"",454,1665921600000,3),
        (18,"",3711,1665921600000,1),
        (19,"",-1000,1668513600000,5),
        (20,"",-80,1668513600000,20),
        (21,"",-100,1668513600000,18),
        (22,"",-165,1668513600000,17),
        (23,"",-50,1668513600000,16),
        (24,"",-167,1668513600000,15),
        (25,"",-470,1668513600000,14),
        (26,"",-258,1668513600000,13),
        (27,"",-100,1668513600000,12),
        (28,"",-150,1668513600000,11),
        (29,"",-188,1668513600000,7),
        (30,"",-203,1668513600000,7),
        (31,"",-84,1668513600000,7),
        (32,"",-272,1668513600000,7),
        (33,"",-1200,1668513600000,10),
        (34,"",122,1668513600000,4),
        (35,"",499,1668513600000,3),
        (36,"",3711,1668513600000,1),
        (37,"",-1000,1671192000000,5),
        (38,"",-80,1671192000000,20),
        (39,"",-100,1671192000000,18),
        (40,"",-157,1671192000000,17),
        (41,"",-50,1671192000000,16),
        (42,"",-169,1671192000000,15),
        (43,"",-480,1671192000000,14),
        (44,"",-272,1671192000000,13),
        (45,"",-100,1671192000000,12),
        (46,"",-150,1671192000000,11),
        (47,"",-177,1671192000000,7),
        (48,"",-186,1671192000000,7),
        (49,"",-86,1671192000000,7),
        (50,"",-296,1671192000000,7),
        (51,"",-1200,1671192000000,10),
        (52,"",134,1671192000000,4),
        (53,"",549,1671192000000,3),
        (54,"",3826,1671192000000,1),
        (55,"",-1000,1673870400000,5),
        (56,"",-80,1673870400000,20),
        (57,"",-100,1673870400000,18),
        (58,"",-144,1673870400000,17),
        (59,"",-50,1673870400000,16),
        (60,"",-169,1673870400000,15),
        (61,"",-436,1673870400000,14),
        (62,"",-286,1673870400000,13),
        (63,"",-100,1673870400000,12),
        (64,"",-150,1673870400000,11),
        (65,"",-162,1673870400000,7),
        (66,"",-183,1673870400000,7),
        (67,"",-86,1673870400000,7),
        (68,"",-296,1673870400000,7),
        (69,"",-1200,1673870400000,10),
        (70,"",149,1673870400000,4),
        (71,"",584,1673870400000,3),
        (72,"",4027,1673870400000,1),
        (73,"",-1000,1676289600000,5),
        (74,"",-80,1676289600000,20),
        (75,"",-100,1676289600000,18),
        (76,"",-132,1676289600000,17),
        (77,"",-50,1676289600000,16),
        (78,"",-165,1676289600000,15),
        (79,"",-436,1676289600000,14),
        (80,"",-277,1676289600000,13),
        (81,"",-100,1676289600000,12),
        (82,"",-150,1676289600000,11),
        (83,"",-148,1676289600000,7),
        (84,"",-201,1676289600000,7),
        (85,"",-93,1676289600000,7),
        (86,"",-309,1676289600000,7),
        (87,"",-1200,1676289600000,10),
        (88,"",157,1676289600000,4),
        (89,"",635,1676289600000,3),
        (90,"",3872,1676289600000,1),
        (91,"",-1000,1678968000000,5),
        (92,"",-80,1678968000000,20),
        (93,"",-100,1678968000000,18),
        (94,"",-139,1678968000000,17),
        (95,"",-50,1678968000000,16),
        (96,"",-178,1678968000000,15),
        (97,"",-432,1678968000000,14),
        (98,"",-267,1678968000000,13),
        (99,"",-100,1678968000000,12),
        (100,"",-150,1678968000000,11),
        (101,"",-143,1678968000000,7),
        (102,"",-209,1678968000000,7),
        (103,"",-101,1678968000000,7),
        (104,"",-303,1678968000000,7),
        (105,"",-1200,1678968000000,10),
        (106,"",171,1678968000000,4),
        (107,"",648,1678968000000,3),
        (108,"",4076,1678968000000,1),
        (109,"",-1000,1681560000000,5),
        (110,"",-80,1681560000000,20),
        (111,"",-100,1681560000000,18),
        (112,"",-145,1681560000000,17),
        (113,"",-50,1681560000000,16),
        (114,"",-180,1681560000000,15),
        (115,"",-408,1681560000000,14),
        (116,"",-270,1681560000000,13),
        (117,"",-100,1681560000000,12),
        (118,"",-150,1681560000000,11),
        (119,"",-141,1681560000000,7),
        (120,"",-214,1681560000000,7),
        (121,"",-95,1681560000000,7),
        (122,"",-300,1681560000000,7),
        (123,"",-1200,1681560000000,10),
        (124,"",186,1681560000000,4),
        (125,"",720,1681560000000,3),
        (126,"",3920,1681560000000,1),
        (127,"",-1000,1683720000000,5),
        (128,"",-80,1683720000000,20),
        (129,"",-100,1683720000000,18),
        (130,"",-150,1683720000000,17),
        (131,"",-50,1683720000000,16),
        (132,"",-200,1683720000000,15),
        (133,"",-400,1683720000000,14),
        (134,"",-250,1683720000000,13),
        (135,"",-100,1683720000000,12),
        (136,"",-150,1683720000000,11),
        (137,"",-150,1683720000000,7),
        (138,"",-200,1683720000000,7),
        (139,"",-100,1683720000000,7),
        (140,"",-300,1683720000000,7),
        (141,"",-1200,1683720000000,10),
        (142,"",200,1683720000000,4),
        (143,"",800,1683720000000,3),
        (144,"",4000,1683720000000,1)
      ''');
    });
  }

// set tables and fill with initial values once when db created
  Future<void> _createDb(Database db, int version) async {
    await db.transaction((txn) async {
      // entry categories table
      await txn.execute('''
      CREATE TABLE $entryCatTable (
      categoryId INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      type TEXT,
      iconId INTEGER NOT NULL,
      orderNum INTEGER,
      FOREIGN KEY (iconId) REFERENCES $icTable (iconId)
      )
      ''');

      // entries table
      await txn.execute('''
      CREATE TABLE $entryTable (
      expenseId INTEGER PRIMARY KEY AUTOINCREMENT,
      description TEXT,
      amount INTEGER,
      dateTime INTEGER NOT NULL,
      categoryId INTEGER NOT NULL,
      FOREIGN KEY (categoryId) REFERENCES $entryCatTable (categoryId)
      )
      ''');

      //icons table
      await txn.execute('''
      CREATE TABLE $icTable (
      iconId INTEGER PRIMARY KEY,
      localPath TEXT,
      color Text)
      ''');

      //recent search values table
      await txn.execute('''
      CREATE TABLE $searches (
      value TEXT,
      timeStamp INTEGER)
      ''');

      await txn.execute('''
      CREATE TRIGGER auto_increment_trigger AFTER INSERT ON $entryCatTable 
      WHEN new.orderNum IS NULL BEGIN UPDATE $entryCatTable SET orderNum = 
      (SELECT IFNULL(MAX(orderNum), 0) + 1 FROM $entryCatTable) WHERE 
      categoryId = new.categoryId; END;
      ''');

      // initial values

      // icons
      for (int i = 0; i < InitialValues.allIcons.length; i++) {
        await txn.insert(
            icTable,
            CategoryIcon(
                    iconId: i+1,
                    localPath: InitialValues.allIcons[i]['icon']!,
                    color: InitialValues.allIcons[i]['color']!)
                .toJson());
      }

      // income categories
      for (int i = 0; i < InitialValues.incomeCategories.length; i++) {
        await txn.insert(entryCatTable, {
          'title': InitialValues.incomeCategories[i],
          'type': 'income',
          'iconId': i+16,
        });
      }

      // expense categories
      for (int i = 0; i < 3; i++) {
        await txn.insert(entryCatTable, {
          'title': InitialValues.expenseCategories[i],
          'type': 'expense',
          'iconId': i+1
        });
      }
    });
    _setupDemo(db, version, 0);
  }
}
