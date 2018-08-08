class Alumno

  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
  def read_file(file = 'notas.txt')
    data = []
    alumnos= []
    File.open(file, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    return alumnos
  end
end

a = Alumno.new('nombre',1,2,3,4)
print a.read_file()
