# Варіант 3: Дослідження фрагментації Android

## 1. Розподіл версій Android

Android має значну фрагментацію версій операційної системи. Одночасно використовуються як нові, так і старі версії Android.
За даними AppBrain, розподіл версій Android:

| Версія Android | API level | Частка |
|---|---:|---:|
| Android 16 | 36 | 25,2% |
| Android 15 | 35 | 15,7% |
| Android 14 | 34 | 13,4% |
| Android 13 | 33 | 12,7% |
| Android 12 | 31 | 10,8% |
| Android 11 | 30 | 9,3% |
| Android 10 | 29 | 4,9% |
| Android 9 | 28 | 3,6% |
| Android 8.0–8.1 | 26–27 | 1,8% |
| Android 7.0–7.1 | 24–25 | 1,5% |

**Джерело:** AppBrain, *Top Android OS versions*.  
https://www.appbrain.com/stats/top-android-sdk-versions

## 2. Визначення мінімальної версії API

Для визначення мінімальної версії API потрібно поступово додавати частки нових версій Android.

| Мінімальний API | Версії, які покриваються | Сумарне покриття |
|---:|---|---:|
| API 36 | Android 16 | 25,2% |
| API 35 | Android 15–16 | 40,9% |
| API 34 | Android 14–16 | 54,3% |
| API 33 | Android 13–16 | 67,0% |
| API 31 | Android 12–16 | 77,8% |
| API 30 | Android 11–16 | 87,1% |
| API 29 | Android 10–16 | **92,0%** |

Розрахунок для API 29:
```text
25,2 + 15,7 + 13,4 + 12,7 + 10,8 + 9,3 + 4,9 = 91,99%
```

Отже, для покриття **не менше 90% пристроїв** мінімальна версія повинна бути:
```text
minSdkVersion = 29
```

API 29 відповідає **Android 10**.
Таким чином, вибір Android 10 дозволяє охопити приблизно **92% пристроїв** за використаною статистикою.
Для нового застосунку також потрібно враховувати вимоги Google Play щодо `targetSdkVersion`. Для актуальних застосунків потрібно використовувати сучасний target API.

**Джерело:** Google Android Developers, *Meet Google Play's target API level requirement*.  
https://developer.android.com/google/play/requirements/target-sdk
