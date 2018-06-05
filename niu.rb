#Deck: Cartas  que pude contener 
#Relacionar las cartas 
#Eliminar Decks 
#Eliminar DEcks vacios por defecto 
#Si un deck esta lleno o contiene algo no se podra borrar directamente 
#Print Decks 
#Guardar en un solo archivo los decks 


class Cards
    
    def self.menu
        puts "\n"
        puts "1.-Crear Deck".ljust(40) + "2.-Agregar Cartas a un Deck ".ljust(20)  
        
        puts "3.-Eliminar Decks Vacios".ljust(40) + "4.-Remplazar Carta de un Deck".ljust(20) 
        
        puts "5.-Mostrar Decks"
        puts "\n"
        puts "Ingresa una opcion"
        opcion= gets.chomp  
        
        if opcion == "1"
            Cards.opcion1
        elsif opcion == "2"
            Cards.opcion2
        elsif opcion == "5"
            Cards.opcion5
        end 

    end


    def self.opcion1 
        archivo = File.new("Deck.Royale", "a")
        puts "Ingresa Nombre del Deck: "
        deck= gets.chomp.capitalize
        archivo.puts deck +":"
        archivo.close
        Cards.menu
    end 

    def self.opcion2 
        puts "Ingresa cartas que quieres agregar al mazo: "
        content = File.readlines 'Cartas.Clash'        
        contenido = IO.readlines('Cartas.Clash')
        puts contenido                   

        archivo = File.new("Deck.Royale", "a")
        cartas= gets.chomp
        if cartas.empty?
            puts "Error no puede estar vacio"
            Cards.opcion2
        else 
        archivo.puts cartas
        archivo.close
        end 
    end 

    def self.opcion5 
        File.readlines('Deck.Royale').each do |line|
            puts line.to_s
          end
    end 


end


Cards.menu