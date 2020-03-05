.. title: Modeling and simulation of the electrodynamic loudspeaker
.. slug: loudspeaker1
.. date: 2018-07-21 02:29:34 UTC+02:00
.. tags: mathjax, PHS, Loudspeaker, Nonlinear, Magnetic, Eddy-currents, Viscoelastic
.. category: Article
.. link:
.. description:
.. type: text
.. author: Antoine Falaize

This is a companion page for the article **Passive modelling of the electrodynamic loudspeaker: from the Thiele-Small model to nonlinear Port-Hamiltonian Systems**
submitted to the *Acta-Acustica united with Acustica* on July 2018.


.. figure:: /images/loudspeaker2019.png
    :width: 300px


.. TEASER_END: Read more

Abstrac
-----------------

The electrodynamic loudspeaker couples mechanical, magnetic, electric and thermodynamic phenomena. The Thiele/Small (TS) model provides a low frequency approximation, combining passive linear (multi-physical or electric-equivalent) components. This is commonly used by manufacturers as a reference to specify basic parameters and characteristic transfer functions. This paper presents more refined nonlinear models of electric, magnetic and mechanical phenomena, for which fundamental properties such as passivity and causality are guaranteed.
More precisely, multi-physical models of the driver are formulated in the core class of port-hamiltonian systems (PHS), which satisfies a power balance decomposed into conservative, dissipative and source parts.
First, the TS model is reformulated as a linear PHS.
Then, refinements are introduced, step-by-step, benefiting from the component-based approach allowed by the PHS formalism.
Guaranteed-passive simulations are proposed, based on a numerical scheme that preserves the power balance.
Numerical experiments are presented throughout the paper, for each refinement.
They are in accordance with results in the literature.


Simulation code
----------------

The resulting simulation code (Python 2.7) is available `here </codes/python_loudspeaker_afalaize_Jul2018.zip>`_. All the results presented in the paper were obtained from this code.
