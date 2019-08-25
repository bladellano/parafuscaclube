<?php 

class Conexao {

	protected $db;

	protected $table;

	protected $lines_per_page = 8; // Quantidade de registros por página.

	protected $line_size = 5; // Quantidade de numeros para listar item-página.

	public function __construct($table = null){
		$this->table = $table; 
		$this->db = $this->conectar();

	}

	private function conectar(){
		try {
			
			// $host = 'localhost';
			// $dbname = 'parafusc_bd';
			// $user = 'parafusc_root';
			// $pass = 'nt1@2012';

			$host = 'localhost';
			$dbname = 'bdfusca';
			$user = 'root@localhost';
			$pass = '';

			$con = new PDO("mysql:host={$host};dbname={$dbname}",$user,$pass);
			$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$con->exec('SET CHARACTER SET UTF8');

		} catch (PDOException $e) {
			echo $e->getMessage();
		}

		return $con; 
	}

	public function formatDataPtbr($data){
		return date('d/m/Y',strtotime($data));
	}

	public function paginacao(){

		$i = 1;

		$query = $this->db->query("SELECT * FROM $this->table ORDER BY dataCaptura DESC LIMIT $this->lines_per_page");		

		$query_pg = $this->db->query("SELECT * FROM $this->table");
		$count = $query_pg->rowCount();
		$calculate = ceil(($count/($this->lines_per_page*10))*10);

		if(isset($_GET['page']) == $i){
			$url = $_GET['page'];
			$mody = $url*5 - 5;
			$query = $this->db->query("SELECT * FROM $this->table ORDER BY dataCaptura DESC LIMIT $this->lines_per_page OFFSET $mody");
			$offset = $this->db->query("SELECT * FROM $this->table ORDER BY dataCaptura DESC LIMIT $this->lines_per_page OFFSET $mody");
		}

		if(isset($offset)){  
			$offset_count = count($offset->fetchAll());
		}
		
		// Gerando os botões...

		$page_back = @$_GET['page'] - 1;
		$page_go = @$_GET['page'] + 1;
		$tbn_value = @$_GET['page'];		

		$cont = count($query_pg->fetchAll());		

		$html = "";

		if($cont < $this->lines_per_page) { // Não gera os números de paginas no rodape

			$html = "";

		} else { 

			if(@$_GET['page'] != 1 && isset($_GET['page'])){

				$html .= "<a href='?page=$page_back' class='btn_pg'>←</a>";
			}

			while($i <= $calculate) {		

				$html .= "<a href='?page=$i' class='btn_pg'>$i</a>";

				$i++;
				if($i > $this->line_size){
					$html .=  "<a class='btn_pg' style=\"color:#fff\">...</>";

					if(@$_GET['page'] > $this->line_size + 1){
						$html .= "<a href='?page=$tbn_value' class='btn_pg'>$tbn_value</a>";
					} else {
						$html .= "<a href='?page=".($this->line_size + 1)."' class='btn_pg'>".($this->line_size + 1)."</a>";
					}
					if(@$_GET['page'] < $calculate){
						$html .= "<a href='?page=$page_go' class='btn_pg'>→</a>";
					}
					break;

				}
					} // fim while	

				}
				return array("objItens"=> $query,
					"botoesPaginacao" => $html,
					"totalResult" => $count
				);

	} // fim metodo paginacao


}//fim classe

// new Conexao();