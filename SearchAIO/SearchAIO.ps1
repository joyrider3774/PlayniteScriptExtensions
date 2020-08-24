function global:SearchBingImagesWallpaper()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$width = '1920'
	$height = '1080'
	$space = ' '
	$Game | ForEach-Object {
	$url = $( 'https://www.bing.com/images/search?&q=' + "$($_.name)" + "$space" + 'Wallpaper' + "&qft=+filterui:imagesize-custom_" + "$width" + '_' + "$height" )
	start $url
	}
}

function global:SearchBingImagesScreenshot()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$width = '1920'
	$height = '1080'
	$space = ' '
	$Game | ForEach-Object {
	$url = $( 'https://www.bing.com/images/search?&q=' + "$($_.name)" + "$space" + 'Screenshot' + "&qft=+filterui:imagesize-custom_" + "$width" + '_' + "$height" )
	start $url
	}
}
function global:SearchGoogleImagesWallpaper()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$width = '1920'
	$height = '1080'
	$space = ' '
	$Game | ForEach-Object {
	$url = $( 'https://www.google.com/search?q=' + "$($_.name)" + "$space" + 'Wallpaper' + "$space" + 'imagesize:' + "$width" + 'x' + "$height" + '&tbm=isch' )
	start $url
	}
}

function global:SearchGoogleImagesScreenshot()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$width = '1920'
	$height = '1080'
	$space = ' '
	$Game | ForEach-Object {
	$url = $( 'https://www.google.com/search?q=' + "$($_.name)" + "$space" + 'Screenshot' + "$space" + 'imagesize:' + "$width" + 'x' + "$height" + '&tbm=isch' )
	start $url
	}
}
function global:SearchMetacritic()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object { 
    $url = $( 'https://www.metacritic.com/search/game/' + "$($_.name)" + '/results' )
	start $url
	}
}
function global:SearchMixer()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object { 
    $url = $( 'https://mixer.com/browse/games?q=' + "$($_.name)" )
	start $url
	}
}
function global:SearchSteamDB()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object { 
	if ("$($_.Source)" -eq "Steam" )
	{
		$url = $( 'https://steamdb.info/app/' + "$($_.GameId)" )
		start $url
	}
	else
	{
		$url = $( 'https://steamdb.info/search/?a=app&q=' + "$($_.name)" + '&type=1&category=0')
		start $url
	}
	}
}
function global:SearchSteamGridDB()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object { 
    $url = $( 'https://www.steamgriddb.com/search/grids?term=' + "$($_.name)" )
	start $url
	}
}
function global:SearchTwitch()
{
	$gamename = $PlayniteApi.MainView.SelectedGames
	$gamename | ForEach-Object { 
    $url = $( 'https://www.twitch.tv/search?term=' + "$($_.name)" )
	start $url
	}
}
function global:SearchVNDB()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object { 
    $url = $( 'https://vndb.org/v/all?q=' + "$($_.name)" )
	start $url
	}
}
function global:SearchYoutube()
{
	$Game = $PlayniteApi.MainView.SelectedGames
	$Game | ForEach-Object {
	Start-Job -Name "example" -ArgumentList @($($_.name)) -ScriptBlock {	
    $url = $( 'https://www.youtube.com/results?search_query=' + "$($args[0])" )
	start $url}
	}
}
