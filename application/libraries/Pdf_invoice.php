<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once dirname(__FILE__) . '/tcpdf/tcpdf.php';

class Pdf_invoice extends TCPDF{

    function __construct(){
        parent::__construct();
    }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-12);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
        // Page number
        $this->Cell(0, 10, '** This Invoice has been automatically generated from Ecowater Cloud Platform ** ', 0, false, 'C', 0, '', 0, false, 'T', 'M');
		//$this->Cell(100, 10, '', 0, false, 'R', 0, '', 0, false, 'T', 'M');

    } 
}
