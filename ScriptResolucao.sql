--1 - Buscar o nome e ano dos filmes
select Nome, Ano  from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano  from Filmes order by Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes f where f.Nome like 'de volta para o futuro'

--4 - Buscar os filmes lançados em 1997
select * from Filmes f where f.Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes f where f.Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes f where f.Duracao > 100 and f.Duracao < 150 order by f.Duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, Count(*) as QTD  from Filmes f GROUP BY Ano order by QTD desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome  from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select f.Nome, g.Genero from Filmes f 
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero from Filmes f 
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
join ElencoFilme ef on ef.IdFilme = f.Id
join Atores a on a.Id = ef.IdAtor