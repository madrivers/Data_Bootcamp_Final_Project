
create table clean_olympics_results as (
	select
	hosts_cleaned.game_location,
	hosts_cleaned.game_season,
	medals_cleaned.discipline_title,
	medals_cleaned.event_gender,
	medals_cleaned.medal_type,
	medals_cleaned.participant_type,
	medals_cleaned.country_name
	FROM hosts_cleaned
	JOIN medals_cleaned
	ON hosts_cleaned.game_slug = medals_cleaned.slug_game
	)
	