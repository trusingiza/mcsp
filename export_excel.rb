require 'spreadsheet'

book = Spreadsheet::Workbook.new
sheet1=book.create_worksheet
sheet1.row(0).concat %w{ Name age Post}
sheet1.row(1).push 'Thierry', '45','DBA'
sheet1.row(2).push 'Nicolas','35','Doctor'
book.write '~/Site/export.xls'
