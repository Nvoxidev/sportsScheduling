import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
class Main {
  public static void main(String[] args) {
    List<String> nombres_usuario = new ArrayList<>();
    List<String> contrasenas = new ArrayList<>();
    Scanner teclado = new Scanner(System.in);

    while (true) {
      System.out.println("1. Iniciar Sesión");
      System.out.println("2. Crear Cuenta");
      System.out.println("3. Salir");
      System.out.print("Elije una opción: ");
      int eleccion = teclado.nextInt();
      
      switch (eleccion) {
        case 1:
          System.out.print("Usuario: ");
          String usuario = teclado.nextLine();
          System.out.print("Contraseña: ");
          String contrasena = teclado.nextLine();
          
          if (inicio(nombres_usuario, contrasenas, usuario, contrasena)) {
            System.out.println("Ha iniciado su sesión");
          }
          else {
            System.out.println("Datos incorrectos.");
            }
          break;

          case 2:
          System.out.print("Nuevo Usuario: ");
          String nuevo_usuario = teclado.nextLine();
          System.out.print("Nueva Contraseña: ");
          String nueva_contrasena = teclado.nextLine();
          
          if (crearCuenta(nombres_usuario, contrasenas, nuevo_usuario, nueva_contrasena)) {
            System.out.println("Su cuenta ha sido creada");
            }
          else{
            System.out.println("El usuario ya existe");
            }
          break;

          case 3:
          System.out.println("Salir");
          System.exit(0);
                
          default:
          System.out.println("Opción no válida");
          break;
      }
  }
}

  
private static boolean inicio(List<String> nombres, List<String> contrasenas, String usuario, String contrasena) {
        for (int i = 0; i < nombres.size(); i++) {
            if (nombres.get(i).equals(usuario) && contrasenas.get(i).equals(contrasena))//Esto me lo enseñó chatGpt
            {
                return true;
            }
        }
        return false;
    }

private static boolean crearCuenta(List<String> usuario, List<String> contrasena, String nuevo_usuario, String nueva_contrasena) {
  if (usuario.contains(nuevo_usuario)) {
    return false; // usuario ya existente
  }
  usuario.add(nuevo_usuario);
  contrasena.add(nueva_contrasena);
  return true;
  }
}
