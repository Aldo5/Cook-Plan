//
//  menuTVC.swift
//  SigleAppPlanCook
//
//  Created by Aldo on 08/12/22.
//

import UIKit

var food = ["Chilaquiles", "Hot cakes", "Licuado de platano"]

var ingred = ["🧑‍🍳 1 Bolsa de totopos\n🧑‍🍳 1 Pieza de pechuga de pollo cocida y \n\tdesmenuzada\n🧑‍🍳 1 Taza de crema\n🧑‍🍳 ¼ Taza de hojas de cilantro\n🧑‍🍳 ½ kilo de tomate verde\n🧑‍🍳 1 Diente de ajo\n🧑‍🍳 ½ Pieza de cebollaChile jalapeño al gusto\n🧑‍🍳 Sazonador de pollo en polvo al gusto\n🧑‍🍳 2 Cucharadas de Aceite para freír\n🧑‍🍳 ½ Taza de queso panela rallado",
              "🧑‍🍳 1 1/2 tazas Harina\n🧑‍🍳 1/2 cucharadita Sal\n🧑‍🍳 1 cucharada Polvo para hornear\n🧑‍🍳 1/2 cucharadita Bicarbonato de Sodio\n🧑‍🍳 2 cucharadas Azúcar\n🧑‍🍳 2 Huevos\n🧑‍🍳 1/2 taza Leche\n🧑‍🍳 1 cucharada Esencia de vainilla\n🧑‍🍳 3 cucharadas Mantequilla fundida\n🧑‍🍳 200 gr Mermelada de fresa en rebanadas\n🧑‍🍳 1 Plátano en rodajas\n🧑‍🍳 1/2 taza nueces picadas\n🧑‍🍳 Miel de maple al gusto",
              "🧑‍🍳 2 taza de leche\n🧑‍🍳 1 platano de tamaño mediano\n🧑‍🍳 1 taza de cubitos de hielo\n🧑‍🍳 2 cucharadas de azúcar\n🧑‍🍳 1 cucharadita de vainilla\n🧑‍🍳 ½ cucharadita de canela en polvo"]

var instruc = ["Paso 1:\n\nEn una olla grande, cocer el tomate, la cebolla, el ajo, y el chile. Una vez que hirva, dejalo cinco minutos más, retirar del fuego\n\nPaso 2:\n\nLicuar los tomates, la cebolla, el chile, el ajo y las hojas de cilantro\n\nPaso 3:\n\nEn un sárten mediano, calentar el aceite, colocar la salsa a freír y sazonar al gusto con sazonador de pollo\n\nPaso 4:\n\nColocar los totopos en un recipiente hondo, bañarlos en la salsa y revolver hasta que todos se cubran muy bien de salsa. Añadir el pollo y revolver una vez más.\n\nPaso 5:\n\nServir en un plato, bañar con crema y espolvorear el queso panela encima",
               "Paso 1:\nMezcla en un tazón la harina, la sal, el polvo para hornear, el bicarbonato y el azúcar. Reserva.\nPaso 2:\nMezcla en otro tazón los huevos, la leche, la vainilla y una cucharada de mantequilla.\nPaso 3:\nVierte ésta mezcla en los ingredientes secos e integra con un batidor globo hasta deshacer los grumos.\nPaso 4:\nReserva en refrigeración hasta el momento de usar.\nPaso 5:\nFunde el resto de la mantequilla en una sartén con antiadherente.\nPaso 6:\nVierte con un cucharón la mezcla de hotcakes.\nPaso 7:\nCocina a fuego medio hasta que se formen burbujas y voltea.\nPaso 8:\nSirve y acomoda la fruta, las nueces y vierte la miel de maple al gusto.\nPaso 9:\nLicúa los ingredientes de los pasos 1 y 2 para obtener una mezcla más homogenea.\nPaso 10:\nAñade más leche si la mezcla queda demasiado espesa.\nPaso 11:\nCocina primero todos los hotcakes y después agrega la mantequilla, la miel y las frutas.",
               "Paso 1:\nColoca la leche, el plátano sin cáscara, los cubitos de hielo, el azúcar y la vainilla en el vaso de tu licuadora.\nPaso 2:\nProcesa hasta que tengas una consistencia muy suave.\nPaso 3:\nVierta en las copas y espolvorea un poco de canela. ¡A disfrutar! ¡Es demasiado fácil!"]

var myIndex = 0

class menuTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return food.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        cell.textLabel?.text = food[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "menuSegue", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
