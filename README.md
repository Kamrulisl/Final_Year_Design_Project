# Final Year Design Project

## Project Title

**A Consensus-Based Family Document Graph Approach for Civil Registry Inconsistency Detection and Correction in Bangladesh**

## Overview

This repository contains the LaTeX source and generated PDFs for our Final Year Design Project proposal/thesis work at Premier University, Chattogram.

The project focuses on detecting mismatches in Bangladeshi civil documents such as:

- National Identity Card (NID)
- Birth Certificate
- Academic Certificate

The main idea is to collect family document data in CSV files, build a Family Document Graph, count repeated name versions, detect mismatches, and suggest corrections.

## Core Idea

Current government correction systems usually handle one correction application at a time. A user submits related documents, then an officer verifies and approves or rejects the application manually.

Our proposed system will:

- collect family document data from CSV files
- find all written versions of a person's name across family documents
- use a consensus/counting method to select the most common value
- separate small name mistakes from serious mismatches
- check DOB using actual date value, not only date format
- check parent-child age gap
- check address spellings using fixed location names
- generate a mismatch report with correction suggestions

## Important Files

| File | Purpose |
|---|---|
| `proposal.tex` | Main proposal/thesis-style LaTeX document |
| `proposal.pdf` | Generated PDF for the proposal |
| `main.tex` | Full thesis template entry file |
| `main.pdf` | Generated PDF for the full thesis template |
| `Makefile` | Build commands for LaTeX files |
| `figures/puc_logo.png` | Premier University logo |
| `references.bib` | BibTeX references for the full thesis template |
| `build/` | Temporary LaTeX build files, ignored by Git |

## Build Commands

Build only the proposal:

```sh
make proposal
```

Build only the full thesis template:

```sh
make main
```

Build both:

```sh
make
```

Clean generated helper files:

```sh
make clean
```

The generated PDFs stay in the repository root. Temporary files such as `.aux`, `.out`, `.log`, `.toc`, `.fls`, and `.fdb_latexmk` go inside `build/`.

## Data Collection

Project data will be collected using CSV files. The CSV dataset will include fields such as:

- Family ID
- Person ID
- Role
- NID Name
- Birth Certificate Name
- Academic Certificate Name
- Father Name
- Mother Name
- DOB
- Division
- District
- Upazila
- Union
- City Corporation or Pourosova
- Address details
- Ground-truth correction label

## GitHub Notes

PDF files are intentionally tracked so the repository includes ready-to-read output files.

Ignored files include:

- `build/`
- `.texlive-cache/`
- `.codex`
- LaTeX temporary files such as `.aux`, `.log`, `.out`, `.toc`

## Authors

- Md Kamrul Islam — `0222310005101039`
- Md Jahedul Islam — `0222310005101037`
- Member 3 — TBD

## Institution

Department of Computer Science & Engineering  
Premier University, Chattogram
