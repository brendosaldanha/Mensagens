//
//  MensagensParaWhatsApp.swift
//  MensagensParaWhatsApp
//
//  Created by Brendo on 21/02/2018.
//  Copyright © 2018 Brendo. All rights reserved.
//

import UIKit

enum Periodo {
    
    case manha, tarde, noite
    
}

let mensagens = [Periodo.manha: ["Bom dia! Que seu dia seja: bom, perfeito e agradável.", "Bom dia! Não importa a cor do céu. Quem faz o dia bonito é você.", "Bom dia! Sorria! Você acaba de ganhar um novo dia e coisas extraordinárias podem acontecer se você crer!", "Bom dia! Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.", "Que o dia seja leve, que a tristeza seja breve e que o dia seja feliz. Bom dia!", "Bom dia! Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.", "Bom dia! Que o dia comece bem e termine ainda melhor.", "Bom dia! Independente do que estiver sentindo, levante-se, vista-se e saia para brilhar.", "A cada nova manhã, nasce junto uma nova chance. Bom dia!", "Sempre que o sol nasce, você tem uma nova oportunidade de ser feliz. Bom dia!", "Bom dia! Comece o dia sorrindo. Afinal, coisa boa atrai coisa boa.", "Bom dia! Que o amor seja a melhor forma de começar e terminar o dia.", "Que esse dia seja cheio de energia positiva, amém. Bom dia.", "Tenha um bom dia, uma semana fantástica e uma vida maravilhosa.", "Bom dia! Hoje eu acordei tão linda que quando fui bocejar, miei.", "Viva cada momento, ria todos os dias, ame além das palavras... Tenha um bom dia!"],
                 Periodo.tarde: ["Boa tarde! Que a sua tarde seja leve, abençoada, iluminada, produtiva e feliz.", "Boa tarde! Não escute as pessoas negativas. Junte-se a quem enxerga a vida com bons olhos. Alie-se aos que lhe amam de verdade e que curtem seu sucesso e crescimento.", "Hoje, o meu beijo vai para você, pessoa linda que mesmo tão distante, sempre se faz presente. Boa tarde!", "Que a minha vontade e a Tua coincidam, caso o contrário, que a a Sua prevaleça. Boa tarde!", "Que a sua tarde seja abençoada.", "Onde há fé, há amor. Onde há amor, há paz. Tenha uma boa tarde!", "Não se importe com o que vão pensar de você. Faça o que você quiser e procure apenas a sua felicidade. Boa tarde!", "Que a sua tarde seja maravilhosa e muito abençoada!", "Se a gente cresce com os golpes duros da vida, também podemos crescer com os toques suaves da alma. Boa tarde!", "Seja leve e releve. Boa tarde!", "Uma feliz tarde para todos!", "Boa tarde! Uma das melhores coisas da vida é ter amigos, são eles que nos fazem mais felizes.", "Boa tarde! Já sorriu para alguém hoje?", "Um passo por vez. Ainda que o seu coração tenha corrido uma maratona pela manhã. Boa tarde!", "Desperte-se e vá realizar seus planos. Boa tarde!", "Que sua tarde seja abençoada…", "Desejo que a sua tarde seja linda, que o sol brilhe em seu coração, que haja alegria em seu olhar e paz no seu caminhar.", "Aceite o triunfo e a perda com igual serenidade. Faça tudo com humildade. Tenha uma boa tarde!", "Tenha uma tarde linda como o seu sorriso e iluminada como a sua alma!"],
                 Periodo.noite: ["A noite é uma boa oportunidade para descansar, perdoar, esquecer, sonhar e se preparar para as lutas do dia seguinte. Tenha uma boa noite!", "Que nunca falte um sonho para lutar, um projeto para realizar, algo para aprender, um lugar para ir e alguém para amar. Boa noite.", "Que sua noite seja tranquila e seu sono seja suave, para que o seu dia seja abençoado. Boa noite!", "Durma com ideias, acorde com atitudes. Boa noite!", "Para tudo na vida há um novo dia, um novo sol, um novo luar... Boa noite.", "Tenha uma boa noite e lembre-se: a alegria vem pela manhã.", "Boa noite! Durma com os anjos.", "Mude o modo que você olha para as coisas, e as coisas que você olha mudarão. Boa noite!", "Boa noite. Durma em paz. Amanhã tem mais!", "A paz é a gente que faz. Boa noite!", "Quando os olhos pesarem, que os sonhos sejam leves. Uma ótima noite para você!", "Que a sua noite seja doce e feliz.", "Durma em paz que amanhã tem mais!", "Respire. Tome uma dose de paz. Escute o bater manso do coração. Silencie a mente. Relaxe o corpo. Descanse. Amanhã tem mais... Boa noite!", "Chegou a hora de apagar a luz e acender as estrelas... Para dar vida aos sonhos. Boa noite!", "Que os carneirinhos não durmam antes de você... Boa noite!", "Para você eu desejo os sonhos mais lindos e que todos os seus sonhos sejam realizados ao amanhecer. Boa noite!", "Que os anjos te tragam tranquilidade e sonhos lindos esta noite. Boa noite!"]]


public class MensagensParaWhatsApp: NSObject {
    
    static func definirPeriodo() -> Periodo? {
        
        // Resgatar a data atual
        let agora = Date()
        
        // Criar as datas de comparação
        guard let meioDia = Calendar.current.date(bySettingHour: 12, minute: 00, second: 00, of: agora) else {return nil}
        guard let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 00, second: 00, of: agora) else {return nil}
        
        // Comparar os horários e retornar o período
        if agora > meioDia && agora < seisHoras {
            
            return .tarde
            
        } else if agora >= seisHoras {
            
            return .noite
            
        } else {
            
            return .manha
            
        }
        
    }
    
   public static func mensagemRandom() -> String? {
        
        // Resgatar o período atual
        guard let periodoAtual = MensagensParaWhatsApp.definirPeriodo() else {return nil}
        
        // Count das mensagens do período atual
        guard let countDasMensagens = mensagens[periodoAtual]?.count else {return nil}
        
        // Crianção de um número aleatório com base na quantidade de mensagens do período
        let numeroAleatorio = Int(arc4random_uniform(UInt32(countDasMensagens)))
        
        // Retornar mensagem aleatória
        return mensagens[periodoAtual]![numeroAleatorio]
        
    }

}
