// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "expenses": "Expenses",
  "income": "Income",
  "no_expense": "No expenses found, tap \"Add new\"",
  "add_category": "Add new category",
  "edit_category": "Edit category",
  "transaction": "transaction",
  "edit": "Edit",
  "enter_pin": "Please, enter your pin code",
  "added_category": "New category added successfully!",
  "edited_category": "The category was edited successfully!",
  "pick_month": "PICK A MONTH",
  "category_name": "Category name",
  "enter_amount": "Enter amount",
  "description": "Description (optional)",
  "balance": "Balance",
  "add_new": "Add new",
  "search": "Search for notes, categories or labels",
  "report": "Download report",
  "today": "TODAY",
  "yesterday": "YESTERDAY",
  "stats": "Statistics",
  "home": "Home",
  "settings": "Settings",
  "manage_cat": "Manage categories",
  "export": "Export to PDF",
  "language": "Choose language",
  "faq": "Frequently asked questions",
  "logout": "Logout",
  "overview": "OVERVIEW",
  "details": "DETAILS",
  "select": "Select",
  "add_income": "Add new income",
  "add_expense": "Add new expense",
  "add_smth": "Add new transaction",
  "registration": {
    "singup": "Sign Up",
    "signin": "Sign In",
    "e_mail": "Your email",
    "name": "First name",
    "surname": "Last name",
    "create_pin": "Please, create pin code",
    "confirm_pin": "Please, confirm pin code",
    "choose_biometrics": "Would you like to use fingerprint or FaceId to sign in?",
    "use_biometrics": "Use biometrics?",
    "yes": "Yes, sure",
    "no": "No, I`ll use pin",
    "errors": {
      "user_exists": "This user already exists",
      "no_user": "There's no such email. Would you like to sign up?",
      "email_invalid": "Sorry, your email is invalid",
      "wring_name": "Name must include only letters"
    }
  },
  "months": {
    "jan": "January",
    "feb": "February",
    "mar": "March",
    "apr": "April",
    "may": "May",
    "jun": "June",
    "jul": "July",
    "aug": "August",
    "sep": "September",
    "oct": "October",
    "nov": "November",
    "dec": "December"
  },
  "categories": {
    "salary": "Salary",
    "gifts": "Gifts",
    "wages": "Wages",
    "interest": "Interest",
    "savings": "Savings",
    "allowance": "Allowance",
    "groceries": "Groceries",
    "cafe": "Cafe",
    "electronics": "Electronics"
  },
  "faq_data": {
    "questions": {
      "how_add_trans": "How to add transaction?",
      "how_add_cat": "How to add category?",
      "how_edit_trans": "How to edit transaction?",
      "how_del_trans": "How to delete transaction?",
      "how_stats_work": "How does Statistics works?",
      "how_balance_work": "How does Balance works?",
      "how_change_date": "How change the date of the report?"
    },
    "answers": {
      "how_add_trans": "You can add transaction by pressing the button \"Add new\" on Home page, after that choose type of transaction, it`s amount and description",
      "how_add_cat": "You edit or add expense categories in \"Manage categories\" menu. Go to \"Settings\" > \"Manage categories\". App allows you to edit category`s icon, title, and even order",
      "how_edit_trans": "If you made a mistake creating a note about transaction you can simply delete it and create a new one! To do this,long press on a transaction item on Home page, and then press \"Delete\" button in context menu",
      "how_del_trans": "To do this,long press on a transaction item on Home page, and then press \"Delete\" button in context menu",
      "how_stats_work": "It creates a report of all monthly transactions. You also can download it in PDF",
      "how_balance_work": "It takes all the transactions you`ve added from the beginning to the month you`ve chosen",
      "how_change_date": "You can choose the date by pressing \"<\" or \">\" buttons to navigate back and forward, also by pressing the date you can choose month in context menu."
    }
  }
};
static const Map<String,dynamic> uk = {
  "expenses": "Витрати",
  "income": "Доходи",
  "no_expense": "Витрат не знайдено, натисніть \"Додати\"",
  "category_name": "Категорія",
  "enter_amount": "Сума",
  "description": "Опис (необовʼязково)",
  "edit_category": "Редагувати категорію",
  "transaction": "транзакцію",
  "edit": "Редагувати",
  "enter_pin": "Будь ласка, введіть ваш пін код",
  "added_category": "Нова категорія була успішно додана!",
  "edited_category": "Категорія була успішно змінена!",
  "pick_month": "ОБРАТИ МІСЯЦЬ",
  "balance": "Баланс",
  "add_category": "Додати категорію",
  "add_new": "Додати",
  "search": "Знайдіть витрати за назвою або категорією",
  "report": "Завантажити звіт",
  "today": "CЬОГОДНІ",
  "yesterday": "ВЧОРА",
  "stats": "Статистика",
  "home": "Головна",
  "settings": "Налаштування",
  "manage_cat": "Керувати категоріями",
  "export": "Експорт в PDF",
  "language": "Обрати мову",
  "faq": "Часті заспитання",
  "logout": "Вийти",
  "overview": "ОГЛЯД",
  "details": "ДЕТАЛІ",
  "select": "Обрати",
  "add_income": "Додати до доходів",
  "add_expense": "Додати до витрат",
  "add_smth": "Додати нову транзакцію",
  "registration": {
    "singup": "Зареєструватися",
    "signin": "Увійти",
    "e_mail": "Ваш email",
    "name": "Імʼя",
    "surname": "Прізвище",
    "create_pin": "Будь ласка, придумайте пін-код",
    "confirm_pin": "Будь ласка, підтвердіть пін-код",
    "choose_biometrics": "Бажаєте надалі використовувати відбиток пальця або FaceId для входу?",
    "use_biometrics": "Біометричні дані",
    "yes": "Так, звісно",
    "no": "Ні, краще пін",
    "errors": {
      "user_exists": "Такий користувач вже зареєстрований",
      "no_user": "Такого email не існує. Бажаєте зареєструватися?",
      "email_invalid": "Вибачте, але такого email не може існувати",
      "wring_name": "В імені та прізвищі допускаються лише літери"
    }
  },
  "months": {
    "jan": "Січень",
    "feb": "Лютий",
    "mar": "Березень",
    "apr": "Квітень",
    "may": "Травень",
    "jun": "Червень",
    "jul": "Липень",
    "aug": "Серпень",
    "sep": "Вересень",
    "oct": "Жовтень",
    "nov": "Листопад",
    "dec": "Грудень"
  },
  "categories": {
    "salary": "Зарплатня",
    "gifts": "Подарунки",
    "wages": "Прибуток",
    "interest": "Відсотки",
    "savings": "Збереження",
    "allowance": "Інші доходи",
    "groceries": "Продукти",
    "cafe": "Кафе",
    "electronics": "Електроніка"
  },
  "faq_data": {
    "questions": {
      "how_add_trans": "Як додавати нові транзакції",
      "how_add_cat": "Як додавати категорії?",
      "how_edit_trans": "Як редагувати транзакції?",
      "how_del_trans": "Як видаляти транзакції?",
      "how_stats_work": "Як працює статистика?",
      "how_balance_work": "Яким чином відображається Баланс?",
      "how_change_date": "Як змінити дату звіту?"
    },
    "answers": {
      "how_add_trans": "Ви можете додати транзакцію, натиснувши кнопку «Додати» на Головній сторінці, після цього виберіть тип транзакції, її суму та опис",
      "how_add_cat": "Ви редагуєте або додаєте категорії витрат у меню «Керування категоріями». Перейдіть до «Налаштування» > «Керувати категоріями». Додаток дозволяє редагувати значок категорії, назву та навіть порядок",
      "how_edit_trans": "Якщо ви зробили помилку, створивши примітку про транзакцію, ви можете просто видалити її та створити нову! Для цього натисніть і утримуйте елемент транзакції на Головній сторінці, а потім натисніть кнопку «Видалити» в контекстному меню",
      "how_del_trans": "Для цього натисніть і утримуйте елемент транзакції на Головній сторінці, а потім натисніть кнопку «Видалити» в контекстному меню",
      "how_stats_work": "Створюється звіт про всі щомісячні операції. Ви також можете завантажити його у форматі PDF",
      "how_balance_work": "Відображаються всі транзакції, які ви додали від початку користування до місяця, що ви вибрали",
      "how_change_date": "Ви можете вибрати дату, натискаючи кнопки «<» або «>» для переходу назад і вперед, також натискаючи дату, ви можете вибрати місяць у контекстному меню."
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "uk": uk};
}
