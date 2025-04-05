---
icon: fas fa-microscope
order: 1
math: true
---

I work on **symmetric cryptography** and **discrete mathematics**.
During my first years of PhD, I mainly cryptanalyzed *symmetric primitives*, especially *lightweight* ones, such as $\mathsf{Ascon}$ (winner of the NIST lightweight competition) or $\mathsf{Midori}$. More recently, I started studying **Boolean functions**, and more specifically their cryptographic properties such as APN-ness (Almost Perfect Non-linear functions). I also take part in the **design** of new primitives either for new use cases or focused on extreme performances.

## Publications
You can find below a list[^jekyllscholar] of my published articles that I update from time to time. Alternatively, you can find them on [Google Scholar](https://scholar.google.com/citations?user=UyENXP0AAAAJ) or [DBLP](https://dblp.uni-trier.de/pid/337/2519.html). 

### Journal articles

{% bibliography -f my_papers -q @*[keywords ~= journal]  -T bib_layout %}

### Proceedings of peer-reviewed conferences

{% bibliography -f my_papers -q @*[keywords ~= conference] -T bib_layout %}


### Preprints
{% bibliography -f my_papers -q @*[keywords ~= unpublished] -T bib_layout %}


## Talks

### International conferences and workshops
{% bibliography -f my_talks -q @*[keywords ~= international] -T bib_layout %}

### National conferences and workshops
{% bibliography -f my_talks -q @*[keywords ~= french] -T bib_layout %}


### Local seminars
{% bibliography -f my_talks -q @*[keywords ~= local] -T bib_layout %}

## PhD thesis and defense
I was a PhD student at Inria Paris (COSMIQ team) from September 2021 to December 2024 under the supervision of Anne Canteaut and Léo Perrin.
I defended my PhD on December 6th, 2024.
{% bibliography -f my_papers -q @*[keywords ~= thesis] -T bib_layout %}



## Editorial Activities
External Reviews for:
- [DCC 2025](https://link.springer.com/journal/10623)
- [ISC 2024](https://isc24.cs.gmu.edu/)
- [CRYPTO 2023](https://crypto.iacr.org/2023/)
- [Finite Fields and Their Applications](https://www.sciencedirect.com/journal/finite-fields-and-their-applications): 2022, 2023.

![https://xkcd.com/410/](https://imgs.xkcd.com/comics/math_paper.png){: .normal }[^img]

[^jekyllscholar]: This bibliography is generated from a ```.bibtex``` file using [jekyll-scholar](https://github.com/inukshuk/jekyll-scholar). This [blog post](https://pascalpoizat.github.io/blog/posts/2016/02/01/jekyll-and-bibtex/) is a good introduction to it.
[^img]: Extracted from [xkcd.com](https://xkcd.com/410/)