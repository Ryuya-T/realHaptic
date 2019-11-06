@echo off

cd "%~p1"

for %%f in (%*) do (

    echo %%f

    if %%~xf==.emf (

        "C:\Program Files (x86)\Metafile to EPS Converter\metafile2eps.exe" %%~nf%%~xf %%~nf.eps

        rungs -q -dSAFER -dBATCH -dNOPAUSE -dEPSCrop -r600x600 -dCompatibilityLevel=1.2 -sDEVICE=pdfwrite -o %%~nf.pdf %%~nf.eps

    )

)

pause