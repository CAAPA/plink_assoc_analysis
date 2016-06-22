import sys, gzip

in_file_name=sys.argv[1]
out_file_name=sys.argv[2]

if in_file_name[len(in_file_name)-3:len(in_file_name)] == ".gz":
    in_file=gzip.open(in_file_name,'rb')
else:
    in_file=open(in_file_name)
out_file=open(out_file_name, 'w')

for line in in_file:
    e = line.strip().split()
    if e[0][0] != "#":
        out_file.write(e[2] + "\t" + e[3] + "\t" + e[4])
        for i in range(9,len(e)):
            dosage = e[i].split(":")[1]
            out_file.write("\t" + dosage)
        out_file.write("\n")
in_file.close()
out_file.close()
