<?php



class boots extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }



    public function anasayfa()
    {

        $kayitlarabak = $this->load->model("Ana_model");
        $veri = $kayitlarabak->kayitlarigetir();
        $this->load->view("anasayfa", $veri);
    }
    public function kayitguncelle($id)
    {


        $kayitlarabak = $this->load->model("Ana_model");
        $veri = $kayitlarabak->idyegorekayitgetir($id);

        $this->load->view("guncelleform", $veri);
    }
    public function kayitekle()
    {

        $this->load->view("kayitform");
    }
    public function kayitson()
    {
        $baslik = $_POST['baslik'];
        $icerik = $_POST['icerik'];
        $this->load->view("kayitform");

        $kayitlarabak = $this->load->model("Ana_model");
        $veri = $kayitlarabak->kayitekle([$baslik, $icerik]);

        $this->load->view("kayitform", $veri);
    }
    public function kayitguncelleson()
    {
        $id = $_POST['kayitid'];
        $baslik = $_POST['baslik'];
        $icerik = $_POST['icerik'];

        $kayitlarabak = $this->load->model("Ana_model");
        $veri = $kayitlarabak->kayitguncelle([$baslik, $icerik], $id);

        $this->load->view("guncelleform", $veri);
    }
    public function kayitsil($id)
    {


        $kayitlarabak = $this->load->model("Ana_model");
        $veri = $kayitlarabak->kayitsilme($id);

        $this->load->view("kayitform", $veri);
    }
}