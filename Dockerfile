FROM alpine 
RUN apk add --update sqlite && rm -rf /var/cache/apk/*
RUN apk add --update wget && rm -rf /var/cache/apk/*
RUN wget --no-check-certificate https://cdn.rawgit.com/times/data/master/sunday_times_panama_data.zip
RUN unzip sunday_times_panama_data.zip
RUN "echo '.mode csv\nCREATE TABLE panama(company_url TEXT,company_name TEXT,officer_position_es TEXT,officer_position_en TEXT,officer_name TEXT,inc_date TEXT,dissolved_date TEXT,updated_date TEXT,company_type TEXT,mf_link TEXT);\n.import sunday_times_panama_data.csv panama' | sqlite3 sundayTimesPanamaPapers.sqlite"
