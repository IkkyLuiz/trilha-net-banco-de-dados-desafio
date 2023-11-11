use Filmes

-- 1 - Buscar o nome e ano dos filmes
select nome, ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from Filmes order by ano 

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select nome, ano, Duracao from Filmes where nome = 'de volta para o futuro'

-- 4 - Buscar os filmes lan�ados em 1997
select nome, ano, Duracao from Filmes where ano = 1997

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select nome, ano, Duracao from Filmes where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando por ano em ordem decrescente
select ano, count(ano) as quantidade from Filmes group by ano order by quantidade desc

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from Atores where upper(Genero)='M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from Atores where upper(Genero)='F' order by PrimeiroNome

--10 - Buscar o nome do filme e o g�nero
select a.Nome, c.Genero 
from filmes a inner join FilmesGenero b on a.Id = b.IdFilme
	inner join Generos c on b.IdGenero = c.Id

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select a.Nome, c.Genero 
from filmes a inner join FilmesGenero b on a.Id = b.IdFilme
	inner join Generos c on b.IdGenero = c.Id
where lower(c.Genero) = 'mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select a.Nome, c.PrimeiroNome, c.UltimoNome, b.Papel
from filmes a inner join ElencoFilme b on a.Id = b.IdFilme
	inner join Atores c on b.IdAtor = c.Id