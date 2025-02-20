/*
Here Im looking for the top paying skills.
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25



/*

📊 Key Findings:
"SVN" tops the list with an exceptionally high average salary of $400,000, which is significantly above the rest. This might be due to niche demand or a specific high-paying role.
Blockchain-related skill "Solidity" is highly valued at $179,000, highlighting the importance of smart contract development in finance and decentralized applications.
Big Data & AI Tools (e.g., Datarobot, TensorFlow, PyTorch, Keras, Kafka, Cassandra) are among the top-paying skills, showing strong demand for AI, ML, and large-scale data processing expertise.
Cloud & DevOps Tools (e.g., Terraform, Ansible, Puppet, VMware) suggest that companies value analysts with infrastructure and automation knowledge.
Niche Data Engineering & Version Control skills (GitLab, Bitbucket, Notion, Atlassian) also make the list, emphasizing the importance of collaboration tools in data workflows.

📌 Takeaways for Data Analysts:
Expanding expertise beyond traditional SQL and Python to ML frameworks, cloud tools, and DevOps technologies can significantly increase earning potential.
Solidity and blockchain-related skills could be particularly lucrative for analysts entering decentralized finance (DeFi) and crypto markets.
Automation and infrastructure tools like Terraform, Ansible, and Airflow show growing importance in data engineering.




[
  {
    "skills": "svn",
    "avg_salary": "400000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "golang",
    "avg_salary": "155000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500"
  },
  {
    "skills": "terraform",
    "avg_salary": "146734"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820"
  },
  {
    "skills": "keras",
    "avg_salary": "127013"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226"
  },
  {
    "skills": "perl",
    "avg_salary": "124686"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120647"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118407"
  },
  {
    "skills": "notion",
    "avg_salary": "118092"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116712"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387"
  },
  {
    "skills": "scala",
    "avg_salary": "115480"
  }
]

*/