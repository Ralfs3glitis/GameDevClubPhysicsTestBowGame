# Šāviņi, kas lido pārāk ātri var neveidot sadursmes.
- Sadursmes ietilpst spēļu dziņu fizikas sistēmā, *Godot* pēc noklusējuma ir 60 fizikas kadri (physics ticks) sekundē.
- Ja šāviens fizikas kadrā vispirms atrodas pirms sienas, un nākošajā aiz tās, sadursme **nav notikusi**.
- Sadursmes veidojās tikai objektiem **fiziski saskaroties**.
- Ja vēlamies lai objekts saskartos ar sienu arī lielos ātrumos, varam:
	- Palielināt fizikas kadru biežumu
	- Izmantot tikai ļoti biezas sienas (nav vēlams)
	- Apvienot ar staru raidīšanu
# Projekta mērķis
- Demonstrēt sadursmes neveidošanos ātras fizikas objektu kustības gadījumā
- Iespējams regulēt šāviņu ātrumu lai redzētu tā ietekmi sadursmes sistēmā
