Condition.destroy_all
Category.destroy_all
Artist.destroy_all
Album.destroy_all

[:excellent, :good, :fair, :poor].each do |condition|
	Condition.create!(
	  name: condition
	)
end

["The Beatles", "Young Dubliners"].each do |artist_name|
	artist = Artist.create!(
	 name: artist_name
	)
end

artist = Artist.first
album = Album.create!(
 artist_id: artist.id,
 title: "Abbey Road",
 year: "1969",
 condition_id: Condition.first.id
)

artist = Artist.last
album = Album.create!(
 artist_id: artist.id,
 title: "With All Due Respect – The Irish Sessions",
 year: "2007",
 condition_id: Condition.first.id
)

album = Album.create!(
 artist_id: artist.id,
 title: "Saints and Sinners",
 year: "2009",
 condition_id: Condition.first.id
)

["Classic Rock", "Celtic Rock"].each do |category_title|
	Category.create!(title: category_title)
end