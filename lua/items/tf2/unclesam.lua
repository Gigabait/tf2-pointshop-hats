ITEM.Name = 'Uncle Sam'
ITEM.Price = 700
ITEM.Model = 'models/player/items/demo/hat_third.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -4.75) + (ang:Up() * -1)
	
	return model, pos, ang
end