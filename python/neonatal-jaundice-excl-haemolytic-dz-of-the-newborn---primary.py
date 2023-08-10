# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"Q430000","system":"readv2"},{"code":"Q432.00","system":"readv2"},{"code":"Q433300","system":"readv2"},{"code":"Q433500","system":"readv2"},{"code":"Q433600","system":"readv2"},{"code":"Q433800","system":"readv2"},{"code":"Q434200","system":"readv2"},{"code":"Q436200","system":"readv2"},{"code":"Qyu5800","system":"readv2"},{"code":"103252.0","system":"med"},{"code":"104225.0","system":"med"},{"code":"106539.0","system":"med"},{"code":"1359.0","system":"med"},{"code":"19581.0","system":"med"},{"code":"19583.0","system":"med"},{"code":"28184.0","system":"med"},{"code":"28361.0","system":"med"},{"code":"3211.0","system":"med"},{"code":"35477.0","system":"med"},{"code":"35507.0","system":"med"},{"code":"35625.0","system":"med"},{"code":"3615.0","system":"med"},{"code":"39164.0","system":"med"},{"code":"40869.0","system":"med"},{"code":"45303.0","system":"med"},{"code":"47340.0","system":"med"},{"code":"47802.0","system":"med"},{"code":"48009.0","system":"med"},{"code":"48012.0","system":"med"},{"code":"48638.0","system":"med"},{"code":"48869.0","system":"med"},{"code":"55360.0","system":"med"},{"code":"57133.0","system":"med"},{"code":"58833.0","system":"med"},{"code":"59451.0","system":"med"},{"code":"59695.0","system":"med"},{"code":"61800.0","system":"med"},{"code":"63838.0","system":"med"},{"code":"64140.0","system":"med"},{"code":"65651.0","system":"med"},{"code":"66985.0","system":"med"},{"code":"68206.0","system":"med"},{"code":"69317.0","system":"med"},{"code":"70324.0","system":"med"},{"code":"70762.0","system":"med"},{"code":"71056.0","system":"med"},{"code":"7269.0","system":"med"},{"code":"7828.0","system":"med"},{"code":"8069.0","system":"med"},{"code":"89653.0","system":"med"},{"code":"92680.0","system":"med"},{"code":"93156.0","system":"med"},{"code":"94612.0","system":"med"},{"code":"98034.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('neonatal-jaundice-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["neonatal-jaundice-excl-haemolytic-dz-of-the-newborn---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
