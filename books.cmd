@REM File to upload to OneDrive for Windows.

@REM Go inside each directory to grab images.
@REM Must have pandoc installed: https://pandoc.org/installing.html

@REM Note: pandoc file.rst -s -o file.docx

@REM Get the path to the OneDrive.
set main=%OneDrive%\Documents\Books

@REM Replace back-slash with forward-slash.
set custom=%main:\=/%

@REM Variables for directories.
set b=business
set cl=christian-living
set p=politics
set r=relationships
set sh=self-help

git pull origin

cd %b%/
pandoc README.rst -s -o %custom%/%b%/README.docx
pandoc essentialism.rst -s -o %custom%/%b%/essentialism.docx
pandoc the-millionaire-next-door.rst -s -o %custom%/%b%/the-millionaire-next-door.docx
pandoc negotiating.rst -s -o %custom%/%b%/negotiating.docx
copy negotiating\ %main%\%b%\negotiating\
cd ../

cd %cl%/
pandoc README.rst -s -o %custom%/%cl%/README.docx
pandoc boundaries.rst -s -o %custom%/%cl%/boundaries.docx
pandoc living-by-the-book.rst -s -o %custom%/%cl%/living-by-the-book.docx
pandoc love-languages.rst -s -o %custom%/%cl%/love-languages.docx
pandoc marriage-on-the-rock.rst -s -o %custom%/%cl%/marriage-on-the-rock.docx
cd ../

cd %p%/
pandoc README.rst -s -o %custom%/%p%/README.docx
cd ../

cd %r%/
pandoc README.rst -s -o %custom%/%r%/README.docx
cd ../

cd %sh%/
pandoc README.rst -s -o %custom%/%sh%/README.docx
pandoc body-language.rst -s -o %custom%/%sh%/body-language.docx
pandoc how-to-get-out-of-your-own-way.rst -s -o %custom%/%sh%/how-to-get-out-of-your-own-way.docx
pandoc nmmng.rst -s -o %custom%/%sh%/nmmng.docx
pandoc habits.rst -s -o %custom%/%sh%/habits.docx
copy *.pdf %main%\%sh%\
copy habits\ %main%\%sh%\habits\
cd ../

pandoc README.rst -s -o %custom%/README.docx
pandoc book-notes.rst -s -o %custom%/book-notes.docx

pause 5
