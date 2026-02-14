# 💀 Last Down

![Godot Engine](https://img.shields.io/badge/Godot_4.3-Blue?style=for-the-badge&logo=godotengine&logoColor=white)
![GDScript](https://img.shields.io/badge/GDScript-Python_like-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

[cite_start]Το **Last Down** είναι ένα 2.5D Top-Down Shooter παιχνίδι με στοιχεία platformer, ανεπτυγμένο αποκλειστικά στη μηχανή γραφικών Godot 4.3[cite: 1, 5, 16]. [cite_start]Συνδυάζει γρήγορη δράση, εξερεύνηση και διαχείριση πόρων σε ένα σκοτεινό, fantasy περιβάλλον[cite: 13].

![Last Down Gameplay Screenshot](σύνδεσμος_για_εικόνα_σου_εδώ) *(Πρόσθεσε εδώ ένα ωραίο screenshot ή GIF από το παιχνίδι)*

## 📜 Σύνοψη Παιχνιδιού

[cite_start]Το παιχνίδι διαθέτει έναν κεντρικό κόμβο (Main Hub Room) που συνδέει τα διάφορα επίπεδα[cite: 43]. [cite_start]Μέσα από διαλόγους με έναν NPC, ο παίκτης μαθαίνει τον τελικό του στόχο: να νικήσει τον **"Skull Master"**, ένα boss που βρίσκεται πίσω από μια κλειδωμένη πύλη[cite: 44, 45, 124]. 

[cite_start]Για να το πετύχει, ο παίκτης πρέπει να εξερευνήσει μια γραμμική πίστα για να βρει το κρυμμένο κλειδί, ενώ έχει τη δυνατότητα να εξερευνήσει δύο προαιρετικά επίπεδα (parkour & combat) για να αποκτήσει σημαντικά πλεονεκτήματα[cite: 10, 46, 50, 51].

## ✨ Βασικά Χαρακτηριστικά

* [cite_start]**2.5D Προοπτική:** Χρήση 3D μοντέλων με top-down κάμερα σταθερής γωνίας, προσφέροντας την αίσθηση βάθους με τον άμεσο χειρισμό ενός 2D παιχνιδιού[cite: 18, 19, 20].
* [cite_start]**Προαιρετικά Upgrades:** Εξερευνήστε κρυφά δωμάτια για να βρείτε το *Health Potion* (ανάκτηση ζωής) και το μαγικό *Book of Swiftness* (ξεκλειδώνει την ικανότητα Dash)[cite: 51, 126, 127, 128].
* [cite_start]**Δυναμικό Platforming:** Κινούμενες πλατφόρμες (moving platforms), πλατφόρμες που εξαφανίζονται (single-use), portals μεταφοράς και μηχανισμός τριπλού άλματος[cite: 53, 60, 150, 152, 154].
* [cite_start]**Έξυπνο AI Εχθρών:** Εχθροί που εντοπίζουν τον παίκτη μέσω δυναμικού *Navigation Area*, υπολογίζοντας τη βέλτιστη διαδρομή σε πραγματικό χρόνο, και συστήματα Enemy Spawners[cite: 54, 56, 147].
* [cite_start]**Ολοκληρωμένο Σύστημα UI:** Φιλικό προς τον χρήστη διεπαφή, βασισμένη σε Control Nodes, που περιλαμβάνει Main Menu, ρυθμίσεις (ήχος/οθόνη), Pause Menu, οθόνες Game Over/Νίκης και αναδυόμενα μηνύματα (pop-ups) εντός του παιχνιδιού[cite: 23, 31, 38, 41, 103].

## 🎮 Χειρισμός

[cite_start]Το σύστημα μάχης βασίζεται στο σημάδι με το ποντίκι (aim tracking) όπου ο χαρακτήρας περιστρέφεται δυναμικά στο σημείο του κέρσορα[cite: 60, 61].

| Ενέργεια | Πλήκτρο / Κουμπί |
| :--- | :--- |
| **Κίνηση** | [cite_start]`W`, `A`, `S`, `D` [cite: 99] |
| **Άλμα (Τριπλό)** | [cite_start]`Space` [cite: 60, 99] |
| **Πυροβολισμός** | [cite_start]`Αριστερό Κλικ` [cite: 60, 99] |
| **Dash (Αν ξεκλειδωθεί)** | [cite_start]`Δεξί Κλικ` [cite: 51, 99] |
| **Χρήση Φίλτρου (Potion)**| [cite_start]`Q` [cite: 99] |
| **Παύση (Pause)** | [cite_start]`Esc` [cite: 34, 99] |

## 🛠️ Τεχνολογίες & Εργαλεία

* [cite_start]**Game Engine:** Godot Engine 4.3 [cite: 16]
* [cite_start]**Γλώσσα Προγραμματισμού:** GDScript [cite: 17, 109]
* [cite_start]**UI/UX:** Godot CanvasLayer, Panel, GridContainers [cite: 41]
* [cite_start]**3D Assets:** Kay Lousberg Asset Packs (*Skeleton character pack, Dungeon remastered, Halloween bits, Medieval hexagon pack*) [cite: 66, 67]
* [cite_start]**Μουσική:** Retro Sega Console Game Music (μέσω Pixabay) [cite: 68]

## 🚀 Μελλοντικές Επεκτάσεις (Roadmap)

[cite_start]Παρόλο που το παιχνίδι αποτελεί μια ολοκληρωμένη εμπειρία [cite: 4, 13][cite_start], τα επόμενα βήματα ανάπτυξης περιλαμβάνουν[cite: 73, 74, 161, 164]:
- [ ] Προσθήκη νέων επιπέδων και επέκταση του lore του κόσμου.
- [ ] Εισαγωγή νέων όπλων, εργαλείων και ικανοτήτων για τον παίκτη.
- [ ] Προσθήκη νέων τύπων εχθρών και δευτερευόντων αποστολών (quests) για επιπλέον βάθος.

---
[cite_start]*Δημιουργήθηκε από την [Σιμιγδάλη Αγγελική](https://github.com/simigdalius) στο πλαίσιο πτυχιακής/ακαδημαϊκής εργασίας - Διεθνές Πανεπιστήμιο της Ελλάδος (Θεσσαλονίκη).* 
