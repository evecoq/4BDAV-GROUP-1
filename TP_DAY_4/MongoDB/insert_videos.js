use videodb;

db.video_recordings.insertMany([
  { _id: 1, Titre: "Les Misérables", Réalisateur: "Tom Hooper", Temps_d_execution: 158 },
  { _id: 2, Titre: "Skyfall", Réalisateur: "Sam Mendes", Temps_d_execution: 137 },
  { _id: 3, Titre: "Les grands hommes", Réalisateur: "Raoul Walsh" }
]);

db.video_recordings.find().pretty();