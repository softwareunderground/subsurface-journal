# The Subsurface - An Executable Journal

> This is the place where research scientists, researchers in industry, software
developers, and data scientists can  communicate there novel solutions for problems in
the subsurface. This reproducible journal is code agnostic. It is a place for people to
communicate their analysis, tools, and solutions. 

## Scope

We accept submissions that address challenges within subsurface science. This includes 
all aspects of research from fundamental science to tools to solve exploration problems.
The key is that the solutions presented are open and reproducible. To that end
submissions are in the form of a Jupyter Notebook.

## Guidelines

Submission is through this github repository. We require at a minimum two files, the
notebook, and a file that lists the dependencies.

### The Notebook

We accept [Jupyter Notebooks](https://jupyter.org/) only, as these are open source and
code agnostic. We accept notebooks in any language supported within Jupyter. For
example this could be Python, Julia, R, C++, Fortran, Octave, etc.

The notebook serves as the manuscript including figures and tables. Please structure the
notebook as follows (we provide templates [here](#)):
 * Title and list of authors, including affiliations and contact details.
 * Abstract, providing a brief summary of the notebook.
 * Introduction, where the content of the notebook is put in the context of current and
 past work within the community.
 * Methods and Results, which will naturally flow together within the notebook format.
 * Discussion and Conclusions.
 * References (we need to work out how to interact with Crossref..)
 
### Dependencies

The second file is a list of dependencies.
 * ```conda``` please provide an ```environment.yml``` file with the
 dependencies
 * Otherwise please provide a ````requirements.txt```` file.
 * If the notebook is analysing results of a large numerical calculation we require
 that the code is open source and hosted on a repository.
 * (Need to research this a bit still)
 
**You do not need prior experience in running a notebook or coding. We will figure it
 out together.**
 
### Submission

1. Create a [github]((https://github.com) account.
2. [Fork](https://help.github.com/articles/fork-a-repo/) the
[Subsurface](https://github.com/softwareunderground/subsurface-journal) repository.
4. Create a branch (the branch name should be author names separated with dashes)
   ```
   $ git checkout -b AUTHOR1-AUTHOR2-YEAR
   ```
5. Add your notebook, requirements, and any data required for reproducibility:
   ```
   $ git commit -a -m "Some comment"
   ```
6. [Push](https://help.github.com/articles/pushing-to-a-remote/) to github
   ```
   $ git push origin AUTHOR1-AUTHOR2-YEAR
   ```

7. Issue a [pull request](https://help.github.com/articles/using-pull-requests/) (PR)
 to Subsurface with title containing author(s) name and follow the template that will
 appear once you opened the pull request:

  ```
  **AUTHOR**

  Dear @Subsurface/editors,

  I request a review for the following notebook:

  ### Original article

  **Title:**  
  **Author(s):**  
  **Year:**  

  ### Potential reviewers
  <!-- If you know potential reviewers, you can tell us here -->
  ```
8. You can suggest reviewers from [editorial board](#).
9. Answer questions and requests made in the PR conversation page.

### Post submission

Once the pull request has been made the notebook will be executed and using ```nbval```
it will automatically tested for reproducibility. If this check fails don't sweat, it
is probably due to the dependencies. We can help work it out. Subsequently the gang of
four will look at the notebook and solicit a minimum of two reviews and we will
itterate towards a reproducible article. Once passing review the notebook will be given
a unique DOI (via [zenodo](https://zenodo.org/) perhaps) and a
[binder](https://ovh.mybinder.org/) image will be generated. This will result in a 
eternally reproducible article.

### Questions

Jump right into the [issues](https://github.com/softwareunderground/subsurface-journal/issues) to add your ideas about how a journal should look like. We would like to hear about scope, feature, accessibility, peer review process, technology, licensing, possible journals in kind, sources of funding, and anything our ideas do not cover yet. You can open new issues and add to existing ones.

Please also check out the #journal channel on the
[Software Underground Slack](http://softwareunderground.org/slack).
As per usual discussion here and in the community falls under our
[Code of Conduct](https://github.com/softwareunderground/code-of-conduct).

