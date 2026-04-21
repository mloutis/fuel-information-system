# Fuel Information System

This repository contains the full implementation of a digital platform for managing the fuel exploitation process, from production to replenishment, as described in the associated peer-reviewed publication.

## Project Structure

- **app/** – Delphi source code (.pas) organized into 46 windows.
- **sql/** – SQL Server scripts:
  - `procedures/` – Stored procedures.
  - `triggers/` – Business logic triggers.
  - `views/` – SQL views for reporting and query abstraction.
- `backup/` – `.bak` files for database recovery (Subplan-based backups).

## Technologies

- **Delphi (RAD Studio 12.3)**
- **SQL Server 2022**

## Citation

If you use, adapt, or draw inspiration from this work, please cite the following publication:

> **Loutis, Mohamed**, and **Aïmeur, Esma** (2026).  
> *Design and deployment of a fuel logistics information system*.  
> In: *Moving Towards Sustainable Businesses and Developing More Resilient Economies*.  
> 1st Edition, CRC Press.  
> DOI: [10.1201/9781003647300-28](https://doi.org/10.1201/9781003647300-28)

### BibTeX

```bibtex
@incollection{loutis2026fuel,
  title     = {Design and deployment of a fuel logistics information system},
  author    = {Loutis, Mohamed and A{\"i}meur, Esma},
  booktitle = {Moving Towards Sustainable Businesses and Developing More Resilient Economies},
  year      = {2026},
  edition   = {1},
  publisher = {CRC Press},
  doi       = {10.1201/9781003647300-28}
}
```

## License

Licensed under the [MIT License](LICENSE).
