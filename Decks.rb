#Deck: Cartas  que pude contener 
#Relacionar las cartas 
#Eliminar Decks 
#Print Decks 
#Guardar en un solo archivo los decks 



class Cards
    
    def self.menu
        puts "\n"
        puts "1.-Crear Deck".ljust(40) + "2.-Buscar Carta ".ljust(20)  
        
        puts "3.-Eliminar Decks".ljust(40) + "5.-Mostrar Decks".ljust(20)

        puts "\n"
        puts "Ingresa una opcion"
        opcion= gets.chomp  
        
        if opcion == "1"
            Cards.opcion1
        elsif opcion == "2"
            Cards.opcion2
        elsif opcion == "3"
            Cards.opcion3
        elsif opcion == "5"
            Cards.opcion5
        end 

    end


    def self.opcion1 
        
        def self.impresion
            require 'csv'        
            #Declara el encabezado para el archivo que se creará
            encabezado = ['Deck', 'Carta 1', 'Carta 2', 'Carta 3', 'Carta 4', 'Carta 5']
            CSV.open('Decks.csv', 'a') do |archivo_nuevo| 
            archivo_nuevo << [@deck, @carta1,@carta2,@carta3,@carta4,@carta5]
          
            end 
            Cards.menu
        end 

    def self.create
    puts "El Deck Debe contener 5 Cartas "
    puts "Ingresa Nombre del Deck: " 
    @deck = gets.chomp 
    
    if @deck.empty?
    puts "Error EL nombre no puede estar vacio"
    Cards.create
    else
            str= "Muestra la Tabla"
            puts str.rjust  300        
            content = File.readlines 'Cartas.Clash'
    #    content.each_with_index{|line, i| puts "#{i+1}: #{line}"}
            contenido = IO.readlines('Cartas.Clash')
            puts contenido
    puts "\n"
    puts "Ingresa Cartas de la Tabla: " 
 
    Cards.card1        
    end         
    
    end  

            def self.card1
                    busqueda = gets.chomp.capitalize 
                    File.open('Cartas.Clash', 'r') do |f1|
                    while linea = f1.gets                  
                    @carta1 = busqueda                     
                    resbusqueda =  linea.include? busqueda
                    if resbusqueda == true             
                            puts  "OK"
                            @match1 = 1
                    end
                    end                       
                    end
                    if @match1 != 1
                            puts "lo siento no encontre un Resultado"
                            Cards.card1
                    else 
                            Cards.card2
                    end 
            end 

            def self.card2                        
                    busqueda = gets.chomp.capitalize 
                    File.open('Cartas.Clash', 'r') do |f1|
                    while linea = f1.gets                                          
                    @carta2 = busqueda                    
                    resbusqueda =  linea.include? busqueda
                    if resbusqueda == true             
                            puts  "OK"
                            @match2 = 1                           
                    end
                    end                       
                    end
                    if @match2 != 1
                            puts "lo siento no encontre un Resultado"
                            Cards.card2
                    else 
                            Cards.card3
                    end      
                   
            end 

            def self.card3
                    busqueda = gets.chomp.capitalize 
                    File.open('Cartas.Clash', 'r') do |f1|
                    while linea = f1.gets                                          
                    @carta3 = busqueda                    
                    resbusqueda =  linea.include? busqueda
                    if resbusqueda == true             
                            puts  "OK"
                            @match3 = 1                       
                    end
                    end                       
                    end
                    if @match3 != 1
                            puts "lo siento no encontre un Resultado"
                            Cards.card3
                    else 
                            Cards.card4
                    end      
            end 
            
            def self.card4
                   
                    busqueda = gets.chomp.capitalize 
                    File.open('Cartas.Clash', 'r') do |f1|
                    while linea = f1.gets                                        
                    @carta4 = busqueda                    
                    resbusqueda =  linea.include? busqueda
                    if resbusqueda == true             
                            puts  "OK"
                            @match4 = 1                           
                    end
                    end                       
                    end
                    if @match4 != 1
                            puts "lo siento no encontre un Resultado"
                            Cards.card4
                    else 
                            Cards.card5
                    end      
            end 

            def self.card5
                    busqueda = gets.chomp.capitalize 
                    File.open('Cartas.Clash', 'r') do |f1|
                    while linea = f1.gets                                          
                    @carta5 = busqueda                    
                    resbusqueda =  linea.include? busqueda
                    if resbusqueda == true             
                            puts  "OK"
                            @match5 = 1  
                    end
                    end                       
                    end
                    if @match5 != 1
                            puts "lo siento no encontre un Resultado"
                            Cards.card5
                    else 
                            Cards.impresion
                    end      
            end 
        Cards.create
    end 

    def self.opcion2 
        
                require 'csv'
                 deck = nil
                num_linea = 0
                puts "Ingresa la Carta que quieres Buscar: "
                linea = gets.chomp.capitalize
                CSV.foreach('Decks.csv', headers: true) do |linea2|
                         if linea2[1].strip == linea.strip
                                 puts "La Carta "+linea.strip+" pertenece al Deck "+linea2[0].strip
                                carta = linea.strip
                                deck = linea2[0].strip
                
                         end 

                                 if linea2[2].strip == linea.strip
                                        puts "La Carta "+linea.strip+" pertenece al Deck "+linea2[0].strip
                                        carta = linea.strip
                                        deck = linea2[0].strip
                                end 
                                         if linea2[3].strip == linea.strip
                                                 puts "La Carta "+linea.strip+" pertenece al Deck "+linea2[0].strip
                                                 carta = linea.strip
                                                 deck = linea2[0].strip                        
                                end
                                         if linea2[4].strip == linea.strip
                                                 puts "La Carta "+linea.strip+" pertenece al Deck "+linea2[0].strip
                                                 carta = linea.strip
                                                deck = linea2[0].strip                            
                                        end 

                                if linea2[5].strip == linea.strip
                                        puts "La Carta "+linea.strip+" pertenece al Deck "+linea2[0].strip
                                        carta = linea.strip
                                        deck = linea2[0].strip                            
                                end 
                end
        Cards.menu
    end 

    def self.opcion3

        def self.delete
        str = "Eliminar Registro"
        puts str.rjust 300               
        require 'fileutils'      
        
        content = File.readlines 'Decks.csv'
        contenido = IO.readlines('Decks.csv')          
        puts contenido    

        puts "\nIngresa el Deck que deseas Eliminar "
        delete = gets.chomp
        open('Decks.csv', 'r') do |f|
        open('file.txt.tmp', 'w') do |f2|
                f.each_line do |line|
                f2.write(line) unless line.start_with? delete
                end
        end
        end
        FileUtils.mv 'file.txt.tmp', 'Decks.csv'
        Cards.menu
        end     
        Cards.delete
    end 

    def self.opcion5 
        File.readlines('Decks.csv').each do |line|
            p  line.split(',')
          end
          Cards.menu
    end 


end


Cards.menu