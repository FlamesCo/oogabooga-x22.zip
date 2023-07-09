@echo off
REM This is a bat script to install and setup Auto-GPT

REM Step 2: Ask for OpenAI key
set /p openai_key="Enter your OpenAI key: "

REM Step 3: Clone the Auto-GPT repository
git clone https://github.com/Significant-Gravitas/Auto-GPT

REM Step 4: Change directory to Auto-GPT
cd Auto-GPT

REM Step 5: Install dependencies
pip install -r requirements.txt

REM Step 6: Set OpenAI key as environment variable
setx OPENAI_API_KEY %openai_key%

REM Step 7: Run the Auto-GPT script
python run.py

REM Step 8: Cleanup
cd ..
rmdir /s /q Auto-GPT
