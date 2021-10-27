<?php

namespace App\Http\Controllers;

use App\Models\BarangMasuk;   //nama model
use App\Models\BarangKeluar;   //nama model
use Illuminate\Http\Request;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Writer\Xls;

class ReportController extends Controller
{
    ## Cek Login
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    ## Tampikan Data
    public function index()
    {
        $title = "Report";
        return view('admin.report.index',compact('title'));
    }

    public function report(Request $request){

        $this->validate($request, [
            'jenis_laporan' => 'required',
            'daterange' => 'required'
        ]);

        if($request->jenis_laporan==1){
            
            $spreadsheet = new Spreadsheet();
            $spreadsheet->setActiveSheetIndex(0);
            $sheet = $spreadsheet->getActiveSheet();
            
            $tgl_awal = substr($request->daterange,3,2);
            $bln_awal = substr($request->daterange,0,2);
            $thn_awal = substr($request->daterange,6,4);
            $tanggal_awal = $thn_awal.'-'.$bln_awal.'-'.$tgl_awal;
            
            $tgl_akhir = substr($request->daterange,16,2);
            $bln_akhir = substr($request->daterange,13,2);
            $thn_akhir = substr($request->daterange,19,4);
            $tanggal_akhir = $thn_akhir.'-'.$bln_akhir.'-'.$tgl_akhir;
            
            $sheet->getColumnDimension('A')->setWidth(10);
            $sheet->getColumnDimension('B')->setWidth(20);
            $sheet->getColumnDimension('C')->setWidth(20);
            $sheet->getColumnDimension('D')->setWidth(30);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(20);

            if($tanggal_awal==$tanggal_akhir){
                $sheet->setCellValue('A1', 'DATA BARANG MASUK '.date('d-m-Y', strtotime($tanggal_awal)) );
            } else {
                $sheet->setCellValue('A1', 'DATA BARANG MASUK '.date('d-m-Y', strtotime($tanggal_awal)).' SAMPAI '.date('d-m-Y', strtotime($tanggal_akhir)) );
            }
            $sheet->mergeCells('A1:F1');
            $sheet->getStyle('A1')->getFont()->setBold(true);
            $sheet->getStyle("A1")->getFont()->setSize(12);
            $sheet->getStyle('A1:F1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            
            $sheet->setCellValue('A3', 'NO');
            $sheet->setCellValue('B3', 'TANGGAL MASUK');
            $sheet->setCellValue('C3', 'BARCODE');
            $sheet->setCellValue('D3', 'NAMA BARANG');
            $sheet->setCellValue('E3', 'SATUAN');
            $sheet->setCellValue('F3', 'JUMLAH');
            
            $rows = 4;
            $no = 1;
        
            $barang_masuk = BarangMasuk::whereBetween('tanggal', array($tanggal_awal, $tanggal_akhir))->orderBy('id','ASC')->get();

            foreach($barang_masuk as $v){
                $sheet->setCellValue('A' . $rows, $no++);
                $sheet->setCellValue('B' . $rows, date('d-m-Y', strtotime($v->tanggal)));
                $sheet->setCellValue('C' . $rows, $v->barang->barcode);
                $sheet->setCellValue('D' . $rows, $v->barang->nama_barang);
                $sheet->setCellValue('E' . $rows, $v->barang->satuan);
                $sheet->setCellValue('F' . $rows, $v->jumlah);
                $sheet->getStyle('F' . $rows)->getNumberFormat()->setFormatCode('#,##0');
                $rows++;
            }
            
            $sheet->getStyle('A3:F'.($rows-1))->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $sheet->getStyle('A3:F'.($rows-1))->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           
            $sheet->setTitle('Barang Masuk');
    
            $type = 'xlsx';
            $fileName = "Laporan Barang Masuk.".$type;
            if($type == 'xlsx') {
                $writer = new Xlsx($spreadsheet);
            } else if($type == 'xls') {
                $writer = new Xls($spreadsheet);			
            }		
            $writer->save("public/upload/report/".$fileName);
            header("Content-Type: application/vnd.ms-excel");
            return redirect(url('/')."/public/upload/report/".$fileName);
        
        } else {

            $spreadsheet = new Spreadsheet();
            $spreadsheet->setActiveSheetIndex(0);
            $sheet = $spreadsheet->getActiveSheet();
            
            $tgl_awal = substr($request->daterange,3,2);
            $bln_awal = substr($request->daterange,0,2);
            $thn_awal = substr($request->daterange,6,4);
            $tanggal_awal = $thn_awal.'-'.$bln_awal.'-'.$tgl_awal;
            
            $tgl_akhir = substr($request->daterange,16,2);
            $bln_akhir = substr($request->daterange,13,2);
            $thn_akhir = substr($request->daterange,19,4);
            $tanggal_akhir = $thn_akhir.'-'.$bln_akhir.'-'.$tgl_akhir;
            
            $sheet->getColumnDimension('A')->setWidth(10);
            $sheet->getColumnDimension('B')->setWidth(20);
            $sheet->getColumnDimension('C')->setWidth(20);
            $sheet->getColumnDimension('D')->setWidth(30);
            $sheet->getColumnDimension('E')->setWidth(20);
            $sheet->getColumnDimension('F')->setWidth(20);

            if($tanggal_awal==$tanggal_akhir){
                $sheet->setCellValue('A1', 'DATA BARANG KELUAR '.date('d-m-Y', strtotime($tanggal_awal)) );
            } else {
                $sheet->setCellValue('A1', 'DATA BARANG KELUAR '.date('d-m-Y', strtotime($tanggal_awal)).' SAMPAI '.date('d-m-Y', strtotime($tanggal_akhir)) );
            }
            $sheet->mergeCells('A1:F1');
            $sheet->getStyle('A1')->getFont()->setBold(true);
            $sheet->getStyle("A1")->getFont()->setSize(12);
            $sheet->getStyle('A1:F1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            
            $sheet->setCellValue('A3', 'NO');
            $sheet->setCellValue('B3', 'TANGGAL KELUAR');
            $sheet->setCellValue('C3', 'BARCODE');
            $sheet->setCellValue('D3', 'NAMA BARANG');
            $sheet->setCellValue('E3', 'SATUAN');
            $sheet->setCellValue('F3', 'JUMLAH');
            
            $rows = 4;
            $no = 1;
        
            $barang_keluar = BarangKeluar::whereBetween('tanggal', array($tanggal_awal, $tanggal_akhir))->orderBy('id','ASC')->get();

            foreach($barang_keluar as $v){
                $sheet->setCellValue('A' . $rows, $no++);
                $sheet->setCellValue('B' . $rows, date('d-m-Y', strtotime($v->tanggal)));
                $sheet->setCellValue('C' . $rows, $v->barang->barcode);
                $sheet->setCellValue('D' . $rows, $v->barang->nama_barang);
                $sheet->setCellValue('E' . $rows, $v->barang->satuan);
                $sheet->setCellValue('F' . $rows, $v->jumlah);
                $sheet->getStyle('F' . $rows)->getNumberFormat()->setFormatCode('#,##0');
                $rows++;
            }
            
            $sheet->getStyle('A3:F'.($rows-1))->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $sheet->getStyle('A3:F'.($rows-1))->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           
            $sheet->setTitle('Barang Keluar');
    
            $type = 'xlsx';
            $fileName = "Laporan Barang Keluar.".$type;
            if($type == 'xlsx') {
                $writer = new Xlsx($spreadsheet);
            } else if($type == 'xls') {
                $writer = new Xls($spreadsheet);			
            }		
            $writer->save("public/upload/report/".$fileName);
            header("Content-Type: application/vnd.ms-excel");
            return redirect(url('/')."/public/upload/report/".$fileName);
        
        }
        
     }
}
