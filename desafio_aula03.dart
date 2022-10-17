Map<int, String> filmes = {
  2001: 'O Senhor dos Anéis: A Sociedade do Anel',
  2002: 'O Senhor dos Anéis: As Duas Torres',
  2003: 'O Senhor dos Anéis: O Retorno do Rei',
  2012: 'O Hobbit: Uma Jornada Inesperada',
  2013: 'O Hobbit: A Desolação de Smaug',
  2014: 'O Hobbit: A Batalha dos Cinco Exércitos'
};

var prequels = [
  for (var i = 2012; i <= 2014; i++) {filmes[i]}
];

var originals = [
  for (var i = 2001; i <= 2003; i++) {filmes[i]}
];

void main(List<String> args) {
  print('1 - Ano dos filmes: \n');
  mostraAnos();
  print('\n');

  print('2 - Titulo dos filmes: \n');
  mostraFilmes();
  print('\n');

  print('3 - Ano e filmes: \n');
  mostraAnoFilme();
  print('\n');

  print('Lista do Mapa filmes prequels:\n');
  print(prequels);
  print('\n');

  print('Lista do Mapa filmes originals:\n');
  print(originals);
  print('\n');

  print('Adicona Os Anéis do Poder:\n');
  adicionaAneis();

  print(filmes);
  print('\n');

  print('Remove Os Anéis do Poder:\n');
  removeAneis();

  print(filmes);
}

mostraAnos() {
  filmes.forEach((ano, filme) => print(ano));
}

mostraFilmes() {
  filmes.forEach((ano, filme) => print(filme));
}

mostraAnoFilme() {
  filmes.forEach((ano, filme) => print('${ano} - ${filme}'));
}

adicionaAneis() {
  filmes[2022] = 'Os Anéis do Poder';
}

removeAneis() {
  filmes.remove(2022);
}
