# voda — ejercicio Flutter: drawer + layout estilo Vodafone

**Historia**: ejercicio de julio de 2019 (commits: *"drawer"*, *"letters"*). Exploraba dos cosas a la vez: el widget `Drawer` con su header e items, y un layout tipo rejilla con íconos (`Arbol`: tres columnas de video + "One"), con el tema naranja de Vodafone — de ahí el nombre.

## Estado del revival (2026-10)

- **Migrada a null safety**: SDK `>=3.0.0 <4.0.0`, `const MyApp({super.key})`
- **`cupertino_icons` 0.1.2 → 1.0.8** (la versión vieja es incompatible con toolchains actuales)
- **Widget test REAL**: el archivo original tenía el *boilerplate del counter* — que buscaba un botón `+` y un texto `0` que esta app nunca tuvo (habría fallado si alguien lo corría). Ahora verifica: título Vodafone, apertura del drawer con sus items, y el `Arbol` con tres íconos.
- `flutter analyze`: **0 issues** · `flutter test`: **3/3**

## Estructura

```
lib/
├── main.dart    # Home + Arbol (3 columnas de video) + MyApp con tema naranja
└── drawer.dart  # MyDrawer: DrawerHeader + 2 items
```

## Correr

```bash
flutter pub get
flutter analyze
flutter test
flutter run        # navegador/dispositivo para verla
```

## Nota de diseño

El widget `Arbol` repite tres `Column` idénticos — en un revival posterior podría extraerse a un `List.generate` o un `Row` con hijos generados. Queda documentado como siguiente paso.

## Licencia

Sin declarar.

## Autor

[FernandoMay](https://github.com/FernandoMay)
