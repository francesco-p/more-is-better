# Disclaimer

We are still working on the code, but we provide a working codebase as it is.
We are working on a github repo with much more clean code and optimized experimental structure. 


# Simplified tree structure

```
.
├── logs
│   ├── read_acc.py
│   └── ...
├── README.md
├── requirements.txt
└── src
    ├── optimal_exp
    │   ├── ... <--- all scripts for figure 2 and all tables (you need to run manually each one)
    ├── res_consumption_exp
    │   ├── ... <--- all scripts for figure 3 (run.sh to run all)
    ├── supplementary
        ├── ... <--- all scripts for supplementary (you need to run manually each one)
     

```

# How to run

We suggest the following steps (for linux):

0. open a terminal cd final_code

1. install virtualenv then:

    a. `virtualenv venv`
    b. `source venv/bin/activate`
    c. `pip install -r requirements`

2. To reproduce figure3 `cd src/res_consumption_exp/fig3/` 

    a. `run.sh && check.sh` it will take days

3. To reproduce figure2 `cd src/optimal_exp/` 

    a. you can cd into whatever folder and run an experimental point of figure2 and tables, the names of the folder are self explanatory.

