import 'package:codetechtask/cubit/chooseRegion/choose_region_cubit.dart';
import 'package:codetechtask/cubit/drawer/drawer_cubit.dart';
import 'package:codetechtask/cubit/home/time/time_cubit.dart';
import 'package:codetechtask/models/services/city_service.dart';
import 'package:codetechtask/models/services/region_service.dart';
import 'package:codetechtask/models/services/time_zone_service.dart';
import 'package:codetechtask/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wakelock/wakelock.dart';

Box? location;
Box? timeData;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
  await Hive.initFlutter();

  location = await Hive.openBox('location');
  timeData = await Hive.openBox<DateTime>('time');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                ChooseRegionCubit(RegionService(), CityService())),
        BlocProvider(create: (context) => TimeCubit(TimeZoneService())),
        BlocProvider(create: (context) => DrawerCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Code Tech Task',
          theme: context.watch<DrawerCubit>().appMode
              ? ThemeData.dark()
              : ThemeData.light(),
          onGenerateRoute: RouterCont.inherentce.onGenerateRoute,
          initialRoute: location!.get('location') != null ? '/home' : '/init',
        );
      },
    );
  }
}


/*Quyidagi test dasturlar uchun kerak bo'ladigan hamma fayylar savol raqami bilan ajratib qo'yilgan. "screenshots" papkasini ichida dasturni oxirgi ko'rinishi joylashgan.

1. 
- Soat android ilovasi. screenshots papkada ko'rsatilgan rasmdagidek qilib androidga ilova yozish kerak. Ilova 2xil ko'rinishda ishlaydi. Qora va oq ko'rinishlarda. Shu ikkala ko'rinishini qilish kerak. Agar telefonda soat notog'ri bo'lsa dastur to'g'ri vaqtni ko'rsatishi kerak. Va telefon ekrani ilova ishlavotgan paytda o'chib qolmasligi kerak. Soatda ob havo haqida ma'lumot ham bor. Bu ma'lumotlarni ko'rsatish uchun shu APIdan foydalanishiz mumkun. Ob havo hududi va interfeysni rangini foydalanuvchi o'zgartira oladigan bo'lishi kerak
URL: https://rawcdn.githack.com/kamikazechaser/administrative-divisions-db/master/api/UZ.json 
METHOD: POST
Avialable params:
    tashkent
    andijan
    bukhara
    gulistan
    jizzakh
    qarshi
    navoiy
    namangan
    nukus
    samarkand
    termez
    urgench
    fergana



2. 
- Depend droplik inputlar. Dastur kerakli viloyat, tuman va tashkilotni tanlash uchun kerak. API orqali hamma ma'lumotlarni faqat tanlangan parametrlar bilan olinishi kerak. Birinchi polya bu viloyatlar ro'yxatini ko'rsatadi. Foydalanuvchi kerakli viloyatni tanlaganidan keyin dastur API orqali tanlangan viloyatni tumanlarini yuklashi kerak. Tumanlar ham tanlangandan keyin shu tumanga tegishli tashkilotlarni yuklashi kerak. Agar yuklay olmasa polya oldiga yangilash tugmasi chiqib qolishi kerak. Agar hamma polyalarni tanlagandan keyin boshqa viloyatni tanlansa pastidigi 2ta polyani ma'lumotlari ochib ketib API orqali qaytatdan yangilashi kerak.
- Dastur tanlangan parametrlarni eslab qolishi kerak. Yangi foydalanuvchi viloyat tuman va tashkilotni tanlagandan keyin uni eslab qolish kerak va dasturni yopib qaytatdan ishga tushurgandan keyin shu tanlangan ma'lumotlarni hammasi offlayn tarzda chiqib qolishi kerak.

- Viloyatlar ro'yxatini qaytaradigan API:
http://my2.dev.gov.uz/azamat/ru/weather/get-regions

- Tanlangan viloyat bo'yicha tumanlarni ko'rsataqdigan API:
http://my2.dev.gov.uz/azamat/ru/weather/get-districts?regionId={{REGION_ID}}

- Tanlangan tuman bo'yicha tashkilotlarni ko'rsatadigan API:
http://my2.dev.gov.uz/azamat/ru/weather/get-organizations?districtId={{DISTRICT_ID}}

Dastur dizayni ham papkada bor. O'tda 4ta polya ko'rsatilgan sizda 3ta bo'ladi
*/