Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

--- MENU ---

local open = false 
local MainKingder = RageUI.CreateMenu('Bienvenue', 'Pour bien debutes')
local SubKingder = RageUI.CreateSubMenu(MainKingder, "Touches", "Connaitre les touches.")
local SubKingder2 = RageUI.CreateSubMenu(MainKingder, "Commandes", "Connaitre les commandes.")
local SubKingder3 = RageUI.CreateSubMenu(MainKingder, "FAQ", "en apprendre d'avantages.")
local SubKingder4 = RageUI.CreateSubMenu(MainKingder, "Location", "Louer un véhicule.")
local MenuBonusEnSah = RageUI.CreateSubMenu(MainKingder, "~g~Location", "~g~Stop la location.")
MainKingder.Display.Header = true 
MainKingder.Closed = function()
  open = false
end

--- FUNCTION OPENMENU ---

function MenuArrivant()
	if open then 
		open = false
		RageUI.Visible(MainKingder, false)
		return
	else
		open = true 
		RageUI.Visible(MainKingder, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(MainKingder,function() 

			RageUI.ButtonKingder("Touches", "Les touches du serveurs :)", {RightLabel = "→→→"}, true , {
				onSelected = function()
				end
			}, SubKingder)

			RageUI.ButtonKingder("Commandes", "Les commandes du serveurs :)", {RightLabel = "→→→"}, true , {
				onSelected = function()
				end
			}, SubKingder2)

			RageUI.ButtonKingder("FAQ", "Bien débuter :)", {RightLabel = "→→→"}, true , {
				onSelected = function()
				end
			}, SubKingder3)

			RageUI.ButtonKingder("Location", "Louer un véhicule :)", {RightLabel = "→→→"}, true , {
				onSelected = function()
				end
			}, SubKingder4)

			local id = GetPlayerServerId(PlayerId())

			RageUI.SeparatorKingder("~h~Vous êtes l'ID:  ~r~"..id.."")

			local name = GetPlayerName(PlayerId())

			RageUI.SeparatorKingder("~h~Votre Nom Steam:  ~b~"..name.."")

		   end)

		   --- SubKingder---

		   RageUI.IsVisible(SubKingder,function() 

			RageUI.ButtonKingder("Boutique", "Ouvrir la boutique du serveurs pour y acheter des articles", {RightLabel = "~r~F1"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Portefeuille", "Ouvrir le portefeuille pour payer les factures, gerer entreprise ect...", {RightLabel = "~r~F5"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Entreprise", "Permet de gerer les interactions quand vous êtes dans une entreprise", {RightLabel = "~r~F6"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Gang", "Menu Gang, qui permet de prendre en otage, porter ou fouiller une personne.", {RightLabel = "~r~F7"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Radio", "La radio sert à communiquer à distance.", {RightLabel = "~r~F11"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Lever les mains", "Cette touche qui se trouva à gauche de [1/&] sert à lever les mains", {RightLabel = "~r~²"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Sortir/ranger son téléphone", "Permet d'utiliser un télephone et contacter des amis", {RightLabel = "~r~G"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Faires une commandes", "Appuyez sur cette touches et effectuer une commandes", {RightLabel = "~r~T"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Ouvrir/fermer véhicules", "Sa vous permettras de vérouiller vos véhicules", {RightLabel = "~r~Y"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Animation", "Permet d'ouvrir un menu d'animations pour dancer, effectuer des actions", {RightLabel = "~r~K"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Ouvrir/fermer coffre", "Sa vous permettras d'ouvrir ou fermer coffre d'un véhicule.", {RightLabel = "~r~L"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Mode drift", "Vous pourriez approfrondir vos drift en voitures.", {RightLabel = "~r~MAJ"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Changer la portée de voix", "Permet de parler chuchoter/normal/crier", {RightLabel = "~r~W"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Mettre ca ceinture", "Pour mettre ca ceinture en voiture.", {RightLabel = "~r~X"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Rajout", "Rajouté une touche", {RightLabel = "~r~cl_arrivant"}, true , {
				onSelected = function()
				end
			})


		end)

		--- SubKingder2---

		RageUI.IsVisible(SubKingder2,function() 

			RageUI.ButtonKingder("Report", "Faites cette commande pour appeller un responsable en cas de soucis lors de votre experience.", {RightLabel = "~r~/report"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Raccourcis dance", "Permet de configurer une dance en appuyant sur une touche", {RightLabel = "~r~/animBind"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Prendre en otage", "Permet de prendre quelqu'un en otage si tu es armé", {RightLabel = "~r~/otage"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Porter une personne", "Tu peux porter quelqu'un et si quelqu'un te porte mais que tu le souhaite pas , fais cette commande pour qu'il te lache", {RightLabel = "~r~/porter"}, true , {
				onSelected = function()
				end
			})

			RageUI.ButtonKingder("Rajouté une commande", "Tu peux Rajouté une commande dans le cl_arrivant", {RightLabel = "~r~cl_arrivant"}, true , {
				onSelected = function()
				end
			})

		end)

			RageUI.IsVisible(SubKingder3,function() 

				RageUI.ButtonKingder("Louer un véhicule ?", "Retournez une fois en arriere sur ce menu et allez dans l'onglet location.", {RightLabel = ""}, true , {
					onSelected = function()
					end
				})

				RageUI.ButtonKingder("Appartement/Maison ?", "Un appartement ou une maison pourras vous donnez accès à un coffre pour y stocker : argent, armes et objets.", {RightLabel = ""}, true , {
					onSelected = function()
					end
				})

				RageUI.ButtonKingder("Passer mon permis ?", "Sans votre permis de conduire vous pourrez pas acheter une voiture ou vous aurez des ennuis avec la LSPD. ~r~Cliquez sur la touche [Entrée] pour obtenir le point GPS vers l'auto école", {RightLabel = ""}, true , {
					onSelected = function()
						SetNewWaypoint(222.59, 366.66)
						ESX.ShowNotification('Point GPS defini vers l\'auto ecole')
					end
				})

				RageUI.ButtonKingder("Ou acheter ma premiere voiture ?", "~r~Cliquez sur la touche [Entrée] pour obtenir le point GPS vers le concessionnaire", {RightLabel = ""}, true , {
					onSelected = function()
						SetNewWaypoint(-45.86, -1096.07)
						ESX.ShowNotification('Point GPS defini vers le concessionnaire')
					end
				})

				RageUI.ButtonKingder("Ou acheter un telephone ?", "~r~Cliquez sur la touche [Entrée] pour obtenir le point GPS vers le DigitalDen", {RightLabel = ""}, true , {
					onSelected = function()
						SetNewWaypoint(-509.05, 276.6)
						ESX.ShowNotification('Point GPS defini vers le ~g~magasin de telephone')
					end
				})

				RageUI.ButtonKingder("RP ILLEGAL ?", "Si votre RP se tourne vers l'illegal, vous pouvez débuté en cambriolant des maisons, en braquant des superettes, banques et bijouterie et pourquoi pas tenter d'approcher un gang.", {RightLabel = ""}, true , {
					onSelected = function()
					end
				})

				RageUI.ButtonKingder("Blanchir l'argent ?", "Pour blanchir de l'argent sale, il faudras approcher un gang Families, Ballas ou Vagos.", {RightLabel = ""}, true , {
					onSelected = function()
					end
				})

				RageUI.ButtonKingder("RP LEGAL ?", "Vous pouvez débuter dans des boites d'interimes ou dans des entreprises en villes. ~r~Cliquez sur la touche [Entrée] pour obtenir le point GPS vers la boite d'intérime", {RightLabel = ""}, true , {
					onSelected = function()
						SetNewWaypoint(-261.19, -972.94)
						ESX.ShowNotification('Point GPS defini vers le centre d\'interim')
					end
				})

				RageUI.ButtonKingder("Rajout", "Vous pouvez rajouté une info dans le cl_arrivant ", {RightLabel = ""}, true , {
					onSelected = function()
					end
				})
			end)

			RageUI.IsVisible(SubKingder4,function() 
		
				RageUI.ButtonKingder("Blista", nil, {RightLabel = "~r~2500$"}, true , {
					onSelected = function()
                        while not HasModelLoaded(GetHashKey("blista")) do
                            RequestModel(GetHashKey("blista"))
                            Wait(100)
                        end
                        local FinalCar = CreateVehicle(GetHashKey("blista"), 400.77, -382.07, 46.09, 117.06, true)
                        ESX.ShowNotification("Merci ! Bonne route.")
						local playerPed = PlayerPedId()
                        TaskWarpPedIntoVehicle(playerPed, FinalCar, -1)
                        TriggerServerEvent('pigeon:roucoule')

					end
				}, MenuBonusEnSah)

				RageUI.ButtonKingder("panto", nil, {RightLabel = "~r~1000$"}, true , {
					onSelected = function()
                        while not HasModelLoaded(GetHashKey("panto")) do
                            RequestModel(GetHashKey("panto"))
                            Wait(100)
                        end
                        local FinalCar = CreateVehicle(GetHashKey("panto"), 400.77, -382.07, 46.09, 117.06, true)
                        ESX.ShowNotification("Merci ! Bonne route.")
						local playerPed = PlayerPedId()
                        TaskWarpPedIntoVehicle(playerPed, FinalCar, -1)
                        TriggerServerEvent('pigeon:roucoulepu')
					end
				}, MenuBonusEnSah)

				RageUI.ButtonKingder("Scooter", nil, {RightLabel = "~r~200$"}, true , {
					onSelected = function()
                        while not HasModelLoaded(GetHashKey("scorcher")) do
                            RequestModel(GetHashKey("scorcher"))
                            Wait(100)
                        end
                        local FinalCar = CreateVehicle(GetHashKey("scorcher"), 400.77, -382.07, 46.09, 117.06, true)
                        ESX.ShowNotification("Merci ! Bonne route.")
						local playerPed = PlayerPedId()
                        TaskWarpPedIntoVehicle(playerPed, FinalCar, -1)
                        TriggerServerEvent('pigeon:roucouleencore')
					end
				}, MenuBonusEnSah)

				RageUI.ButtonKingder("Rajout", nil, {RightLabel = "~r~1$"}, true , {
					onSelected = function()
                        while not HasModelLoaded(GetHashKey("scorcher")) do
                            RequestModel(GetHashKey("scorcher"))
                            Wait(100)
                        end
                        local FinalCar = CreateVehicle(GetHashKey("scorcher"), 400.77, -382.07, 46.09, 117.06, true)
                        ESX.ShowNotification("Merci ! Bonne route.")
						local playerPed = PlayerPedId()
                        TaskWarpPedIntoVehicle(playerPed, FinalCar, -1)
                        TriggerServerEvent('pigeon:roucouleencore')
					end
				}, MenuBonusEnSah)

			end)

			RageUI.IsVisible(MenuBonusEnSah,function() 

			RageUI.ButtonKingder("Rendre le véhicule", "Vous pourrez plus louer de véhicule pour une durée de 10 Minutes", {RightLabel  = "→"}, true ,  {
				onSelected = function()
					local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
					if dist4 < 4 then
						DeleteEntity(veh)
						RageUI.CloseAll()

					end
				end	})
				RageUI.ButtonKingder('Continuer', "Cliquez pour prendre la route", { Color = {BackgroundColor = { 1, 240, 1, 100}} }, true, {
				onSelected = function()
				RageUI.CloseAll()
					end
				})
		end)

		Wait(0)
	   end
	end)
 end
end
		-------------------------------------------------------------------------------------------------------

local position = {
	  {x = 398.79, y = -354.76, z = 46.81}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 5.0 then
            wait = 0
            DrawMarker(22, 398.79, -354.76, 46.81, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour ~r~intéragir", 1) 
                if IsControlJustPressed(1,51) then
		 MenuArrivant()
            end
        end
    end
    Citizen.Wait(wait)
    end
end
end)

