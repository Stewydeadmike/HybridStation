
/obj/item/disk/tech_disk
	name = "technology disk"
	desc = "A disk for storing technology data for further research."
	icon_state = "datadisk0"
	custom_materials = list(/datum/material/iron=300, /datum/material/glass=100)
	var/datum/techweb/stored_research

/obj/item/disk/tech_disk/Initialize()
	. = ..()
	pixel_x = base_pixel_x + rand(-5, 5)
	pixel_y = base_pixel_y + rand(-5, 5)
	stored_research = new /datum/techweb

/obj/item/disk/tech_disk/debug
	name = "\improper CentCom technology disk"
	desc = "A debug item for research"
	custom_materials = null

/obj/item/disk/tech_disk/debug/Initialize()
	. = ..()
	stored_research = new /datum/techweb/admin

/obj/item/disk/tech_disk/major
	name = "Reformatted technology disk"
	desc = "A disk containing a new, completed tech. Upload the disk to an R&D Console to redeem the tech."
	icon_state = "rndmajordisk"
	custom_materials = list(/datum/material/iron=300, /datum/material/glass=100)

/obj/item/disk/tech_disk/major/Initialize()
	. = ..()
	stored_research = new /datum/techweb/bepis

/obj/item/disk/tech_disk/spaceloot
	name = "Old experimental technology disk"
	desc = "A disk containing some long-forgotten technology from a past age. You hope it still works after all these years. Upload the disk to an R&D Console to redeem the tech."
	icon_state = "rndmajordisk"
	custom_materials = list(/datum/material/iron=300, /datum/material/glass=100)

/obj/item/disk/tech_disk/spaceloot/Initialize()
	. = ..()
	stored_research = new /datum/techweb/bepis(remove_tech = FALSE)
