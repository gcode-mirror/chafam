"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o retractsolution -name "Cafam.WebPortal.Empresas.wsp" -immediate -allcontenturls
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o execadmsvcjobs
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o deletesolution -name "Cafam.WebPortal.Empresas.wsp"
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o execadmsvcjobs
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o addsolution -filename "Cafam.WebPortal.Empresas.wsp"
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o execadmsvcjobs
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o deploysolution -name "Cafam.WebPortal.Empresas.wsp" -immediate -allcontenturls -allowGacDeployment -allowCasPolicies -force
"C:\Program Files\Common Files\Microsoft Shared\web server extensions\12\BIN\stsadm.exe" -o execadmsvcjobs
