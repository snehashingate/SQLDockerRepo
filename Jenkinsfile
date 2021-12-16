pipeline{
  agent {
    dockerfile true
  }
  stages{
    stage('Checking sqlite version'){
      steps{
        sh "sqlite3 --version"
        sh "echo '.mode csv\nCREATE TABLE panama(company_url TEXT,company_name TEXT,officer_position_es TEXT,officer_position_en TEXT,officer_name TEXT,inc_date TEXT,dissolved_date TEXT,updated_date TEXT,company_type TEXT,mf_link TEXT);\n.import sunday_times_panama_data.csv panama' | sqlite3 sundayTimesPanamaPapers.sqlite"
      }
    }
  }
}
