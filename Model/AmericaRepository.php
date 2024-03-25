<?php

namespace Model;
use PDO;
use Util\Connection;

class AmericaRepository
{
    public static function query0(): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          ORDER BY election.year asc,vote desc  ';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }
    public static function query1($year): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE election.year = :year
          ORDER BY state.name asc,vote desc';
        $result = $pdo->prepare($sql);
        $result->execute([
            'year' => $year
        ]);
        return $result->fetchAll();
    }
    public static function query2($candidate): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
        FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          inNER JOIN candidate ON id_candidate=candidate.id
          WHERE candidate.name LIKE ?
          ORDER BY election.year asc,vote desc';
        $result = $pdo->prepare($sql);
        $candidate = '%' . $candidate . '%';
        $result->execute([
            $candidate
        ]);
        return $result->fetchAll();
    }
    public static function query3($state): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE state.name LIKE ?
          ORDER BY election.year asc,vote desc';
        $result = $pdo->prepare($sql);
        $state = '%' . $state . '%';
        $result->execute([
            $state
        ]);
        return $result->fetchAll();
    }
    public static function query4($anno,$candidate): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE candidate.name LIKE :candidate
          AND election.year=:anno
          ORDER BY election.year asc,vote desc';
        $candidate='%'.$candidate.'%';
        $result = $pdo->prepare($sql);
        $result->execute([
            'anno'=> $anno,
            'candidate'=>$candidate
        ]);
        return $result->fetchAll();
    }
    public static function query5($anno,$stato): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE state.name LIKE :stato
          AND election.year=:anno
          ORDER BY election.year asc,vote desc';
        $stato='%'.$stato.'%';

        $result = $pdo->prepare($sql);
        $result->execute([
            'anno'=> $anno,
            'stato'=>$stato
        ]);
        return $result->fetchAll();
    }
    public static function query6($candidato,$stato): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE state.name LIKE :stato
          AND candidate.name LIKE :candidate
          ORDER BY election.year asc,vote desc';
        $stato='%'.$stato.'%';
        $candidato='%'.$candidato.'%';
        $result = $pdo->prepare($sql);
        $result->execute([
            'candidate'=> $candidato,
            'stato'=>$stato
        ]);
        return $result->fetchAll();
    }
    public static function query7($candidato,$stato,$anno): array
    {
        $pdo = Connection::getInstance();
        // Elenco totale degli stati con i candidati in uno specifico anno
        $sql = 'SELECT election.year,state.name as stato,candidate.name,vote.candidatevotes as vote
          FROM vote INNER JOIN election ON id_election=election.id
          INNER JOIN state ON id_state=state.id
          INNER JOIN candidate ON id_candidate=candidate.id
          WHERE state.name LIKE :stato
          AND candidate.name LIKE :candidate
          AND election.year=:anno';
        $stato='%'.$stato.'%';
        $candidato='%'.$candidato.'%';
        $result = $pdo->prepare($sql);
        $result->execute([
            'candidate'=> $candidato,
            'stato'=>$stato,
            'anno'=>$anno
        ]);
        return $result->fetchAll();
    }
}
