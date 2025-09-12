pwd = input("Introduce una contraseña: ")

if len(pwd) >= 8 and any(c.isupper() for c in pwd) and any(c.isdigit() for c in pwd):
    print("✅ Contraseña segura")
else:
    print("❌ Contraseña débil")

input("Pulsa Enter para salir...")

